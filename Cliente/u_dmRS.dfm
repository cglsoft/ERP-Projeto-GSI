object dmRS: TdmRS
  OldCreateOrder = False
  Left = 111
  Top = 116
  Height = 384
  Width = 323
  object shdcnnRS: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppRS'
    Left = 12
    Top = 12
  end
  object cdsImpostoServico: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvImpostoServico'
    RemoteServer = shdcnnRS
    AfterPost = cdsImpostoServicoAfterPost
    AfterDelete = cdsImpostoServicoAfterDelete
    OnNewRecord = cdsImpostoServicoNewRecord
    OnReconcileError = cdsImpostoServicoReconcileError
    Left = 101
    Top = 12
    object cdsImpostoServicoIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsImpostoServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsImpostoServicoVLRALIQUOTA: TBCDField
      FieldName = 'VLRALIQUOTA'
      Precision = 14
      Size = 2
    end
    object cdsImpostoServicoFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 1
      Size = 0
    end
    object cdsImpostoServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsImpostoServico: TDataSource
    AutoEdit = False
    DataSet = cdsImpostoServico
    Left = 208
    Top = 8
  end
  object cdsLimiteContribuicao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvLimiteContribuicao'
    RemoteServer = shdcnnRS
    AfterPost = cdsImpostoServicoAfterPost
    AfterDelete = cdsImpostoServicoAfterDelete
    OnNewRecord = cdsLimiteContribuicaoNewRecord
    OnReconcileError = cdsImpostoServicoReconcileError
    Left = 101
    Top = 59
    object cdsLimiteContribuicaoDATAVIGENCIA: TSQLTimeStampField
      FieldName = 'DATAVIGENCIA'
      Required = True
    end
    object cdsLimiteContribuicaoVLRCONTRIBUICAO: TBCDField
      FieldName = 'VLRCONTRIBUICAO'
      Precision = 14
      Size = 2
    end
    object cdsLimiteContribuicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsLimiteContribuicao: TDataSource
    AutoEdit = False
    DataSet = cdsLimiteContribuicao
    Left = 210
    Top = 59
  end
  object cdsPrestador: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPrestador'
    RemoteServer = shdcnnRS
    AfterPost = cdsPrestadorAfterPost
    AfterDelete = cdsPrestadorAfterDelete
    OnNewRecord = cdsPrestadorNewRecord
    OnReconcileError = cdsImpostoServicoReconcileError
    Left = 101
    Top = 115
    object cdsPrestadorPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPrestadorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPrestadorCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object cdsPrestadorNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsPrestadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsPrestadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsPrestadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsPrestadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsPrestadorSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPrestadorCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object cdsPrestadorINSCRPREFMUNICIPAL: TStringField
      FieldName = 'INSCRPREFMUNICIPAL'
      OnValidate = cdsPrestadorINSCRPREFMUNICIPALValidate
    end
    object cdsPrestadorINSCRORGAOCLASSE: TStringField
      FieldName = 'INSCRORGAOCLASSE'
      OnValidate = cdsPrestadorINSCRORGAOCLASSEValidate
    end
    object cdsPrestadorINSCRINSS: TStringField
      FieldName = 'INSCRINSS'
      OnValidate = cdsPrestadorINSCRINSSValidate
    end
    object cdsPrestadorINSCRPIS: TStringField
      FieldName = 'INSCRPIS'
      OnValidate = cdsPrestadorINSCRPISValidate
    end
    object cdsPrestadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsPrestadorFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsPrestadorBENEFICIOTRIBTRANSP: TBCDField
      FieldName = 'BENEFICIOTRIBTRANSP'
      Precision = 1
      Size = 0
    end
    object cdsPrestadorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPrestadorsqldtsPrestadorReceb: TDataSetField
      FieldName = 'sqldtsPrestadorReceb'
    end
  end
  object dsPrestador: TDataSource
    AutoEdit = False
    DataSet = cdsPrestador
    Left = 210
    Top = 115
  end
  object cdsPrestadorReceb: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPrestadorsqldtsPrestadorReceb
    PacketRecords = 1
    Params = <>
    AfterPost = cdsPrestadorRecebAfterPost
    AfterDelete = cdsPrestadorRecebAfterDelete
    OnNewRecord = cdsPrestadorRecebNewRecord
    OnReconcileError = cdsImpostoServicoReconcileError
    Left = 101
    Top = 171
    object cdsPrestadorRecebPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPrestadorRecebITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPrestadorRecebDATAEXECUCAO: TSQLTimeStampField
      FieldName = 'DATAEXECUCAO'
    end
    object cdsPrestadorRecebCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      OnValidate = cdsPrestadorRecebCPFCNPJValidate
      Size = 18
    end
    object cdsPrestadorRecebRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object cdsPrestadorRecebVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object cdsPrestadorRecebVLRRETIDO: TBCDField
      FieldName = 'VLRRETIDO'
      Precision = 14
      Size = 2
    end
    object cdsPrestadorRecebUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPrestadorReceb: TDataSource
    AutoEdit = False
    DataSet = cdsPrestadorReceb
    Left = 210
    Top = 171
  end
  object cdsRecibo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvRecibo'
    RemoteServer = shdcnnRS
    AfterPost = cdsImpostoServicoAfterDelete
    AfterDelete = cdsImpostoServicoAfterDelete
    OnNewRecord = cdsReciboNewRecord
    OnReconcileError = cdsImpostoServicoReconcileError
    Left = 101
    Top = 223
    object cdsReciboRECIBOID: TBCDField
      FieldName = 'RECIBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsReciboFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsReciboL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsReciboL_NOMEFILIAL: TStringField
      FieldName = 'L_NOMEFILIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsReciboL_ENDERECOFILIAL: TStringField
      FieldName = 'L_ENDERECOFILIAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsReciboL_NUMEROFILIAL: TStringField
      FieldName = 'L_NUMEROFILIAL'
      ProviderFlags = []
    end
    object cdsReciboL_CIDADEFILIAL: TStringField
      FieldName = 'L_CIDADEFILIAL'
      ProviderFlags = []
      Size = 72
    end
    object cdsReciboL_CPEIDFILIAL: TBCDField
      FieldName = 'L_CPEIDFILIAL'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsReciboL_SIGLAUFIDFILIAL: TStringField
      FieldName = 'L_SIGLAUFIDFILIAL'
      ProviderFlags = []
      Size = 2
    end
    object cdsReciboL_CPFCNPJFILIAL: TStringField
      FieldName = 'L_CPFCNPJFILIAL'
      ProviderFlags = []
      Size = 18
    end
    object cdsReciboDATACALCULO: TSQLTimeStampField
      FieldName = 'DATACALCULO'
    end
    object cdsReciboDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsReciboPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      Precision = 8
      Size = 0
    end
    object cdsReciboL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsReciboL_CEPID: TBCDField
      FieldName = 'L_CEPID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsReciboL_NUMERO: TStringField
      FieldName = 'L_NUMERO'
      ProviderFlags = []
    end
    object cdsReciboL_COMPLEMENTO: TStringField
      FieldName = 'L_COMPLEMENTO'
      ProviderFlags = []
    end
    object cdsReciboL_ENDERECO: TStringField
      FieldName = 'L_ENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object cdsReciboL_BAIRRO: TStringField
      FieldName = 'L_BAIRRO'
      ProviderFlags = []
      Size = 72
    end
    object cdsReciboL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object cdsReciboL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object cdsReciboL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsReciboL_INSCRPREFMUNICIPAL: TStringField
      FieldName = 'L_INSCRPREFMUNICIPAL'
      ProviderFlags = []
    end
    object cdsReciboL_INSCRORGAOCLASSE: TStringField
      FieldName = 'L_INSCRORGAOCLASSE'
      ProviderFlags = []
    end
    object cdsReciboL_INSCRINSS: TStringField
      FieldName = 'L_INSCRINSS'
      ProviderFlags = []
    end
    object cdsReciboL_INSCRPIS: TStringField
      FieldName = 'L_INSCRPIS'
      ProviderFlags = []
    end
    object cdsReciboL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object cdsReciboFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 1
      Size = 0
    end
    object cdsReciboIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      Precision = 8
      Size = 0
    end
    object cdsReciboVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRINSS: TBCDField
      FieldName = 'VLRINSS'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRBASEINSSEMPRESA: TBCDField
      FieldName = 'VLRBASEINSSEMPRESA'
      Precision = 14
      Size = 2
    end
    object cdsReciboVLRINSSEMPRESA: TBCDField
      FieldName = 'VLRINSSEMPRESA'
      Precision = 14
      Size = 2
    end
    object cdsReciboDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsReciboOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsReciboUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsRecibo: TDataSource
    AutoEdit = False
    DataSet = cdsRecibo
    Left = 210
    Top = 223
  end
  object cdsRelBaseINSS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 101
    Top = 275
    object cdsRelBaseINSSRECIBOID: TBCDField
      FieldName = 'RECIBOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRelBaseINSSFILIALID: TBCDField
      FieldName = 'FILIALID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRelBaseINSSNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object cdsRelBaseINSSDATACALCULO: TSQLTimeStampField
      FieldName = 'DATACALCULO'
    end
    object cdsRelBaseINSSPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      Precision = 8
      Size = 0
    end
    object cdsRelBaseINSSFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 1
      Size = 0
    end
    object cdsRelBaseINSSVLRSERVICORECIBO: TBCDField
      FieldName = 'VLRSERVICORECIBO'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRINSS: TBCDField
      FieldName = 'VLRINSS'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRBASEINSSEMPRESA: TBCDField
      FieldName = 'VLRBASEINSSEMPRESA'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRINSSEMPRESA: TBCDField
      FieldName = 'VLRINSSEMPRESA'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsRelBaseINSSOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsRelBaseINSSDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsRelBaseINSSUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsRelBaseINSSNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsRelBaseINSSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsRelBaseINSSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsRelBaseINSSNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsRelBaseINSSSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsRelBaseINSSCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object cdsRelBaseINSSCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object cdsRelBaseINSSINSCRPREFMUNICIPAL: TStringField
      FieldName = 'INSCRPREFMUNICIPAL'
    end
    object cdsRelBaseINSSINSCRORGAOCLASSE: TStringField
      FieldName = 'INSCRORGAOCLASSE'
    end
    object cdsRelBaseINSSTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsRelBaseINSSFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsRelBaseINSSDATAEXECUCAO: TSQLTimeStampField
      FieldName = 'DATAEXECUCAO'
    end
    object cdsRelBaseINSSRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object cdsRelBaseINSSVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object cdsRelBaseINSSVLRRETIDO: TBCDField
      FieldName = 'VLRRETIDO'
      Precision = 14
      Size = 2
    end
  end
  object dscdsRelBaseINSS: TDataSource
    DataSet = cdsRelBaseINSS
    Left = 213
    Top = 275
  end
end
