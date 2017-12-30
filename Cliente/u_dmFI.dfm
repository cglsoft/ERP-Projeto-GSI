object dmFI: TdmFI
  OldCreateOrder = False
  Height = 540
  Width = 649
  object shdcnnFI: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppFI'
    Left = 24
    Top = 8
  end
  object cdsImpostoRetido: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'IMPOSTORETIDOID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ALIQUOTA'
        DataType = ftFMTBcd
        Precision = 20
        Size = 8
      end
      item
        Name = 'DATAVENCIMENTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvImpostoRetido'
    RemoteServer = shdcnnFI
    StoreDefs = True
    AfterPost = cdsImpostoRetidoAfterPost
    AfterDelete = cdsImpostoRetidoAfterDelete
    OnNewRecord = cdsImpostoRetidoNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 96
    Top = 8
    object cdsImpostoRetidoIMPOSTORETIDOID: TBCDField
      FieldName = 'IMPOSTORETIDOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsImpostoRetidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsImpostoRetidoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Precision = 20
    end
    object cdsImpostoRetidoDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsImpostoRetidoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsImpostoRetido: TDataSource
    AutoEdit = False
    DataSet = cdsImpostoRetido
    Left = 192
    Top = 8
  end
  object cdsTipoCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvTipoCobranca'
    RemoteServer = shdcnnFI
    AfterPost = cdsImpostoRetidoAfterPost
    AfterDelete = cdsImpostoRetidoAfterDelete
    OnNewRecord = cdsTipoCobrancaNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 96
    Top = 152
    object cdsTipoCobrancaTIPOCOBRANCAID: TBCDField
      FieldName = 'TIPOCOBRANCAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoCobrancaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoCobrancaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsAcao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvAcao'
    RemoteServer = shdcnnFI
    AfterPost = cdsImpostoRetidoAfterPost
    AfterDelete = cdsImpostoRetidoAfterDelete
    OnNewRecord = cdsAcaoNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 96
    Top = 56
    object cdsAcaoACAOID: TBCDField
      FieldName = 'ACAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAcaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsAcaoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
    end
    object cdsAcaoEXIGECENTROCUSTO: TBCDField
      FieldName = 'EXIGECENTROCUSTO'
      Precision = 1
      Size = 0
    end
    object cdsAcaoRETEMIMPOSTO: TBCDField
      FieldName = 'RETEMIMPOSTO'
      Precision = 1
      Size = 0
    end
    object cdsAcaoNUMDOCOBRIGATORIO: TBCDField
      FieldName = 'NUMDOCOBRIGATORIO'
      Precision = 1
      Size = 0
    end
    object cdsAcaoMOVCONTASPAGAR: TBCDField
      FieldName = 'MOVCONTASPAGAR'
      Precision = 1
      Size = 0
    end
    object cdsAcaoMOVCONTASRECEBER: TBCDField
      FieldName = 'MOVCONTASRECEBER'
      Precision = 1
      Size = 0
    end
    object cdsAcaoMOVINFORMATIVO: TBCDField
      FieldName = 'MOVINFORMATIVO'
      Precision = 1
      Size = 0
    end
    object cdsAcaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsFormaPagto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvFormaPagto'
    RemoteServer = shdcnnFI
    AfterPost = cdsImpostoRetidoAfterPost
    AfterDelete = cdsImpostoRetidoAfterDelete
    OnNewRecord = cdsFormaPagtoNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 96
    Top = 104
    object cdsFormaPagtoFORMAPAGTOID: TBCDField
      FieldName = 'FORMAPAGTOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFormaPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsFormaPagtoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsFIRetencao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFIsqldtsFIRetencao
    Params = <>
    AfterPost = cdsFIRetencaoAfterPost
    AfterDelete = cdsFIRetencaoAfterDelete
    OnNewRecord = cdsFIRetencaoNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 312
    Top = 160
    object cdsFIRetencaoFIID: TBCDField
      FieldName = 'FIID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIRetencaoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIRetencaoIMPOSTORETIDOID: TBCDField
      FieldName = 'IMPOSTORETIDOID'
      OnValidate = cdsFIRetencaoIMPOSTORETIDOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIRetencaoL_DESCRIMPOSTO: TStringField
      FieldName = 'L_DESCRIMPOSTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsFIRetencaoL_ALIQIMPOSTO: TFMTBCDField
      FieldName = 'L_ALIQIMPOSTO'
      ProviderFlags = []
      Precision = 20
    end
    object cdsFIRetencaoVLRLIQUIDOID: TFMTBCDField
      FieldName = 'VLRLIQUIDOID'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsFIRetencaoHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsFIRetencaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsProjeto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvProjeto'
    RemoteServer = shdcnnFI
    AfterPost = cdsImpostoRetidoAfterPost
    AfterDelete = cdsImpostoRetidoAfterDelete
    OnNewRecord = cdsProjetoNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 96
    Top = 208
    object cdsProjetoPROJETOID: TBCDField
      FieldName = 'PROJETOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProjetoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsProjetoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsFI: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvFI'
    RemoteServer = shdcnnFI
    OnNewRecord = cdsFINewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 312
    Top = 8
    object cdsFIFIID: TBCDField
      FieldName = 'FIID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
    end
    object cdsFIEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsFIEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIL_NOMEEMPRESA: TStringField
      FieldName = 'L_NOMEEMPRESA'
      Size = 100
    end
    object cdsFIFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsFIFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIL_NOMEFILIAL: TStringField
      FieldName = 'L_NOMEFILIAL'
      Size = 100
    end
    object cdsFIACAOID: TBCDField
      FieldName = 'ACAOID'
      OnValidate = cdsFIACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIL_DESCRICAOACAO: TStringField
      FieldName = 'L_DESCRICAOACAO'
      Size = 100
    end
    object cdsFIL_MOVCONTASPAGAR: TBCDField
      FieldName = 'L_MOVCONTASPAGAR'
      Precision = 1
      Size = 0
    end
    object cdsFIL_MOVCONTASRECEBER: TBCDField
      FieldName = 'L_MOVCONTASRECEBER'
      Precision = 1
      Size = 0
    end
    object cdsFIL_MOVINFORMATIVO: TBCDField
      FieldName = 'L_MOVINFORMATIVO'
      Precision = 1
      Size = 0
    end
    object cdsFIFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      OnValidate = cdsFIFORNECEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      Size = 100
    end
    object cdsFINUMDOCID: TStringField
      FieldName = 'NUMDOCID'
      Size = 50
    end
    object cdsFIDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object cdsFISERIEDOC: TStringField
      FieldName = 'SERIEDOC'
    end
    object cdsFIDATAVENDOC: TSQLTimeStampField
      FieldName = 'DATAVENDOC'
    end
    object cdsFICONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      OnValidate = cdsFICONDPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIL_DESCRICAOCONDPAGTO: TStringField
      FieldName = 'L_DESCRICAOCONDPAGTO'
      Size = 100
    end
    object cdsFIVLRDOC: TFMTBCDField
      FieldName = 'VLRDOC'
      Precision = 20
    end
    object cdsFITIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 1
    end
    object cdsFIDOCPGTOVISTA: TBCDField
      FieldName = 'DOCPGTOVISTA'
      Precision = 1
      Size = 0
    end
    object cdsFIVLRLIQUIDO: TFMTBCDField
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsFIHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsFICONCILIADO: TBCDField
      FieldName = 'CONCILIADO'
      Precision = 1
      Size = 0
    end
    object cdsFIUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsFIsqldtsFIParcela: TDataSetField
      FieldName = 'sqldtsFIParcela'
    end
    object cdsFIsqldtsFIRetencao: TDataSetField
      FieldName = 'sqldtsFIRetencao'
    end
  end
  object cdsFIParcela: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFIsqldtsFIParcela
    Params = <>
    AfterPost = cdsFIParcelaAfterPost
    AfterDelete = cdsFIParcelaAfterDelete
    OnNewRecord = cdsFIParcelaNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 312
    Top = 56
    object cdsFIParcelaFIID: TBCDField
      FieldName = 'FIID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaDTVENCIMENTO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsFIParcelaDTPRORROGACAO: TSQLTimeStampField
      FieldName = 'DTPRORROGACAO'
    end
    object cdsFIParcelaFORMAPAGTOID: TBCDField
      FieldName = 'FORMAPAGTOID'
      OnValidate = cdsFIParcelaFORMAPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaL_DESCRFORMAPAGTO: TStringField
      FieldName = 'L_DESCRFORMAPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsFIParcelaTIPOCOBRANCAID: TBCDField
      FieldName = 'TIPOCOBRANCAID'
      OnValidate = cdsFIParcelaTIPOCOBRANCAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaL_DESCRTIPOCOBRANCA: TStringField
      FieldName = 'L_DESCRTIPOCOBRANCA'
      ProviderFlags = []
      Size = 100
    end
    object cdsFIParcelaBANCOID: TBCDField
      FieldName = 'BANCOID'
      OnValidate = cdsFIParcelaBANCOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaL_NOMEBANCO: TStringField
      FieldName = 'L_NOMEBANCO'
      ProviderFlags = []
      Size = 40
    end
    object cdsFIParcelaL_NUMBANCO: TStringField
      FieldName = 'L_NUMBANCO'
      ProviderFlags = []
    end
    object cdsFIParcelaL_AGENCIA: TStringField
      FieldName = 'L_AGENCIA'
      ProviderFlags = []
    end
    object cdsFIParcelaL_CONTA: TStringField
      FieldName = 'L_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object cdsFIParcelaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsFIParcelaCODIGOBARRASID: TStringField
      FieldName = 'CODIGOBARRASID'
      Size = 200
    end
    object cdsFIParcelaTITULOCONCESSIONARIA: TBCDField
      FieldName = 'TITULOCONCESSIONARIA'
      Precision = 1
      Size = 0
    end
    object cdsFIParcelaLINHADIGITAVEL: TStringField
      FieldName = 'LINHADIGITAVEL'
      Size = 100
    end
    object cdsFIParcelaAGENCIACODIGOCEDENTE: TStringField
      FieldName = 'AGENCIACODIGOCEDENTE'
      Size = 50
    end
    object cdsFIParcelaNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 50
    end
    object cdsFIParcelaVLRLIQDOC: TFMTBCDField
      FieldName = 'VLRLIQDOC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsFIParcelaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 44
    end
    object cdsFIParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsFIParcelasqldtsFIParcelaClasse: TDataSetField
      FieldName = 'sqldtsFIParcelaClasse'
    end
  end
  object cdsFIParcelaClasse: TClientDataSet
    Aggregates = <>
    DataSetField = cdsFIParcelasqldtsFIParcelaClasse
    Params = <>
    AfterPost = cdsFIParcelaClasseAfterPost
    AfterDelete = cdsFIParcelaClasseAfterDelete
    OnNewRecord = cdsFIParcelaClasseNewRecord
    OnReconcileError = cdsImpostoRetidoReconcileError
    Left = 312
    Top = 110
    object cdsFIParcelaClasseFIID: TBCDField
      FieldName = 'FIID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaClassePARCELAID: TBCDField
      FieldName = 'PARCELAID'
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaClasseITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaClasseCENTROCUSTOID: TBCDField
      FieldName = 'CENTROCUSTOID'
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaClassePROJETOID: TBCDField
      FieldName = 'PROJETOID'
      OnValidate = cdsFIParcelaClassePROJETOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsFIParcelaClasseL_DESCRPROJETO: TStringField
      FieldName = 'L_DESCRPROJETO'
      Size = 100
    end
    object cdsFIParcelaClasseVLRPAGAMENTO: TFMTBCDField
      FieldName = 'VLRPAGAMENTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsFIParcelaClassePERCENTUALPAGTO: TFMTBCDField
      FieldName = 'PERCENTUALPAGTO'
      Precision = 20
    end
    object cdsFIParcelaClasseUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAcao: TDataSource
    AutoEdit = False
    DataSet = cdsAcao
    Left = 192
    Top = 56
  end
  object dsFormaPagto: TDataSource
    AutoEdit = False
    DataSet = cdsFormaPagto
    Left = 192
    Top = 104
  end
  object dsTipoCobranca: TDataSource
    AutoEdit = False
    DataSet = cdsTipoCobranca
    Left = 192
    Top = 152
  end
  object dsProjeto: TDataSource
    AutoEdit = False
    DataSet = cdsProjeto
    Left = 192
    Top = 207
  end
  object dsFI: TDataSource
    AutoEdit = False
    DataSet = cdsFI
    Left = 414
    Top = 8
  end
  object dsFIParcela: TDataSource
    AutoEdit = False
    DataSet = cdsFIParcela
    Left = 414
    Top = 56
  end
  object dsFIParcelaClasse: TDataSource
    AutoEdit = False
    DataSet = cdsFIParcelaClasse
    Left = 414
    Top = 110
  end
  object dsFIRetencao: TDataSource
    AutoEdit = False
    DataSet = cdsFIRetencao
    Left = 415
    Top = 157
  end
end
