object dmRD: TdmRD
  OldCreateOrder = False
  Height = 566
  Width = 616
  object cdsOperacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOperacao'
    RemoteServer = shdcnnRD
    AfterPost = cdsOperacaoAfterPost
    AfterDelete = cdsOperacaoAfterDelete
    OnNewRecord = cdsOperacaoNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 76
    Top = 12
    object cdsOperacaoOPERACAOID: TBCDField
      DisplayWidth = 9
      FieldName = 'OPERACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOperacaoFINALIDADE: TStringField
      DisplayWidth = 1
      FieldName = 'FINALIDADE'
      Size = 1
    end
    object cdsOperacaoDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsOperacaoCONTACONTABILID: TStringField
      DisplayWidth = 10
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsOperacaoOPERACAO: TStringField
      DisplayWidth = 1
      FieldName = 'OPERACAO'
      Size = 1
    end
    object cdsOperacaoBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsOperacaoHORASDEDUZIR: TFMTBCDField
      FieldName = 'HORASDEDUZIR'
      Precision = 14
      Size = 10
    end
    object cdsOperacaoLANCEXCLUSIVO: TBCDField
      FieldName = 'LANCEXCLUSIVO'
      Precision = 1
      Size = 0
    end
    object cdsOperacaoIDENTIFSOLIC: TBCDField
      FieldName = 'IDENTIFSOLIC'
      Precision = 1
      Size = 0
    end
    object cdsOperacaoUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsOperacao: TDataSource
    AutoEdit = False
    DataSet = cdsOperacao
    Left = 160
    Top = 12
  end
  object cdsMemo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvMemo'
    RemoteServer = shdcnnRD
    BeforePost = cdsMemoBeforePost
    AfterPost = cdsMemoAfterPost
    AfterDelete = cdsMemoAfterDelete
    OnNewRecord = cdsMemoNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 76
    Top = 116
    object cdsMemoMEMOID: TBCDField
      FieldName = 'MEMOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsMemoDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsMemoDATADEPOSITO: TSQLTimeStampField
      FieldName = 'DATADEPOSITO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsMemoDATACONTABILIZACAO: TSQLTimeStampField
      FieldName = 'DATACONTABILIZACAO'
    end
    object cdsMemoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsMemoFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      OnValidate = cdsMemoFUNCIONARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsMemoL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsMemoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      OnValidate = cdsMemoOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsMemoL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsMemoL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsMemoVLRMEMO: TBCDField
      FieldName = 'VLRMEMO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMemoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsMemoSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
    end
    object cdsMemoLIBERADO: TBCDField
      DisplayLabel = 'Liberado'
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsMemoTRANSFERIDO: TBCDField
      FieldName = 'TRANSFERIDO'
      Precision = 1
      Size = 0
    end
  end
  object dsMemo: TDataSource
    AutoEdit = False
    DataSet = cdsMemo
    Left = 160
    Top = 116
  end
  object cdsFeriado: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvFeriado'
    RemoteServer = shdcnnRD
    AfterPost = cdsFeriadoAfterPost
    AfterDelete = cdsFeriadoAfterDelete
    OnNewRecord = cdsFeriadoNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 76
    Top = 172
    object cdsFeriadoFERIADOID: TBCDField
      FieldName = 'FERIADOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFeriadoDATAFERIADO: TSQLTimeStampField
      FieldName = 'DATAFERIADO'
    end
    object cdsFeriadoFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsFeriadoFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFeriadoL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsFeriadoFERIADOREGIONAL: TBCDField
      FieldName = 'FERIADOREGIONAL'
      Precision = 1
      Size = 0
    end
    object cdsFeriadoDESCRICAOFERIADO: TStringField
      FieldName = 'DESCRICAOFERIADO'
      Size = 100
    end
    object cdsFeriadoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsFeriado: TDataSource
    AutoEdit = False
    DataSet = cdsFeriado
    Left = 160
    Top = 172
  end
  object dsRdv: TDataSource
    AutoEdit = False
    DataSet = cdsRdv
    Left = 352
    Top = 220
  end
  object cdsRdvItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRdvsqldtsRdvItem
    FieldDefs = <
      item
        Name = 'RDVID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'DATAMOVIMENTOID'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'ITEMID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'DATADOC'
        DataType = ftTimeStamp
      end
      item
        Name = 'TIPOMOEDA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPODESPESAOS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OSID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'OPERACAOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_DESCRICAOOPERACAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'L_OPERACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'L_CONTACONTABIL'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VLRDESPESA'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRSALDO'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'KMSAIDA'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'KMCHEGADA'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'DATAFECHAMENTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATACONTABILIZACAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'ADIANTAMENTOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_IDENTIFSOLIC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'RDVID;DATAMOVIMENTOID;ITEMID'
    Params = <>
    StoreDefs = True
    BeforeInsert = cdsRdvItemBeforeInsert
    BeforePost = cdsRdvItemBeforePost
    AfterPost = cdsRdvItemAfterPost
    BeforeDelete = cdsRdvItemBeforeDelete
    AfterDelete = cdsRdvItemAfterDelete
    OnCalcFields = cdsRdvItemCalcFields
    OnNewRecord = cdsRdvItemNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 280
    object cdsRdvItemRDVID: TBCDField
      Tag = 1
      DisplayLabel = 'Rdv Id'
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvItemDATAMOVIMENTOID: TSQLTimeStampField
      Tag = 3
      DisplayLabel = 'Data do Movimento'
      FieldName = 'DATAMOVIMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsRdvItemDATAMOVIMENTOIDValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvItemITEMID: TBCDField
      Tag = 1
      DisplayLabel = 'Item Id'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvItemDATADOC: TSQLTimeStampField
      DisplayLabel = 'Dt do Documento'
      FieldName = 'DATADOC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvItemTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsRdvItemTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsRdvItemOSID: TStringField
      DisplayLabel = 'OS Id'
      FieldName = 'OSID'
      Size = 13
    end
    object cdsRdvItemOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o Id'
      FieldName = 'OPERACAOID'
      OnValidate = cdsRdvItemOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRdvItemL_DESCRICAOOPERACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRdvItemL_OPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsRdvItemL_CONTACONTABIL: TStringField
      FieldName = 'L_CONTACONTABIL'
      ProviderFlags = []
      Size = 10
    end
    object cdsRdvItemVLRDESPESA: TBCDField
      DisplayLabel = 'Valor Despesa'
      FieldName = 'VLRDESPESA'
      OnValidate = cdsRdvItemVLRDESPESAValidate
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRdvItemVLRSALDO: TBCDField
      Tag = 1
      DisplayLabel = 'Valor Saldo'
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRdvItemHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsRdvItemKMSAIDA: TBCDField
      DisplayLabel = 'Km Sa'#237'da'
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsRdvItemKMCHEGADA: TBCDField
      DisplayLabel = 'Km Chegada'
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsRdvItemC_KMRODADOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KMRODADOS'
      ProviderFlags = []
    end
    object cdsRdvItemDATAFECHAMENTO: TSQLTimeStampField
      Tag = 1
      DisplayLabel = 'Dt Fechamento'
      FieldName = 'DATAFECHAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvItemDATACONTABILIZACAO: TSQLTimeStampField
      FieldName = 'DATACONTABILIZACAO'
      OnValidate = cdsRdvItemDATACONTABILIZACAOValidate
    end
    object cdsRdvItemADIANTAMENTOID: TBCDField
      Tag = 1
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsRdvItemL_IDENTIFSOLIC: TStringField
      FieldName = 'L_IDENTIFSOLIC'
      Size = 10
    end
    object cdsRdvItemUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object dsRdvItem: TDataSource
    AutoEdit = False
    DataSet = cdsRdvItem
    Left = 352
    Top = 280
  end
  object cdsRdvEspelho: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRdvsqldtsRdvEspelho
    Params = <>
    AfterPost = cdsRdvEspelhoAfterPost
    AfterDelete = cdsRdvEspelhoAfterDelete
    OnCalcFields = cdsRdvEspelhoCalcFields
    OnNewRecord = cdsRdvEspelhoNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 396
    object cdsRdvEspelhoRDVID: TBCDField
      Tag = 1
      DisplayLabel = 'Rdv Id'
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvEspelhoDATADOCID: TSQLTimeStampField
      Tag = 1
      DisplayLabel = 'Dt Documento'
      FieldName = 'DATADOCID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvEspelhoITEMID: TBCDField
      Tag = 1
      DisplayLabel = 'Item Id'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvEspelhoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsRdvEspelhoTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsRdvEspelhoOSID: TStringField
      DisplayLabel = 'OS Id'
      FieldName = 'OSID'
      Size = 13
    end
    object cdsRdvEspelhoOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o Id'
      FieldName = 'OPERACAOID'
      OnValidate = cdsRdvEspelhoOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRdvEspelhoL_DESCRICAOOPERACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRdvEspelhoVLRDESPESA: TBCDField
      DisplayLabel = 'Valor Despesa'
      FieldName = 'VLRDESPESA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsRdvEspelhoVLRSALDO: TBCDField
      DisplayLabel = 'Valor Saldo'
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsRdvEspelhoHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsRdvEspelhoKMSAIDA: TBCDField
      DisplayLabel = 'Km Sa'#237'da'
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsRdvEspelhoKMCHEGADA: TBCDField
      DisplayLabel = 'Km Chegada'
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsRdvEspelhoC_KmRodados: TFloatField
      DisplayLabel = 'Km Rodados'
      FieldKind = fkCalculated
      FieldName = 'C_KMRODADOS'
      Calculated = True
    end
    object cdsRdvEspelhoADIANTAMENTOID: TBCDField
      Tag = 1
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsRdvEspelhoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object dsRdvEspelho: TDataSource
    AutoEdit = False
    DataSet = cdsRdvEspelho
    Left = 352
    Top = 396
  end
  object cdsHora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvHora'
    RemoteServer = shdcnnRD
    AfterPost = cdsOperacaoAfterPost
    BeforeDelete = cdsHoraBeforeDelete
    AfterDelete = cdsHoraAfterDelete
    OnNewRecord = cdsHoraNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 439
    Top = 63
    object cdsHoraHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsHoraHORAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object cdsHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsHoraL_HORASCFGTRABID: TBCDField
      FieldName = 'L_HORASCFGTRABID'
      Precision = 8
      Size = 0
    end
    object cdsHoraDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsHoraDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsHoraBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsHoraVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsHorasqldtsHoraItem: TDataSetField
      FieldName = 'sqldtsHoraItem'
    end
  end
  object dsHora: TDataSource
    AutoEdit = False
    DataSet = cdsHora
    Left = 544
    Top = 63
  end
  object cdsHoraItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsHorasqldtsHoraItem
    FieldDefs = <
      item
        Name = 'HORAID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'DATASERVICOID'
        Attributes = [faRequired]
        DataType = ftTimeStamp
      end
      item
        Name = 'ITEMID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'OSID'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'OPERACAOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_DESCRICAOOPERACAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'L_OPERACAO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'HORAINI'
        DataType = ftTimeStamp
      end
      item
        Name = 'HORAFIM'
        DataType = ftTimeStamp
      end
      item
        Name = 'DIFERENCAHORATRAB'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'DIFERENCAMINTRAB'
        DataType = ftFMTBcd
        Precision = 14
        Size = 10
      end
      item
        Name = 'VLRSALDOMINUTOS'
        DataType = ftFMTBcd
        Precision = 14
        Size = 10
      end
      item
        Name = 'VLRSALDO'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'BANCOHORAID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeInsert = cdsHoraItemBeforeInsert
    BeforeEdit = cdsHoraItemBeforeEdit
    BeforePost = cdsHoraItemBeforePost
    AfterPost = cdsHoraItemAfterPost
    BeforeDelete = cdsHoraItemBeforeDelete
    AfterDelete = cdsHoraItemAfterDelete
    OnNewRecord = cdsHoraItemNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 440
    Top = 119
    object cdsHoraItemHORAID: TBCDField
      Tag = 1
      DisplayLabel = 'Hora ID'
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHoraItemHORAINI: TSQLTimeStampField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'HORAINI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      DisplayFormat = 'dd/mm/yy t'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsHoraItemHORAFIM: TSQLTimeStampField
      DisplayLabel = 'Hora Fim'
      FieldName = 'HORAFIM'
      OnValidate = cdsHoraItemHORAFIMValidate
      DisplayFormat = 'dd/mm/yy t'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsHoraItemITEMID: TBCDField
      Tag = 1
      DisplayLabel = 'Item ID'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHoraItemOSID: TStringField
      DisplayLabel = 'O.S ID'
      FieldName = 'OSID'
      OnValidate = cdsHoraItemOSIDValidate
      Size = 13
    end
    object cdsHoraItemOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o ID'
      FieldName = 'OPERACAOID'
      OnValidate = cdsHoraItemOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsHoraItemL_DESCRICAOOPERACAO: TStringField
      Tag = 1
      DisplayLabel = 'Descri'#231#227'o Opera'#231#227'o'
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsHoraItemL_OPERACAO: TStringField
      Tag = 1
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsHoraItemDIFERENCAHORATRAB: TStringField
      Tag = 1
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object cdsHoraItemDIFERENCAMINTRAB: TFMTBCDField
      Tag = 1
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object cdsHoraItemVLRSALDO: TBCDField
      Tag = 1
      DisplayLabel = 'Vlr. Saldo'
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsHoraItemVLRSALDOMINUTOS: TFMTBCDField
      FieldName = 'VLRSALDOMINUTOS'
      Precision = 14
      Size = 10
    end
    object cdsHoraItemHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsHoraItemBANCOHORAID: TBCDField
      Tag = 1
      FieldName = 'BANCOHORAID'
      Precision = 8
      Size = 0
    end
    object cdsHoraItemDATASERVICOID: TSQLTimeStampField
      DisplayLabel = 'Dt. Servi'#231'o'
      FieldName = 'DATASERVICOID'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsHoraItemUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object dsHoraItem: TDataSource
    AutoEdit = False
    DataSet = cdsHoraItem
    Left = 544
    Top = 119
  end
  object cdsAdiantamento: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvAdiantamento'
    RemoteServer = shdcnnRD
    BeforePost = cdsAdiantamentoBeforePost
    AfterPost = cdsAdiantamentoAfterPost
    BeforeDelete = cdsAdiantamentoBeforeDelete
    AfterDelete = cdsAdiantamentoAfterDelete
    OnCalcFields = cdsAdiantamentoCalcFields
    OnNewRecord = cdsAdiantamentoNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 12
    object cdsAdiantamentoADIANTAMENTOID: TBCDField
      DisplayLabel = 'Adiantamento Id'
      DisplayWidth = 9
      FieldName = 'ADIANTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoDATADEPOSITO: TSQLTimeStampField
      DisplayLabel = 'Data Dep'#243'sito'
      DisplayWidth = 34
      FieldName = 'DATADEPOSITO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsAdiantamentoDATASOLICITACAO: TSQLTimeStampField
      DisplayLabel = 'Data Solicita'#231#227'o'
      DisplayWidth = 34
      FieldName = 'DATASOLICITACAO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsAdiantamentoFUNCIONARIOID: TBCDField
      DisplayLabel = 'Funcion'#225'rio Id'
      DisplayWidth = 9
      FieldName = 'FUNCIONARIOID'
      OnValidate = cdsAdiantamentoFUNCIONARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoL_NOMEFUNCIONARIO: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 100
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAdiantamentoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsAdiantamentoTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsAdiantamentoOSID: TStringField
      FieldName = 'OSID'
      OnValidate = cdsAdiantamentoOSIDValidate
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsAdiantamentoL_SERIEID: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'L_SERIEID'
      ProviderFlags = []
      Size = 40
    end
    object cdsAdiantamentoL_MODELOID: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'L_MODELOID'
      ProviderFlags = []
      Size = 40
    end
    object cdsAdiantamentoL_NOME_OS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'L_NOME_OS'
      ProviderFlags = []
      Size = 100
    end
    object cdsAdiantamentoL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
      ProviderFlags = []
    end
    object cdsAdiantamentoHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 200
      FieldName = 'HISTORICO'
      Required = True
      Size = 200
    end
    object cdsAdiantamentoHORASOLICITADA: TSQLTimeStampField
      DisplayLabel = 'Hora Solicitada'
      DisplayWidth = 34
      FieldName = 'HORASOLICITADA'
      DisplayFormat = 'T'
      EditMask = '!90:00;1;_'
    end
    object cdsAdiantamentoKMSAIDA: TBCDField
      DisplayLabel = 'Km Sa'#237'da'
      DisplayWidth = 9
      FieldName = 'KMSAIDA'
      OnValidate = cdsAdiantamentoKMSAIDAValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoKMCHEGADA: TBCDField
      DisplayLabel = 'Km Chegada'
      DisplayWidth = 9
      FieldName = 'KMCHEGADA'
      OnValidate = cdsAdiantamentoKMCHEGADAValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoC_KmRodados: TFloatField
      Tag = 1
      DisplayLabel = 'Km Rodados'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'C_KMRODADOS'
      ProviderFlags = []
    end
    object cdsAdiantamentoLIBCHEFIA: TBCDField
      DisplayLabel = 'Lib. Chefia'
      DisplayWidth = 2
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsAdiantamentoLIBERADO: TBCDField
      DisplayLabel = 'Liberado'
      DisplayWidth = 2
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsAdiantamentoNOMELIBCHEFIA: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'NOMELIBCHEFIA'
    end
    object cdsAdiantamentoDATALIBCHEFIA: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATALIBCHEFIA'
    end
    object cdsAdiantamentoOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o Id'
      DisplayWidth = 9
      FieldName = 'OPERACAOID'
      OnValidate = cdsAdiantamentoOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoL_DESCRICAOOPERACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAdiantamentoL_OPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsAdiantamentoL_IDENTIFSOLIC: TBCDField
      FieldName = 'L_IDENTIFSOLIC'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsAdiantamentoVLROPERACAO: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'VLROPERACAO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdiantamentoL_VLRSALDO: TBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'L_VLRSALDO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsAdiantamentoIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsAdiantamentoIDENTIFSOLIC: TStringField
      FieldName = 'IDENTIFSOLIC'
      Size = 10
    end
    object cdsAdiantamentoUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsAdiantamentosqldtsAdiantamentoItem: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsAdiantamentoItem'
    end
  end
  object dsAdiantamento: TDataSource
    AutoEdit = False
    DataSet = cdsAdiantamento
    Left = 352
    Top = 12
  end
  object cdsAdiantamentoItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAdiantamentosqldtsAdiantamentoItem
    Params = <>
    BeforePost = cdsAdiantamentoItemBeforePost
    AfterPost = cdsAdiantamentoItemAfterPost
    AfterDelete = cdsAdiantamentoItemAfterDelete
    OnCalcFields = cdsAdiantamentoItemCalcFields
    OnNewRecord = cdsAdiantamentoItemNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 64
    object cdsAdiantamentoItemADIANTAMENTOID: TBCDField
      Tag = 1
      DisplayLabel = 'Adiantamento Id'
      DisplayWidth = 9
      FieldName = 'ADIANTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoItemITEMID: TBCDField
      Tag = 1
      DisplayLabel = 'Item Id'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoItemDATASOLICITACAO: TSQLTimeStampField
      Tag = 1
      DisplayLabel = 'Data Solicita'#231#227'o'
      DisplayWidth = 34
      FieldName = 'DATASOLICITACAO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsAdiantamentoItemOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o Id'
      DisplayWidth = 9
      FieldName = 'OPERACAOID'
      Required = True
      OnValidate = cdsAdiantamentoItemOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoItemL_DESCRICAOOPERACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAdiantamentoItemVLROPERACAO: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 15
      FieldName = 'VLROPERACAO'
      OnValidate = cdsAdiantamentoItemVLROPERACAOValidate
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdiantamentoItemHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 200
      FieldName = 'HISTORICO'
      Required = True
      Size = 200
    end
    object cdsAdiantamentoItemKMSAIDA: TBCDField
      DisplayLabel = 'Km Sa'#237'da'
      DisplayWidth = 9
      FieldName = 'KMSAIDA'
      OnValidate = cdsAdiantamentoItemKMSAIDAValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoItemKMCHEGADA: TBCDField
      DisplayLabel = 'Km Chegada'
      DisplayWidth = 9
      FieldName = 'KMCHEGADA'
      OnValidate = cdsAdiantamentoItemKMCHEGADAValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoItemC_KMRODADOS: TFloatField
      Tag = 1
      DisplayLabel = 'Km Rodados'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'C_KMRODADOS'
    end
    object cdsAdiantamentoItemUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsAdiantamentoItem: TDataSource
    AutoEdit = False
    DataSet = cdsAdiantamentoItem
    Left = 352
    Top = 60
  end
  object cdsRdv: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvRdv'
    RemoteServer = shdcnnRD
    AfterPost = cdsRdvAfterPost
    BeforeDelete = cdsRdvBeforeDelete
    AfterDelete = cdsRdvAfterDelete
    OnCalcFields = cdsRdvCalcFields
    OnNewRecord = cdsRdvNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 224
    object cdsRdvRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsRdvRDVIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRdvL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRdvDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRdvVLRSALDOUS: TFMTBCDField
      FieldName = 'VLRSALDOUS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 20
    end
    object cdsRdvDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
      OnValidate = cdsRdvDATAFECHAMENTOValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvDATAFECHAMENTOUS: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTOUS'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvDATAMESABERTO: TSQLTimeStampField
      FieldName = 'DATAMESABERTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRdvBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsRdvL_CONTACONTABIL: TStringField
      FieldName = 'L_CONTACONTABIL'
      ProviderFlags = []
      Size = 10
    end
    object cdsRdvL_DEPARTAMENTO: TStringField
      FieldName = 'L_DEPARTAMENTO'
      ProviderFlags = []
      Size = 10
    end
    object cdsRdvsqldtsRdvEspelho: TDataSetField
      FieldName = 'sqldtsRdvEspelho'
    end
    object cdsRdvsqldtsRdvItem: TDataSetField
      FieldName = 'sqldtsRdvItem'
    end
    object cdsRdvsqldtsRdvItemUS: TDataSetField
      FieldName = 'sqldtsRdvItemUS'
    end
    object cdsRdvsqldtsRDVLog: TDataSetField
      FieldName = 'sqldtsRDVLog'
    end
  end
  object shdcnnRD: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppRD'
    Left = 12
    Top = 12
  end
  object cdsGeral: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvRelRdv'
    RemoteServer = shdcnnRD
    OnCalcFields = cdsGeralCalcFields
    Left = 246
    Top = 120
    object cdsGeralRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGeralDATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsGeralITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGeralDATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object cdsGeralOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsGeralOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object cdsGeralVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object cdsGeralVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object cdsGeralHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsGeralKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsGeralKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsGeralCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsGeralOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object cdsGeralDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsGeralUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsGeralADIANTAMENTOID: TBCDField
      DisplayLabel = 'Adiantamento Id'
      DisplayWidth = 9
      FieldName = 'ADIANTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGeralC_KMRODADOS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'C_KMRODADOS'
      Calculated = True
    end
    object cdsGeralL_IDENTIFSOLIC: TStringField
      FieldName = 'L_IDENTIFSOLIC'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsGeral: TDataSource
    DataSet = cdsGeral
    Left = 352
    Top = 120
  end
  object cdsRdvLog: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRdvsqldtsRDVLog
    Params = <>
    AfterPost = cdsRdvLogAfterPost
    AfterDelete = cdsRdvLogAfterDelete
    OnNewRecord = cdsRdvLogNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 448
    object cdsRdvLogRDVID: TBCDField
      Tag = 1
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvLogITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvLogDATAEXCLUSAO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAEXCLUSAO'
    end
    object cdsRdvLogITEMRDVID: TBCDField
      FieldName = 'ITEMRDVID'
      Precision = 8
      Size = 0
    end
    object cdsRdvLogLOGRDVID: TBCDField
      FieldName = 'LOGRDVID'
      OnValidate = cdsRdvLogLOGRDVIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRdvLogL_LOGRDVDESCRICAO: TStringField
      Tag = 1
      FieldName = 'L_LOGRDVDESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRdvLogDATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      Required = True
    end
    object cdsRdvLogDATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object cdsRdvLogTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsRdvLogTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsRdvLogOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsRdvLogOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      OnValidate = cdsRdvLogOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRdvLogL_DESCRICAOOPERACAO: TStringField
      Tag = 1
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRdvLogL_OPERACAO: TStringField
      Tag = 1
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsRdvLogVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object cdsRdvLogVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object cdsRdvLogHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsRdvLogKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsRdvLogKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsRdvLogDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object cdsRdvLogOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsRdvLogADIANTAMENTOID: TBCDField
      Tag = 1
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsRdvLogUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsRdvLog: TDataSource
    AutoEdit = False
    DataSet = cdsRdvLog
    Left = 352
    Top = 448
  end
  object cdsLogRDV: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvLogRDV'
    RemoteServer = shdcnnRD
    AfterPost = cdsOperacaoAfterPost
    AfterDelete = cdsOperacaoAfterDelete
    OnNewRecord = cdsLogRDVNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 80
    Top = 64
    object cdsLogRDVLOGRDVID: TBCDField
      FieldName = 'LOGRDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsLogRDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsLogRDVUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsLogRdv: TDataSource
    AutoEdit = False
    DataSet = cdsLogRDV
    Left = 160
    Top = 66
  end
  object cdsRdvLog2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvRDVLog2'
    RemoteServer = shdcnnRD
    AfterPost = cdsOperacaoAfterPost
    AfterDelete = cdsOperacaoAfterDelete
    OnNewRecord = cdsRdvLog2NewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 441
    Top = 222
    object cdsRdvLog2RDVID: TBCDField
      FieldName = 'RDVID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2ITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2DATAEXCLUSAO: TSQLTimeStampField
      FieldName = 'DATAEXCLUSAO'
    end
    object cdsRdvLog2LOGRDVID: TBCDField
      FieldName = 'LOGRDVID'
      OnValidate = cdsRdvLog2LOGRDVIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2ITEMRDVID: TBCDField
      FieldName = 'ITEMRDVID'
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2L_LOGRDVDESCRICAO: TStringField
      FieldName = 'L_LOGRDVDESCRICAO'
      Size = 100
    end
    object cdsRdvLog2DATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      Required = True
    end
    object cdsRdvLog2DATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object cdsRdvLog2TIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsRdvLog2TIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsRdvLog2OSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsRdvLog2OPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2L_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      Size = 100
    end
    object cdsRdvLog2L_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      Size = 1
    end
    object cdsRdvLog2VLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object cdsRdvLog2VLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object cdsRdvLog2HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsRdvLog2KMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2KMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object cdsRdvLog2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsRdvLog2ADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsRdvLog2USUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsRdvLog2: TDataSource
    DataSet = cdsRdvLog2
    Left = 544
    Top = 222
  end
  object cdsRelHoraItem: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsRelHoraItemCalcFields
    Left = 248
    Top = 176
    object cdsRelHoraItemHORAID: TBCDField
      Tag = 1
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRelHoraItemDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRelHoraItemL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRelHoraItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRelHoraItemOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsRelHoraItemOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      OnValidate = cdsRelHoraItemOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRelHoraItemL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRelHoraItemL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsRelHoraItemDATAHORAINICIAL: TSQLTimeStampField
      FieldName = 'DATAHORAINICIAL'
      DisplayFormat = 'dd/mm/yy t'
    end
    object cdsRelHoraItemHORAINI: TSQLTimeStampField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'HORAINI'
      DisplayFormat = 'T'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsRelHoraItemHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
      DisplayFormat = 'T'
    end
    object cdsRelHoraItemDIFERENCAHORATRAB: TStringField
      Tag = 1
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object cdsRelHoraItemVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRelHoraItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsRelHoraItemUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsRelHoraItemC_SALDOHORAS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_SALDOHORAS'
      Size = 7
    end
  end
  object dscdsRelHoraItem: TDataSource
    DataSet = cdsRelHoraItem
    Left = 352
    Top = 174
  end
  object cdsRDVVisualiza: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 278
  end
  object dsRDVVisualiza: TDataSource
    AutoEdit = False
    DataSet = cdsRDVVisualiza
    Left = 544
    Top = 275
  end
  object cdsBancoHora: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvBancoHora'
    RemoteServer = shdcnnRD
    AfterPost = cdsAdiantamentoAfterPost
    BeforeDelete = cdsBancoHoraBeforeDelete
    AfterDelete = cdsAdiantamentoAfterDelete
    OnNewRecord = cdsBancoHoraNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 440
    Top = 13
    object cdsBancoHoraBANCOHORAID: TBCDField
      Tag = 1
      FieldName = 'BANCOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
      OnValidate = cdsBancoHoraDATASOLICITACAOValidate
    end
    object cdsBancoHoraMULTILANCAMENTO: TBCDField
      FieldName = 'MULTILANCAMENTO'
      OnValidate = cdsBancoHoraMULTILANCAMENTOValidate
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsBancoHoraFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsBancoHoraFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      OnValidate = cdsBancoHoraFUNCIONARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsBancoHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsBancoHoraOSID: TStringField
      FieldName = 'OSID'
      OnValidate = cdsBancoHoraOSIDValidate
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsBancoHoraOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      OnValidate = cdsBancoHoraOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsBancoHoraL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
      ProviderFlags = []
    end
    object cdsBancoHoraL_DATAMESABERTO: TSQLTimeStampField
      FieldName = 'L_DATAMESABERTO'
      ProviderFlags = []
    end
    object cdsBancoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
      Required = True
      OnValidate = cdsBancoHoraHORAINIValidate
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsBancoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
      Required = True
      OnValidate = cdsBancoHoraHORAFIMValidate
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsBancoHoraDIFERENCAHORATRAB: TStringField
      Tag = 1
      FieldName = 'DIFERENCAHORATRAB'
      Required = True
      Size = 7
    end
    object cdsBancoHoraDIFERENCAMINTRAB: TFMTBCDField
      Tag = 1
      FieldName = 'DIFERENCAMINTRAB'
      Required = True
      Precision = 14
      Size = 10
    end
    object cdsBancoHoraHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsBancoHoraLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraNOMELIBCHEFIA: TStringField
      Tag = 1
      FieldName = 'NOMELIBCHEFIA'
    end
    object cdsBancoHoraDATALIBCHEFIA: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATALIBCHEFIA'
    end
    object cdsBancoHoraL_HORASCFGTRABID: TBCDField
      FieldName = 'L_HORASCFGTRABID'
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraIMPRESSO: TBCDField
      Tag = 1
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsBancoHora: TDataSource
    AutoEdit = False
    DataSet = cdsBancoHora
    Left = 544
    Top = 13
  end
  object cdsHoraVisualiza: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 174
  end
  object dsHoraVisualiza: TDataSource
    AutoEdit = False
    DataSet = cdsHoraVisualiza
    Left = 544
    Top = 171
  end
  object cdsRDVItemUS: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRdvsqldtsRdvItemUS
    Params = <>
    BeforeInsert = cdsRDVItemUSBeforeInsert
    BeforePost = cdsRDVItemUSBeforePost
    AfterPost = cdsRDVItemUSAfterPost
    BeforeDelete = cdsRdvItemBeforeDelete
    AfterDelete = cdsRDVItemUSAfterDelete
    OnCalcFields = cdsRDVItemUSCalcFields
    OnNewRecord = cdsRDVItemUSNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 244
    Top = 336
    object cdsRDVItemUSRDVID: TBCDField
      Tag = 1
      DisplayLabel = 'Rdv Id'
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRDVItemUSDATAMOVIMENTOID: TSQLTimeStampField
      Tag = 3
      DisplayLabel = 'Data do Movimento'
      FieldName = 'DATAMOVIMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsRdvItemDATAMOVIMENTOIDValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRDVItemUSITEMID: TBCDField
      Tag = 1
      DisplayLabel = 'Item Id'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRDVItemUSDATADOC: TSQLTimeStampField
      DisplayLabel = 'Dt do Documento'
      FieldName = 'DATADOC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRDVItemUSTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsRDVItemUSTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsRDVItemUSOSID: TStringField
      DisplayLabel = 'OS Id'
      FieldName = 'OSID'
      Size = 13
    end
    object cdsRDVItemUSOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o Id'
      FieldName = 'OPERACAOID'
      OnValidate = cdsRdvItemOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRDVItemUSL_DESCRICAOOPERACAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsRDVItemUSL_OPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object cdsRDVItemUSL_CONTACONTABIL: TStringField
      FieldName = 'L_CONTACONTABIL'
      ProviderFlags = []
      Size = 10
    end
    object cdsRDVItemUSVLRDESPESA: TBCDField
      DisplayLabel = 'Valor Despesa'
      FieldName = 'VLRDESPESA'
      OnValidate = cdsRdvItemVLRDESPESAValidate
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRDVItemUSVLRSALDO: TBCDField
      Tag = 1
      DisplayLabel = 'Valor Saldo'
      FieldName = 'VLRSALDO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRDVItemUSHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsRDVItemUSKMSAIDA: TBCDField
      DisplayLabel = 'Km Sa'#237'da'
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsRDVItemUSKMCHEGADA: TBCDField
      DisplayLabel = 'Km Chegada'
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsRDVItemUSC_KMRODADOS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_KMRODADOS'
      ProviderFlags = []
    end
    object cdsRDVItemUSDATAFECHAMENTO: TSQLTimeStampField
      Tag = 1
      DisplayLabel = 'Dt Fechamento'
      FieldName = 'DATAFECHAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsRDVItemUSDATACONTABILIZACAO: TSQLTimeStampField
      FieldName = 'DATACONTABILIZACAO'
    end
    object cdsRDVItemUSADIANTAMENTOID: TBCDField
      Tag = 1
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsRDVItemUSUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object dsRDVItemUS: TDataSource
    AutoEdit = False
    DataSet = cdsRDVItemUS
    Left = 352
    Top = 336
  end
  object cdsHoraCFG: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvHoraCFG'
    RemoteServer = shdcnnRD
    AfterPost = cdsOperacaoAfterPost
    AfterDelete = cdsOperacaoAfterDelete
    OnNewRecord = cdsHoraCFGNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 72
    Top = 224
    object cdsHoraCFGANOMES: TBCDField
      FieldName = 'ANOMES'
      Required = True
      DisplayFormat = '0000/00'
      Precision = 8
      Size = 0
    end
    object cdsHoraCFGDATACADASTRO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATACADASTRO'
    end
    object cdsHoraCFGDATALIMITEFECH: TSQLTimeStampField
      FieldName = 'DATALIMITEFECH'
    end
    object cdsHoraCFGDATALIMITELIB: TSQLTimeStampField
      FieldName = 'DATALIMITELIB'
    end
    object cdsHoraCFGUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsHoraCFG: TDataSource
    DataSet = cdsHoraCFG
    Left = 160
    Top = 224
  end
  object cdsHorasCfgTrab: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvHorasCfgTrab'
    RemoteServer = shdcnnRD
    AfterPost = cdsOperacaoAfterPost
    AfterDelete = cdsOperacaoAfterDelete
    OnNewRecord = cdsHorasCfgTrabNewRecord
    OnReconcileError = cdsOperacaoReconcileError
    Left = 72
    Top = 280
    object cdsHorasCfgTrabHORASCFGTRABID: TBCDField
      Tag = 1
      FieldName = 'HORASCFGTRABID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHorasCfgTrabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsHorasCfgTrabBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsHorasCfgTrabHORAINICIOTRABALHO: TSQLTimeStampField
      FieldName = 'HORAINICIOTRABALHO'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object cdsHorasCfgTrabHORAFINALTRABALHO: TSQLTimeStampField
      FieldName = 'HORAFINALTRABALHO'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object cdsHorasCfgTrabHORASALMOCO: TFMTBCDField
      FieldName = 'HORASALMOCO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 10
    end
    object cdsHorasCfgTrabLIMITEBCOHORAS: TFMTBCDField
      FieldName = 'LIMITEBCOHORAS'
      Precision = 14
      Size = 10
    end
    object cdsHorasCfgTrabTRABSABADO: TBCDField
      FieldName = 'TRABSABADO'
      Precision = 1
      Size = 0
    end
    object cdsHorasCfgTrabTRABDOMINGO: TBCDField
      FieldName = 'TRABDOMINGO'
      Precision = 1
      Size = 0
    end
    object cdsHorasCfgTrabUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsHorasCfgTrab: TDataSource
    AutoEdit = False
    DataSet = cdsHorasCfgTrab
    Left = 160
    Top = 280
  end
end
