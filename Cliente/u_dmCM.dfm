object dmCM: TdmCM
  OldCreateOrder = False
  Height = 470
  Width = 540
  object shdcnnCM: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppCM'
    Left = 20
    Top = 4
  end
  object cdsIndContrato: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvIndContrato'
    RemoteServer = shdcnnCM
    AfterPost = cdsIndContratoAfterPost
    AfterDelete = cdsIndContratoAfterDelete
    OnNewRecord = cdsIndContratoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 4
    object cdsIndContratoINDCONTRATOID: TBCDField
      FieldName = 'INDCONTRATOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsIndContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsIndContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsIndContrato: TDataSource
    AutoEdit = False
    DataSet = cdsIndContrato
    Left = 184
    Top = 4
  end
  object dsTipoContrato: TDataSource
    AutoEdit = False
    DataSet = cdsTipoContrato
    Left = 184
    Top = 156
  end
  object dsContratoPadrao: TDataSource
    AutoEdit = False
    DataSet = cdsContratoPadrao
    Left = 184
    Top = 100
  end
  object dsValorIndice: TDataSource
    AutoEdit = False
    DataSet = cdsValorIndice
    Left = 184
    Top = 52
  end
  object dsPreventiva: TDataSource
    AutoEdit = False
    DataSet = cdsPreventiva
    Left = 184
    Top = 260
  end
  object dsCorretiva: TDataSource
    AutoEdit = False
    DataSet = cdsCorretiva
    Left = 184
    Top = 204
  end
  object dsTermoContrato: TDataSource
    AutoEdit = False
    DataSet = cdsTermoContrato
    Left = 184
    Top = 316
  end
  object dsContratoAditivo: TDataSource
    AutoEdit = False
    DataSet = cdsContratoAditivo
    Left = 392
    Top = 259
  end
  object dsContratoParc: TDataSource
    AutoEdit = False
    DataSet = cdsContratoParc
    Left = 392
    Top = 203
  end
  object dsContratoServ: TDataSource
    AutoEdit = False
    DataSet = cdsContratoServ
    Left = 392
    Top = 155
  end
  object dsContratoApar: TDataSource
    AutoEdit = False
    DataSet = cdsContratoApar
    Left = 392
    Top = 99
  end
  object dsContratoAno: TDataSource
    AutoEdit = False
    DataSet = cdsContratoAno
    Left = 392
    Top = 51
  end
  object dsContrato: TDataSource
    AutoEdit = False
    DataSet = cdsContrato
    Left = 392
    Top = 3
  end
  object cdsValorIndice: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvValorIndice'
    RemoteServer = shdcnnCM
    AfterPost = cdsValorIndiceAfterPost
    AfterDelete = cdsValorIndiceAfterDelete
    OnNewRecord = cdsValorIndiceNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 52
    object cdsValorIndiceINDICEID: TBCDField
      FieldName = 'INDICEID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsValorIndiceDATAINDICE: TSQLTimeStampField
      FieldName = 'DATAINDICE'
      Required = True
    end
    object cdsValorIndiceVLRINDICE: TFMTBCDField
      FieldName = 'VLRINDICE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsValorIndiceUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsContratoPadrao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvContratoPadrao'
    RemoteServer = shdcnnCM
    AfterPost = cdsContratoPadraoAfterPost
    AfterDelete = cdsContratoPadraoAfterDelete
    OnNewRecord = cdsContratoPadraoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 100
    object cdsContratoPadraoANEXO: TMemoField
      FieldName = 'ANEXO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsContratoPadraoADITIVO: TMemoField
      FieldName = 'ADITIVO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsContratoPadraoULTIMOCONTRATO: TBCDField
      FieldName = 'ULTIMOCONTRATO'
      Precision = 8
      Size = 0
    end
    object cdsContratoPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsTipoContrato: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoContrato'
    RemoteServer = shdcnnCM
    AfterPost = cdsTipoContratoAfterPost
    AfterDelete = cdsTipoContratoAfterDelete
    OnNewRecord = cdsTipoContratoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 156
    object cdsTipoContratoTIPOCONTRATOID: TBCDField
      FieldName = 'TIPOCONTRATOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsCorretiva: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCorretiva'
    RemoteServer = shdcnnCM
    AfterPost = cdsCorretivaAfterPost
    AfterDelete = cdsCorretivaAfterDelete
    OnNewRecord = cdsCorretivaNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 204
    object cdsCorretivaCORRETIVAID: TBCDField
      FieldName = 'CORRETIVAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCorretivaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsCorretivaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsPreventiva: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPreventiva'
    RemoteServer = shdcnnCM
    AfterPost = cdsPreventivaAfterPost
    AfterDelete = cdsPreventivaAfterDelete
    OnNewRecord = cdsPreventivaNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 260
    object cdsPreventivaPREVENTIVAID: TBCDField
      FieldName = 'PREVENTIVAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPreventivaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsPreventivaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsTermoContrato: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTermoContrato'
    RemoteServer = shdcnnCM
    AfterPost = cdsTermoContratoAfterPost
    AfterDelete = cdsTermoContratoAfterDelete
    OnNewRecord = cdsTermoContratoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 88
    Top = 316
    object cdsTermoContratoTERMOCONTRATOID: TBCDField
      FieldName = 'TERMOCONTRATOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTermoContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTermoContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvContrato'
    RemoteServer = shdcnnCM
    AfterPost = cdsContratoAfterPost
    AfterDelete = cdsContratoAfterDelete
    OnNewRecord = cdsContratoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 296
    Top = 3
    object cdsContratoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoDATAEMISSAO: TSQLTimeStampField
      FieldName = 'DATAEMISSAO'
    end
    object cdsContratoCONTRATOANTIGOID: TStringField
      FieldName = 'CONTRATOANTIGOID'
    end
    object cdsContratoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      OnValidate = cdsContratoCLIENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoL_NOME_CLIENTE: TStringField
      FieldName = 'L_NOME_CLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoL_CNPJ: TStringField
      FieldName = 'L_CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsContratoL_CEPID: TBCDField
      FieldName = 'L_CEPID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsContratoL_ENDERECO: TStringField
      FieldName = 'L_ENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoL_COMPLEMENTO: TStringField
      FieldName = 'L_COMPLEMENTO'
      ProviderFlags = []
    end
    object cdsContratoL_NUMERO: TStringField
      FieldName = 'L_NUMERO'
      ProviderFlags = []
    end
    object cdsContratoL_BAIRRO: TStringField
      FieldName = 'L_BAIRRO'
      ProviderFlags = []
      Size = 72
    end
    object cdsContratoL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object cdsContratoL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object cdsContratoL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object cdsContratoL_STATUSFINANCEIRO: TBCDField
      FieldName = 'L_STATUSFINANCEIRO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsContratoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object cdsContratoFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsContratoFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsContratoNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsContratoNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object cdsContratoL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 8
      Size = 6
    end
    object cdsContratoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      OnChange = cdsContratoOBSERVACAOIDChange
      Precision = 8
      Size = 0
    end
    object cdsContratoOBSPDS: TStringField
      FieldName = 'OBSPDS'
      Size = 300
    end
    object cdsContratoTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      OnValidate = cdsContratoTRANSPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoL_NOME_TRANSPORTADORA: TStringField
      FieldName = 'L_NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoOBSCLIENTE: TMemoField
      FieldName = 'OBSCLIENTE'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsContratoCONTRATOMEMO: TStringField
      FieldName = 'CONTRATOMEMO'
      Size = 300
    end
    object cdsContratoCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object cdsContratoSUSPFATURAMENTO: TBCDField
      FieldName = 'SUSPFATURAMENTO'
      Precision = 1
      Size = 0
    end
    object cdsContratoL_ANO: TBCDField
      FieldName = 'L_ANO'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsContratoL_DATAINICIOCONTRATO: TSQLTimeStampField
      FieldName = 'L_DATAINICIOCONTRATO'
      ProviderFlags = []
    end
    object cdsContratoL_DATAFIMCONTRATO: TSQLTimeStampField
      FieldName = 'L_DATAFIMCONTRATO'
      ProviderFlags = []
    end
    object cdsContratoL_VLRCONTRATOMENSAL: TBCDField
      FieldName = 'L_VLRCONTRATOMENSAL'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsContratoL_VLRTOTALCONTRATO: TBCDField
      FieldName = 'L_VLRTOTALCONTRATO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsContratoL_QTDPARCELA: TBCDField
      FieldName = 'L_QTDPARCELA'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsContratoL_PAGAMENTO: TStringField
      FieldName = 'L_PAGAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoL_PERIODOCONCLUIDO: TBCDField
      FieldName = 'L_PERIODOCONCLUIDO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsContratoPRECONTRATO: TBCDField
      FieldName = 'PRECONTRATO'
      Precision = 1
      Size = 0
    end
    object cdsContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsContratosqldtsContratoAno: TDataSetField
      FieldName = 'sqldtsContratoAno'
    end
    object cdsContratosqldtsContratoAditivo: TDataSetField
      FieldName = 'sqldtsContratoAditivo'
    end
  end
  object cdsContratoAno: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContratosqldtsContratoAno
    Params = <>
    AfterPost = cdsContratoAnoAfterPost
    BeforeDelete = cdsContratoAnoBeforeDelete
    AfterDelete = cdsContratoAnoAfterDelete
    OnNewRecord = cdsContratoAnoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 296
    Top = 51
    object cdsContratoAnoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAnoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAnoANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAnoINDCONTRATOID: TBCDField
      FieldName = 'INDCONTRATOID'
      OnValidate = cdsContratoAnoINDCONTRATOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoAnoL_DESCRICAOINDICE: TStringField
      FieldName = 'L_DESCRICAOINDICE'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoAnoDATAINICIOCONTRATO: TSQLTimeStampField
      FieldName = 'DATAINICIOCONTRATO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsContratoAnoDATAFIMCONTRATO: TSQLTimeStampField
      FieldName = 'DATAFIMCONTRATO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsContratoAnoVLRCONTRATOMENSAL: TBCDField
      FieldName = 'VLRCONTRATOMENSAL'
      OnValidate = cdsContratoAnoVLRCONTRATOMENSALValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsContratoAnoVLRTOTALCONTRATO: TBCDField
      Tag = 1
      FieldName = 'VLRTOTALCONTRATO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsContratoAnoQTDPARCELA: TBCDField
      FieldName = 'QTDPARCELA'
      Precision = 8
      Size = 0
    end
    object cdsContratoAnoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 100
    end
    object cdsContratoAnoPERIODOCONCLUIDO: TBCDField
      FieldName = 'PERIODOCONCLUIDO'
      Precision = 1
      Size = 0
    end
    object cdsContratoAnoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsContratoAnosqldtsContratoApar: TDataSetField
      FieldName = 'sqldtsContratoApar'
    end
    object cdsContratoAnosqldtsContratoServ: TDataSetField
      FieldName = 'sqldtsContratoServ'
    end
    object cdsContratoAnosqldtsContratoParc: TDataSetField
      FieldName = 'sqldtsContratoParc'
    end
  end
  object cdsContratoApar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContratoAnosqldtsContratoApar
    Params = <>
    AfterPost = cdsContratoAparAfterPost
    AfterDelete = cdsContratoAparAfterDelete
    OnNewRecord = cdsContratoAparNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 296
    Top = 99
    object cdsContratoAparEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAparCONTRATOID: TBCDField
      DisplayWidth = 9
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAparANOID: TBCDField
      DisplayWidth = 9
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAparSERIEID: TStringField
      Tag = 3
      DisplayWidth = 40
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsContratoAparMODELOID: TStringField
      Tag = 3
      DisplayWidth = 40
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsContratoAparTIPOCONTRATOID: TBCDField
      DisplayWidth = 9
      FieldName = 'TIPOCONTRATOID'
      OnValidate = cdsContratoAparTIPOCONTRATOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoAparL_DESCRTIPOCONTRATO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRTIPOCONTRATO'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoAparVLRMENSAL: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRMENSAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsContratoAparVLRCONTRATO: TFMTBCDField
      FieldName = 'VLRCONTRATO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsContratoAparCORRETIVAID: TBCDField
      DisplayWidth = 9
      FieldName = 'CORRETIVAID'
      OnValidate = cdsContratoAparCORRETIVAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoAparL_DESCRICAOCORRETIVA: TStringField
      DisplayWidth = 200
      FieldName = 'L_DESCRICAOCORRETIVA'
      ProviderFlags = []
      Size = 200
    end
    object cdsContratoAparPREVENTIVAID: TBCDField
      DisplayWidth = 9
      FieldName = 'PREVENTIVAID'
      OnValidate = cdsContratoAparPREVENTIVAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoAparL_DESCRICAOPREVENTIVA: TStringField
      DisplayWidth = 200
      FieldName = 'L_DESCRICAOPREVENTIVA'
      ProviderFlags = []
      Size = 200
    end
    object cdsContratoAparHORASESPERA: TBCDField
      DisplayWidth = 9
      FieldName = 'HORASESPERA'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparQTDPREVENTIVAS: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDPREVENTIVAS'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparQTDPREVENTIVASUTIL: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDPREVENTIVASUTIL'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparBLOQUEARPREVENTIVAS: TBCDField
      DisplayWidth = 2
      FieldName = 'BLOQUEARPREVENTIVAS'
      Precision = 1
      Size = 0
    end
    object cdsContratoAparQTDCORRETIVAS: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDCORRETIVAS'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparQTDCORRETIVASUTIL: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDCORRETIVASUTIL'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparBLOQUEARCORRETIVAS: TBCDField
      DisplayWidth = 2
      FieldName = 'BLOQUEARCORRETIVAS'
      Precision = 1
      Size = 0
    end
    object cdsContratoAparQTDPECAS: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDPECAS'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparQTDPECASUTIL: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'QTDPECASUTIL'
      Precision = 8
      Size = 2
    end
    object cdsContratoAparTERMOCONTRATOID: TBCDField
      DisplayWidth = 9
      FieldName = 'TERMOCONTRATOID'
      OnValidate = cdsContratoAparTERMOCONTRATOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoAparL_DESCRICAOTERMOCONTRATO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOTERMOCONTRATO'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoAparIMPRCONDCONTR: TBCDField
      DisplayWidth = 2
      FieldName = 'IMPRCONDCONTR'
      Precision = 1
      Size = 0
    end
    object cdsContratoAparUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsContratoServ: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContratoAnosqldtsContratoServ
    Params = <>
    AfterPost = cdsContratoServAfterPost
    AfterDelete = cdsContratoServAfterDelete
    OnNewRecord = cdsContratoServNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 296
    Top = 155
    object cdsContratoServEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoServCONTRATOID: TBCDField
      DisplayWidth = 9
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoServANOID: TBCDField
      DisplayWidth = 9
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoServITEMID: TBCDField
      DisplayWidth = 9
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoServSERVICOID: TBCDField
      DisplayWidth = 9
      FieldName = 'SERVICOID'
      Required = True
      OnValidate = cdsContratoServSERVICOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContratoServL_DESCRICAORESUMIDA: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoServVLRSERVICO: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsContratoServGRUPOID: TBCDField
      DisplayWidth = 5
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object cdsContratoServL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsContratoServL_GRUPO: TStringField
      DisplayWidth = 100
      FieldName = 'L_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsContratoServHISTORICO: TStringField
      DisplayWidth = 300
      FieldName = 'HISTORICO'
      Size = 300
    end
    object cdsContratoServUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsContratoParc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContratoAnosqldtsContratoParc
    Params = <>
    AfterPost = cdsContratoParcAfterPost
    AfterDelete = cdsContratoParcAfterDelete
    OnNewRecord = cdsContratoParcNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 296
    Top = 203
    object cdsContratoParcEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoParcCONTRATOID: TBCDField
      DisplayWidth = 9
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoParcANOID: TBCDField
      DisplayWidth = 9
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoParcPARCELAID: TBCDField
      Tag = 3
      DisplayWidth = 9
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnSetText = cdsContratoParcPARCELAIDSetText
      Precision = 8
      Size = 0
    end
    object cdsContratoParcPERIODOINICIAL: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'PERIODOINICIAL'
    end
    object cdsContratoParcPERIODOFINAL: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'PERIODOFINAL'
    end
    object cdsContratoParcDATAVENCIMENTO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAVENCIMENTO'
      OnValidate = cdsContratoParcDATAVENCIMENTOValidate
    end
    object cdsContratoParcMESVENCIMENTO: TStringField
      DisplayWidth = 10
      FieldName = 'MESVENCIMENTO'
      Size = 10
    end
    object cdsContratoParcDATAPAGAMENTO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAPAGAMENTO'
    end
    object cdsContratoParcVLRCONTRATO: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRCONTRATO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsContratoParcPDSID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object cdsContratoParcNFSID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsContratoParcDATAEMISSAOID: TSQLTimeStampField
      Tag = 1
      DisplayWidth = 34
      FieldName = 'DATAEMISSAOID'
    end
    object cdsContratoParcGERADA: TBCDField
      Tag = 1
      DisplayWidth = 2
      FieldName = 'GERADA'
      Precision = 1
      Size = 0
    end
    object cdsContratoParcUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsContratoAditivo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContratosqldtsContratoAditivo
    Params = <>
    AfterPost = cdsContratoAditivoAfterPost
    AfterDelete = cdsContratoAditivoAfterDelete
    OnNewRecord = cdsContratoAditivoNewRecord
    OnReconcileError = cdsIndContratoReconcileError
    Left = 296
    Top = 259
    object cdsContratoAditivoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAditivoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAditivoADITIVOID: TBCDField
      FieldName = 'ADITIVOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAditivoDATAADITIVO: TSQLTimeStampField
      FieldName = 'DATAADITIVO'
    end
    object cdsContratoAditivoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsVisualContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvVizualContrato'
    RemoteServer = shdcnnCM
    Left = 296
    Top = 312
    object cdsVisualContratoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoCONTRATOANTIGOID: TStringField
      DisplayLabel = 'Contrato Antigo ID'
      FieldName = 'CONTRATOANTIGOID'
    end
    object cdsVisualContratoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoL_FILIALNOME: TStringField
      FieldName = 'L_FILIALNOME'
      Size = 50
    end
    object cdsVisualContratoANOID: TBCDField
      FieldName = 'ANOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoSERIEID: TStringField
      FieldName = 'SERIEID'
      Required = True
      Size = 40
    end
    object cdsVisualContratoMODELOID: TStringField
      FieldName = 'MODELOID'
      Required = True
      Size = 40
    end
    object cdsVisualContratoVLRCONTRATO: TFMTBCDField
      DisplayLabel = 'Vlr. Contrato'
      FieldName = 'VLRCONTRATO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsVisualContratoL_NOME_CLIENTE: TStringField
      FieldName = 'L_NOME_CLIENTE'
      Size = 100
    end
    object cdsVisualContratoL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      Size = 72
    end
    object cdsVisualContratoL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      Size = 2
    end
    object cdsVisualContratoDATAINICIOCONTRATO: TSQLTimeStampField
      FieldName = 'DATAINICIOCONTRATO'
    end
    object cdsVisualContratoDATAFIMCONTRATO: TSQLTimeStampField
      FieldName = 'DATAFIMCONTRATO'
    end
    object cdsVisualContratoCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object cdsVisualContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsVisualContratoQTDPECAS: TBCDField
      FieldName = 'QTDPECAS'
      Precision = 8
      Size = 2
    end
    object cdsVisualContratoQTDPECASUTIL: TBCDField
      FieldName = 'QTDPECASUTIL'
      Precision = 8
      Size = 2
    end
    object cdsVisualContratoQTDPREVENTIVAS: TBCDField
      FieldName = 'QTDPREVENTIVAS'
      Precision = 8
      Size = 2
    end
    object cdsVisualContratoQTDPREVENTIVASUTIL: TBCDField
      FieldName = 'QTDPREVENTIVASUTIL'
      Precision = 8
      Size = 2
    end
    object cdsVisualContratoQTDCORRETIVAS: TBCDField
      FieldName = 'QTDCORRETIVAS'
      Precision = 8
      Size = 2
    end
    object cdsVisualContratoQTDCORRETIVASUTIL: TBCDField
      FieldName = 'QTDCORRETIVASUTIL'
      Precision = 8
      Size = 2
    end
    object cdsVisualContratoQTDPARCELA: TBCDField
      FieldName = 'QTDPARCELA'
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 100
    end
    object cdsVisualContratoVLRMENSAL: TBCDField
      FieldName = 'VLRMENSAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsVisualContratoVLRCONTRATOMENSAL: TBCDField
      FieldName = 'VLRCONTRATOMENSAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsVisualContratoVLRTOTALCONTRATO: TBCDField
      FieldName = 'VLRTOTALCONTRATO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsVisualContratoCORRETIVAID: TBCDField
      FieldName = 'CORRETIVAID'
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoL_DESCRCORRETIVA: TStringField
      FieldName = 'L_DESCRCORRETIVA'
      Size = 200
    end
    object cdsVisualContratoPREVENTIVAID: TBCDField
      FieldName = 'PREVENTIVAID'
      Precision = 8
      Size = 0
    end
    object cdsVisualContratoL_DESCRICAOPREVENTIVA: TStringField
      FieldName = 'L_DESCRICAOPREVENTIVA'
      Size = 200
    end
    object cdsVisualContratoOBSCLIENTE: TMemoField
      FieldName = 'OBSCLIENTE'
      BlobType = ftOraClob
      Size = 1
    end
  end
  object dsVisualContrato: TDataSource
    AutoEdit = False
    DataSet = cdsVisualContrato
    Left = 392
    Top = 312
  end
  object cdsContratoAuto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvContratoAuto'
    RemoteServer = shdcnnCM
    Left = 296
    Top = 360
    object cdsContratoAutoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsContratoAutoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoOBSPDS: TStringField
      FieldName = 'OBSPDS'
      Size = 300
    end
    object cdsContratoAutoDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsContratoAutoMESVENCIMENTO: TStringField
      FieldName = 'MESVENCIMENTO'
      Size = 10
    end
    object cdsContratoAutoPERIODOINICIAL: TSQLTimeStampField
      FieldName = 'PERIODOINICIAL'
    end
    object cdsContratoAutoPERIODOFINAL: TSQLTimeStampField
      FieldName = 'PERIODOFINAL'
    end
    object cdsContratoAutoVLRCONTRATO: TBCDField
      FieldName = 'VLRCONTRATO'
      Precision = 14
      Size = 2
    end
    object cdsContratoAutoSTATUSFINANCEIRO: TBCDField
      FieldName = 'STATUSFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsContratoAutoPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutosqldtsContratoAutoServ: TDataSetField
      FieldName = 'sqldtsContratoAutoServ'
    end
  end
  object dsContratoAuto: TDataSource
    AutoEdit = False
    DataSet = cdsContratoAuto
    Left = 392
    Top = 360
  end
  object cdsContratoAutoServ: TClientDataSet
    Aggregates = <>
    DataSetField = cdsContratoAutosqldtsContratoAutoServ
    Params = <>
    Left = 296
    Top = 416
    object cdsContratoAutoServEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoServCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoServANOID: TBCDField
      FieldName = 'ANOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoServITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoServSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoServL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      Size = 100
    end
    object cdsContratoAutoServVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object cdsContratoAutoServGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object cdsContratoAutoServL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsContratoAutoServL_GRUPO: TStringField
      FieldName = 'L_GRUPO'
      Size = 100
    end
    object cdsContratoAutoServHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 300
    end
    object cdsContratoAutoServUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsContratoAutoServ: TDataSource
    AutoEdit = False
    DataSet = cdsContratoAutoServ
    Left = 392
    Top = 416
  end
end
