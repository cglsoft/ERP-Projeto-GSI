object dmPP: TdmPP
  OldCreateOrder = False
  Height = 650
  Width = 951
  object shdcnnPP: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppPP'
    Left = 12
    Top = 2
  end
  object cdsCatalogo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCatalogo'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsCatalogoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    object cdsCatalogoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsCatalogoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsCatalogoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object cdsCatalogoCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object cdsCatalogoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      OnValidate = cdsCatalogoFORNECEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCatalogoL_NOME_FORNECEDOR: TStringField
      FieldName = 'L_NOME_FORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsCatalogoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      OnValidate = cdsCatalogoGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCatalogoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsCatalogoL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      Size = 100
    end
    object cdsCatalogoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsCatalogoCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      OnValidate = cdsCatalogoCUSTOHORAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCatalogoL_DESCRICAOCUSTOHORA: TStringField
      FieldName = 'L_DESCRICAOCUSTOHORA'
      Size = 100
    end
    object cdsCatalogoL_VLRHORATRAB: TBCDField
      FieldName = 'L_VLRHORATRAB'
      Precision = 14
      Size = 2
    end
    object cdsCatalogoL_VLRHORATRANSP: TBCDField
      FieldName = 'L_VLRHORATRANSP'
      Precision = 14
      Size = 2
    end
    object cdsCatalogoL_VLRHORAESPERA: TBCDField
      FieldName = 'L_VLRHORAESPERA'
      Precision = 14
      Size = 2
    end
    object cdsCatalogoL_VLRHORAOUTROS: TBCDField
      FieldName = 'L_VLRHORAOUTROS'
      Precision = 14
      Size = 2
    end
    object cdsCatalogoREGANVISAID: TStringField
      FieldName = 'REGANVISAID'
      Size = 40
    end
    object cdsCatalogoDESCRICAOANVISA: TStringField
      FieldName = 'DESCRICAOANVISA'
      Size = 100
    end
    object cdsCatalogoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsCatalogoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsEquipamento: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvEquipamento'
    RemoteServer = shdcnnPP
    AfterPost = cdsEquipamentoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsEquipamentoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 41
    object cdsEquipamentoMODELOEQUIPAMENTOID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsEquipamentoMODELOEQUIPAMENTOIDValidate
      Size = 40
    end
    object cdsEquipamentoL_DESCRICAOPORTUGUES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsEquipamentoL_DESCRICAOINGLES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsEquipamentoL_COMENTARIO: TStringField
      DisplayWidth = 100
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEquipamentoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsEquipamentoL_DESCR_GRUPO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEquipamentoL_IMAGEM: TBlobField
      FieldName = 'L_IMAGEM'
      ProviderFlags = []
      Size = 1
    end
    object cdsEquipamentoVLRFOB: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFOB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsEquipamentoVLRREVENDA: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsEquipamentoVLRNET: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRNET'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsEquipamentoL_ITEM: TIntegerField
      DisplayLabel = 'Composicao'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'L_COMPOSICAO'
      ProviderFlags = []
      Calculated = True
    end
    object cdsEquipamentoL_OPCIONAL: TIntegerField
      DisplayLabel = 'Opcional'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'L_OPCIONAL'
      Calculated = True
    end
    object cdsEquipamentoDISPONIVEL: TBCDField
      DisplayWidth = 2
      FieldName = 'DISPONIVEL'
      Visible = False
      Precision = 1
      Size = 0
    end
    object cdsEquipamentoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsEquipamentoREVISAOID: TBCDField
      DisplayWidth = 9
      FieldName = 'REVISAOID'
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsEquipamentoDATAINCLUSAO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAINCLUSAO'
      Required = True
      Visible = False
    end
    object cdsEquipamentoDATAALTERACAO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAALTERACAO'
      Visible = False
      OnValidate = cdsEquipamentoDATAALTERACAOValidate
    end
    object cdsEquipamentoDOC: TStringField
      DisplayWidth = 250
      FieldName = 'DOC'
      Visible = False
      Size = 250
    end
    object cdsEquipamentoPRAZO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'PRAZO'
      Visible = False
    end
    object cdsEquipamentoUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsEquipamentosqldtsComposicao: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsComposicao'
      Visible = False
    end
    object cdsEquipamentosqldtsOpcional: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsOpcional'
      Visible = False
    end
  end
  object cdsValidade: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvValidade'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsValidadeNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 124
    object cdsValidadeVALIDADEID: TBCDField
      FieldName = 'VALIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsValidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object cdsValidadeUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsProposta: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvProposta'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsPropostaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 165
    object cdsPropostaPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropostaFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsPropostaFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsPropostaDATAPROPOSTA: TSQLTimeStampField
      FieldName = 'DATAPROPOSTA'
    end
    object cdsPropostaDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
      OnValidate = cdsPropostaDATAVALIDADEValidate
    end
    object cdsPropostaORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      OnValidate = cdsPropostaORIGEMVENDAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_ORIGEMVENDA: TStringField
      FieldName = 'L_DESCR_ORIGEMVENDA'
      Size = 100
    end
    object cdsPropostaTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      OnValidate = cdsPropostaTIPOVENDAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_TIPOVENDA: TStringField
      FieldName = 'L_DESCR_TIPOVENDA'
      Size = 100
    end
    object cdsPropostaLIBERACAO: TBCDField
      FieldName = 'LIBERACAO'
      Precision = 1
      Size = 0
    end
    object cdsPropostaLIBNOME: TStringField
      FieldName = 'LIBNOME'
    end
    object cdsPropostaLIBDATAHORA: TSQLTimeStampField
      FieldName = 'LIBDATAHORA'
    end
    object cdsPropostaTRADEIN: TBCDField
      FieldName = 'TRADEIN'
      Precision = 1
      Size = 0
    end
    object cdsPropostaANDAMENTOPROPOSTA: TStringField
      FieldName = 'ANDAMENTOPROPOSTA'
      Size = 1
    end
    object cdsPropostaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      OnValidate = cdsPropostaCPFCNPJValidate
      Size = 18
    end
    object cdsPropostaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object cdsPropostaREPRESENTSOCIO: TStringField
      FieldName = 'REPRESENTSOCIO'
      Size = 100
    end
    object cdsPropostaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object cdsPropostaCARTAAPRESENTID: TBCDField
      FieldName = 'CARTAAPRESENTID'
      OnValidate = cdsPropostaCARTAAPRESENTIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_CARTA_APRESENT: TStringField
      FieldName = 'L_CARTA_APRESENT'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropostaL_CARTA: TMemoField
      FieldName = 'L_CARTA'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsPropostaCONDPAGTOPROPID: TBCDField
      FieldName = 'CONDPAGTOPROPID'
      OnValidate = cdsPropostaCONDPAGTOPROPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaDESCRICAOCONDPAGTO: TBlobField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPropostaL_CONDPAGTOID: TBCDField
      FieldName = 'L_CONDPAGTOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_CONDPGTO: TStringField
      FieldName = 'L_DESCR_CONDPGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropostaOBSPROPID: TBCDField
      FieldName = 'OBSPROPID'
      OnValidate = cdsPropostaOBSPROPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_OBS: TMemoField
      FieldName = 'L_DESCR_OBS'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsPropostaGARANTIAID: TBCDField
      FieldName = 'GARANTIAID'
      OnValidate = cdsPropostaGARANTIAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_GARANTIA: TMemoField
      FieldName = 'L_DESCR_GARANTIA'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsPropostaASSISTTECID: TBCDField
      FieldName = 'ASSISTTECID'
      OnValidate = cdsPropostaASSISTTECIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_ASSISTTEC: TMemoField
      FieldName = 'L_DESCR_ASSISTTEC'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsPropostaINSTALACAOID: TBCDField
      FieldName = 'INSTALACAOID'
      OnValidate = cdsPropostaINSTALACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_INSTALACAO: TMemoField
      FieldName = 'L_DESCR_INSTALACAO'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsPropostaPRAZOID: TBCDField
      FieldName = 'PRAZOID'
      OnValidate = cdsPropostaPRAZOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_PRAZO: TStringField
      FieldName = 'L_DESCR_PRAZO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropostaVALIDADEID: TBCDField
      FieldName = 'VALIDADEID'
      OnValidate = cdsPropostaVALIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropostaL_DESCR_VALID: TStringField
      FieldName = 'L_DESCR_VALID'
      ProviderFlags = []
      Size = 300
    end
    object cdsPropostaCEPID: TBCDField
      FieldName = 'CEPID'
      OnValidate = cdsPropostaCEPIDValidate
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPropostaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsPropostaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsPropostaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsPropostaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsPropostaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsPropostaSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPropostaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsPropostaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object cdsPropostaTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsPropostaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object cdsPropostaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object cdsPropostaCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object cdsPropostaFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsPropostaEMAIL: TStringField
      FieldName = 'EMAIL'
      OnValidate = cdsPropostaEMAILValidate
      Size = 100
    end
    object cdsPropostaPAGINA: TStringField
      FieldName = 'PAGINA'
      Size = 100
    end
    object cdsPropostaVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropostaVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropostaVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropostaVLRTOTALDESCONTO: TBCDField
      FieldName = 'VLRTOTALDESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropostaVLRTOTALTRADEIN: TBCDField
      FieldName = 'VLRTOTALTRADEIN'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropostaVLRLIQUIDOPROPOSTA: TBCDField
      FieldName = 'VLRLIQUIDOPROPOSTA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropostaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPropostasqldtsPropVendedor: TDataSetField
      FieldName = 'sqldtsPropVendedor'
    end
    object cdsPropostasqldtsPropTradeIn: TDataSetField
      FieldName = 'sqldtsPropTradeIn'
    end
    object cdsPropostasqldtsPropBonificacao: TDataSetField
      FieldName = 'sqldtsPropBonificacao'
    end
    object cdsPropostasqldtsPropEquipamento: TDataSetField
      FieldName = 'sqldtsPropEquipamento'
    end
  end
  object cdsPrazo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPrazo'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsPrazoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 82
    object cdsPrazoPRAZOID: TBCDField
      FieldName = 'PRAZOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPrazoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsPrazoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsCondPagtoProp: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCondPagtoProp'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsCondPagtoPropNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 380
    object cdsCondPagtoPropCONDPAGTOPROPID: TBCDField
      FieldName = 'CONDPAGTOPROPID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoPropDESCRICAOPAGTO: TStringField
      FieldName = 'DESCRICAOPAGTO'
      Size = 100
    end
    object cdsCondPagtoPropDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsCondPagtoPropCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoPropL_DESC_PAGTO: TStringField
      FieldName = 'L_DESC_PAGTO'
      Size = 100
    end
    object cdsCondPagtoPropTABFINANCEIRAID: TBCDField
      FieldName = 'TABFINANCEIRAID'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoPropSPREAD: TFMTBCDField
      FieldName = 'SPREAD'
      Precision = 14
      Size = 6
    end
    object cdsCondPagtoPropJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 14
      Size = 6
    end
    object cdsCondPagtoPropNUMPARCELA: TBCDField
      FieldName = 'NUMPARCELA'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoPropNUMPARCJUROS: TBCDField
      FieldName = 'NUMPARCJUROS'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoPropPORCPAGTOAVISTA: TFMTBCDField
      FieldName = 'PORCPAGTOAVISTA'
      Precision = 14
      Size = 6
    end
    object cdsCondPagtoPropLEASING: TBCDField
      FieldName = 'LEASING'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoPropRESIDUALPORC: TFMTBCDField
      FieldName = 'RESIDUALPORC'
      Precision = 14
      Size = 6
    end
    object cdsCondPagtoPropRESIDUALNUM: TFMTBCDField
      FieldName = 'RESIDUALNUM'
      Precision = 14
      Size = 6
    end
    object cdsCondPagtoPropTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      Size = 1
    end
    object cdsCondPagtoPropCOMISSAOFINANCEIRA: TFMTBCDField
      FieldName = 'COMISSAOFINANCEIRA'
      Precision = 14
      Size = 6
    end
    object cdsCondPagtoPropDEDUZIRCOMISSAO: TBCDField
      FieldName = 'DEDUZIRCOMISSAO'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoPropUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsPropEquipamento: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPropostasqldtsPropEquipamento
    Params = <>
    AfterPost = cdsPropEquipamentoAfterPost
    AfterDelete = cdsPropEquipamentoAfterDelete
    OnNewRecord = cdsPropEquipamentoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 207
    object cdsPropEquipamentoPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropEquipamentoMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropEquipamentoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropEquipamentoL_DESCR_PORT: TStringField
      FieldName = 'L_DESCR_PORT'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropEquipamentoL_DESCR_INGLES: TStringField
      FieldName = 'L_DESCR_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropEquipamentoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPropEquipamentoL_DESCRICAO_EQUIPAMENTO: TBlobField
      FieldName = 'L_DESCRICAO_EQUIPAMENTO'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsPropEquipamentoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object cdsPropEquipamentoVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRLIQUIDOREVENDA: TBCDField
      FieldName = 'VLRLIQUIDOREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoPORCDESCONTO: TBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 14
      Size = 2
    end
    object cdsPropEquipamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object cdsPropEquipamentoREVISAOID: TBCDField
      FieldName = 'REVISAOID'
      Precision = 8
      Size = 0
    end
    object cdsPropEquipamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPropEquipamentosqldtsPropOpcional: TDataSetField
      FieldName = 'sqldtsPropOpcional'
    end
    object cdsPropEquipamentosqldtsPropComposicao: TDataSetField
      FieldName = 'sqldtsPropComposicao'
    end
  end
  object cdsObsProp: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvObsProp'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsObsPropNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 426
    object cdsObsPropOBSPROPID: TBCDField
      FieldName = 'OBSPROPID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsObsPropDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsObsPropUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsInstalacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvInstalacao'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsInstalacaoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 41
    object cdsInstalacaoINSTALACAOID: TBCDField
      FieldName = 'INSTALACAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInstalacaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsInstalacaoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsAssistTec: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvAssistTec'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsAssistTecNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 65535
    object cdsAssistTecASSISTTECID: TBCDField
      FieldName = 'ASSISTTECID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAssistTecDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsAssistTecUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsGarantia: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvGarantia'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsGarantiaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 472
    object cdsGarantiaGARANTIAID: TBCDField
      FieldName = 'GARANTIAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGarantiaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsGarantiaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsCartaApresent: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCartaApresent'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsCartaApresentNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 336
    object cdsCartaApresentCARTAAPRESENTID: TBCDField
      FieldName = 'CARTAAPRESENTID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCartaApresentDESCRRESUMIDA: TStringField
      FieldName = 'DESCRRESUMIDA'
      Size = 100
    end
    object cdsCartaApresentCARTA: TMemoField
      FieldName = 'CARTA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsCartaApresentUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsOpcional: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEquipamentosqldtsOpcional
    Params = <>
    AfterPost = cdsComposicaoAfterPost
    AfterDelete = cdsComposicaoAfterDelete
    OnNewRecord = cdsOpcionalNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 124
    object cdsOpcionalMODELOCOMPONENTEID: TStringField
      DisplayWidth = 35
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsOpcionalMODELOCOMPONENTEIDValidate
      Size = 40
    end
    object cdsOpcionalL_DESCRICAOPORTUGUES: TStringField
      DisplayWidth = 40
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsOpcionalL_DESCRICAOINGLES: TStringField
      DisplayWidth = 40
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsOpcionalL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsOpcionalL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsOpcionalL_DESCR_GRUPO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOpcionalEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsOpcionalUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsOpcionalMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Size = 40
    end
    object cdsOpcionalPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsOpcionalL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Visible = False
      Size = 100
    end
    object cdsOpcionalL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Visible = False
      Size = 100
    end
    object cdsOpcionalL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Visible = False
      Precision = 8
      Size = 2
    end
    object cdsOpcionalQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOpcionalVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Visible = False
      OnValidate = cdsOpcionalVLRUNITARIOFOBValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOpcionalVLRTOTALFOB: TBCDField
      Tag = 1
      FieldName = 'VLRTOTALFOB'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOpcionalVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Visible = False
      OnValidate = cdsOpcionalVLRUNITARIOREVENDAValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOpcionalVLRTOTALREVENDA: TBCDField
      Tag = 1
      FieldName = 'VLRTOTALREVENDA'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOpcionalVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Visible = False
      OnValidate = cdsOpcionalVLRUNITARIONETValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOpcionalVLRTOTALNET: TBCDField
      Tag = 1
      FieldName = 'VLRTOTALNET'
      Visible = False
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOpcionalsqldtsDependencia: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsDependencia'
      Visible = False
    end
    object cdsOpcionalsqldtsIncompativel: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsIncompativel'
      Visible = False
    end
    object cdsOpcionalsqldtsAcessorio: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsAcessorio'
      Visible = False
    end
  end
  object cdsBonificacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvBonificacao'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsBonificacaoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 293
    object cdsBonificacaoBONIFICACAOID: TBCDField
      FieldName = 'BONIFICACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBonificacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsBonificacaoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsDependencia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOpcionalsqldtsDependencia
    Params = <>
    AfterPost = cdsComposicaoAfterPost
    AfterDelete = cdsComposicaoAfterDelete
    OnNewRecord = cdsDependenciaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 165
    object cdsDependenciaMODELOEQUIPAMENTOID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsDependenciaMODELOCOMPONENTEID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsDependenciaMODELODEPENDENCIAID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELODEPENDENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsDependenciaMODELODEPENDENCIAIDValidate
      Size = 40
    end
    object cdsDependenciaL_DESCRICAOPORTUGUES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsDependenciaL_DESCRICAOINGLES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsDependenciaL_COMENTARIO: TStringField
      DisplayWidth = 100
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDependenciaL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsDependenciaL_DESCR_GRUPO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDependenciaEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsDependenciaPRODUTOID: TBCDField
      DisplayWidth = 9
      FieldName = 'PRODUTOID'
      OnValidate = cdsDependenciaPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDependenciaL_DESCRICAO_PORT: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object cdsDependenciaL_DESCRICAO_INGLES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsDependenciaL_ESTOQUEFISICO: TBCDField
      DisplayWidth = 9
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object cdsDependenciaQUANTIDADE: TBCDField
      DisplayWidth = 9
      FieldName = 'QUANTIDADE'
      OnValidate = cdsDependenciaVLRUNITARIOFOBValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsDependenciaVLRUNITARIOFOB: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRUNITARIOFOB'
      OnValidate = cdsDependenciaVLRUNITARIOFOBValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDependenciaVLRTOTALFOB: TBCDField
      Tag = 1
      DisplayWidth = 15
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDependenciaVLRUNITARIOREVENDA: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRUNITARIOREVENDA'
      OnValidate = cdsDependenciaVLRUNITARIOREVENDAValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDependenciaVLRTOTALREVENDA: TBCDField
      Tag = 1
      DisplayWidth = 15
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDependenciaVLRUNITARIONET: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRUNITARIONET'
      OnValidate = cdsDependenciaVLRUNITARIONETValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDependenciaVLRTOTALNET: TBCDField
      Tag = 1
      DisplayWidth = 15
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDependenciaUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsComposicao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEquipamentosqldtsComposicao
    Params = <>
    AfterPost = cdsComposicaoAfterPost
    AfterDelete = cdsComposicaoAfterDelete
    OnNewRecord = cdsComposicaoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 82
    object cdsComposicaoMODELOEQUIPAMENTOID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsComposicaoMODELOCOMPONENTEID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsComposicaoMODELOCOMPONENTEIDValidate
      Size = 40
    end
    object cdsComposicaoL_DESCRICAOPORTUGUES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsComposicaoL_DESCRICAOINGLES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsComposicaoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsComposicaoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsComposicaoL_DESCR_GRUPO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsComposicaoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsComposicaoPRODUTOID: TBCDField
      DisplayWidth = 9
      FieldName = 'PRODUTOID'
      OnValidate = cdsComposicaoPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsComposicaoL_DESCRICAO_PORT: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object cdsComposicaoL_DESCRICAO_INGLES: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsComposicaoL_ESTOQUEFISICO: TBCDField
      DisplayWidth = 9
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object cdsComposicaoQUANTIDADE: TBCDField
      DisplayWidth = 9
      FieldName = 'QUANTIDADE'
      OnValidate = cdsComposicaoVLRUNITARIOFOBValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsComposicaoVLRUNITARIOFOB: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRUNITARIOFOB'
      OnValidate = cdsComposicaoVLRUNITARIOFOBValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsComposicaoVLRTOTALFOB: TBCDField
      Tag = 1
      DisplayWidth = 15
      FieldName = 'VLRTOTALFOB'
      Required = True
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsComposicaoVLRUNITARIOREVENDA: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRUNITARIOREVENDA'
      OnValidate = cdsComposicaoVLRUNITARIOREVENDAValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsComposicaoVLRTOTALREVENDA: TBCDField
      Tag = 1
      DisplayWidth = 15
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsComposicaoVLRUNITARIONET: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRUNITARIONET'
      OnValidate = cdsComposicaoVLRUNITARIONETValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsComposicaoVLRTOTALNET: TBCDField
      Tag = 1
      DisplayWidth = 15
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsComposicaoUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsCatalogo: TDataSource
    AutoEdit = False
    DataSet = cdsCatalogo
    Left = 164
  end
  object dsEquipamento: TDataSource
    AutoEdit = False
    DataSet = cdsEquipamento
    Left = 164
    Top = 41
  end
  object dsComposicao: TDataSource
    AutoEdit = False
    DataSet = cdsComposicao
    Left = 164
    Top = 82
  end
  object dsDependencia: TDataSource
    AutoEdit = False
    DataSet = cdsDependencia
    Left = 164
    Top = 165
  end
  object dsOpcional: TDataSource
    AutoEdit = False
    DataSet = cdsOpcional
    Left = 164
    Top = 124
  end
  object dsBonificacao: TDataSource
    DataSet = cdsBonificacao
    Left = 164
    Top = 293
  end
  object dsCartaApresent: TDataSource
    AutoEdit = False
    DataSet = cdsCartaApresent
    Left = 164
    Top = 336
  end
  object dsCondPagtoProp: TDataSource
    AutoEdit = False
    DataSet = cdsCondPagtoProp
    Left = 164
    Top = 380
  end
  object dsObsProp: TDataSource
    AutoEdit = False
    DataSet = cdsObsProp
    Left = 164
    Top = 426
  end
  object dsGarantia: TDataSource
    AutoEdit = False
    DataSet = cdsGarantia
    Left = 164
    Top = 472
  end
  object dsAssistTec: TDataSource
    AutoEdit = False
    DataSet = cdsAssistTec
    Left = 338
    Top = 65535
  end
  object dsInstalacao: TDataSource
    AutoEdit = False
    DataSet = cdsInstalacao
    Left = 338
    Top = 41
  end
  object dsPrazo: TDataSource
    AutoEdit = False
    DataSet = cdsPrazo
    Left = 338
    Top = 82
  end
  object dsValidade: TDataSource
    AutoEdit = False
    DataSet = cdsValidade
    Left = 338
    Top = 124
  end
  object dsProposta: TDataSource
    AutoEdit = False
    DataSet = cdsProposta
    Left = 338
    Top = 165
  end
  object cdsPropTradeIn: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPropostasqldtsPropTradeIn
    Params = <>
    AfterPost = cdsPropTradeInAfterPost
    AfterDelete = cdsPropTradeInAfterDelete
    OnNewRecord = cdsPropTradeInNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 468
    object cdsPropTradeInPROPOSTAID: TBCDField
      Tag = 1
      FieldName = 'PROPOSTAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropTradeInITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropTradeInDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPropTradeInDESCRICAOIMPRESSA: TBlobField
      FieldName = 'DESCRICAOIMPRESSA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPropTradeInVLRTRADEIN: TBCDField
      FieldName = 'VLRTRADEIN'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropTradeInUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsPropVendedor: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPropostasqldtsPropVendedor
    Params = <>
    AfterPost = cdsPropVendedorAfterPost
    AfterDelete = cdsPropVendedorAfterDelete
    OnNewRecord = cdsPropVendedorNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 424
    object cdsPropVendedorPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropVendedorITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropVendedorVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Precision = 8
      Size = 0
    end
    object cdsPropVendedorL_NOME_VENDEDOR: TStringField
      FieldName = 'L_NOME_VENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropVendedorL_NOME_FANTASIA: TStringField
      FieldName = 'L_NOME_FANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsPropVendedorFUNCAOVENDAID: TBCDField
      FieldName = 'FUNCAOVENDAID'
      Precision = 8
      Size = 0
    end
    object cdsPropVendedorL_FUNCAOVENDA: TStringField
      FieldName = 'L_FUNCAOVENDA'
      Size = 100
    end
    object cdsPropVendedorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsPropComposicao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPropEquipamentosqldtsPropComposicao
    Params = <>
    AfterPost = cdsPropComposicaoAfterPost
    AfterDelete = cdsPropComposicaoAfterDelete
    OnNewRecord = cdsPropComposicaoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 249
    object cdsPropComposicaoPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropComposicaoMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropComposicaoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropComposicaoMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropComposicaoL_DESCRPORTUGUES: TStringField
      FieldName = 'L_DESCRPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropComposicaoL_DESCRINGLES: TStringField
      FieldName = 'L_DESCRINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropComposicaoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPropComposicaoL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropComposicaoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object cdsPropComposicaoVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropComposicaoVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropComposicaoVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropComposicaoVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropComposicaoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropComposicaoVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropComposicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsPropBonificacao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPropostasqldtsPropBonificacao
    Params = <>
    AfterOpen = cdsPropBonificacaoAfterOpen
    AfterDelete = cdsPropBonificacaoAfterDelete
    OnNewRecord = cdsPropBonificacaoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 380
    object cdsPropBonificacaoPROPOSTAID: TBCDField
      Tag = 1
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropBonificacaoITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropBonificacaoBONIFICACAOID: TBCDField
      FieldName = 'BONIFICACAOID'
      OnValidate = cdsPropBonificacaoBONIFICACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPropBonificacaoL_DESCR_BONIF: TStringField
      FieldName = 'L_DESCR_BONIF'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropBonificacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsPropBonificacaoVLRBONIFICACAO: TBCDField
      FieldName = 'VLRBONIFICACAO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropBonificacaoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPropEquipamento: TDataSource
    AutoEdit = False
    DataSet = cdsPropEquipamento
    Left = 338
    Top = 207
  end
  object dsPropComposicao: TDataSource
    AutoEdit = False
    DataSet = cdsPropComposicao
    Left = 338
    Top = 249
  end
  object dsPropBonificacao: TDataSource
    AutoEdit = False
    DataSet = cdsPropBonificacao
    Left = 338
    Top = 380
  end
  object dsPropVendedor: TDataSource
    AutoEdit = False
    DataSet = cdsPropVendedor
    Left = 338
    Top = 424
  end
  object dsPropTradeIn: TDataSource
    AutoEdit = False
    DataSet = cdsPropTradeIn
    Left = 340
    Top = 466
  end
  object cdsPropDependencia: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsPropOpcionalsqldtsPropDependencia
    Params = <>
    AfterPost = cdsPropDependenciaAfterPost
    AfterDelete = cdsPropDependenciaAfterDelete
    OnNewRecord = cdsPropDependenciaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 336
    object cdsPropDependenciaPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropDependenciaMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropDependenciaMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropDependenciaMODELODEPENDENCIAID: TStringField
      FieldName = 'MODELODEPENDENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropDependenciaITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropDependenciaL_DESCRPORTUGUES: TStringField
      FieldName = 'L_DESCRPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropDependenciaL_DESCRINGLES: TStringField
      FieldName = 'L_DESCRINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropDependenciaL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPropDependenciaL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropDependenciaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object cdsPropDependenciaVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropDependenciaVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropDependenciaVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropDependenciaVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropDependenciaVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropDependenciaVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropDependenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPropDependenciaT_REVENDA: TAggregateField
      FieldName = 'T_REVENDA'
      Active = True
      Expression = 'SUM( VLRTOTALREVENDA )'
    end
  end
  object dsPropDependencia: TDataSource
    AutoEdit = False
    DataSet = cdsPropDependencia
    Left = 338
    Top = 336
  end
  object cdsPropOpcional: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPropEquipamentosqldtsPropOpcional
    Params = <>
    AfterPost = cdsPropOpcionalAfterPost
    AfterDelete = cdsPropOpcionalAfterDelete
    OnNewRecord = cdsPropOpcionalNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 242
    Top = 293
    object cdsPropOpcionalPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropOpcionalMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropOpcionalITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPropOpcionalMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsPropOpcionalL_DESCRPORTUGUES: TStringField
      FieldName = 'L_DESCRPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropOpcionalL_DESCRINGLES: TStringField
      FieldName = 'L_DESCRINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropOpcionalL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPropOpcionalL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPropOpcionalQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object cdsPropOpcionalVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropOpcionalVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropOpcionalVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropOpcionalVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropOpcionalVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropOpcionalVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPropOpcionalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPropOpcionalsqldtsPropDependencia: TDataSetField
      FieldName = 'sqldtsPropDependencia'
    end
  end
  object dsPropOpcional: TDataSource
    AutoEdit = False
    DataSet = cdsPropOpcional
    Left = 338
    Top = 293
  end
  object cdsAcessorio: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOpcionalsqldtsAcessorio
    Params = <>
    AfterPost = cdsComposicaoAfterPost
    AfterDelete = cdsComposicaoAfterDelete
    OnNewRecord = cdsAcessorioNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 207
    object cdsAcessorioMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsAcessorioMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsAcessorioMODELOACESSORIOID: TStringField
      FieldName = 'MODELOACESSORIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsAcessorioMODELOACESSORIOIDValidate
      Size = 40
    end
    object cdsAcessorioL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcessorioL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcessorioL_COMENTARIO: TStringField
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcessorioL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcessorioL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcessorioEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsAcessorioPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsAcessorioL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcessorioL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcessorioL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object cdsAcessorioQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsAcessorioVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object cdsAcessorioVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object cdsAcessorioVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object cdsAcessorioVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object cdsAcessorioVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object cdsAcessorioVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object cdsAcessorioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAcessorio: TDataSource
    AutoEdit = False
    DataSet = cdsAcessorio
    Left = 164
    Top = 207
  end
  object cdsIncompativel: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOpcionalsqldtsIncompativel
    Params = <>
    AfterPost = cdsComposicaoAfterPost
    AfterDelete = cdsComposicaoAfterDelete
    OnNewRecord = cdsIncompativelNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 76
    Top = 249
    object cdsIncompativelMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsIncompativelMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsIncompativelMODELOINCOMPATIVELID: TStringField
      FieldName = 'MODELOINCOMPATIVELID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsIncompativelMODELOINCOMPATIVELIDValidate
      Size = 40
    end
    object cdsIncompativelL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsIncompativelL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsIncompativelL_COMENTARIO: TStringField
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsIncompativelL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsIncompativelL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsIncompativelEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsIncompativelPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsIncompativelL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object cdsIncompativelL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsIncompativelL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object cdsIncompativelQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsIncompativelVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object cdsIncompativelVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object cdsIncompativelVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object cdsIncompativelVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object cdsIncompativelVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object cdsIncompativelVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object cdsIncompativelUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsIncompativel: TDataSource
    AutoEdit = False
    DataSet = cdsIncompativel
    Left = 164
    Top = 249
  end
  object cdsOrigemVenda: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOrigemVenda'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsOrigemVendaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    object cdsOrigemVendaORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOrigemVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsOrigemVendaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOrigemVenda: TDataSource
    AutoEdit = False
    DataSet = cdsOrigemVenda
    Left = 513
  end
  object cdsTipoVenda: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoVenda'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsTipoVendaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 41
    object cdsTipoVendaTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoVendaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsTipoVenda: TDataSource
    AutoEdit = False
    DataSet = cdsTipoVenda
    Left = 513
    Top = 41
  end
  object cdsClasseVendedor: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvClasseVendedor'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsClasseVendedorNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 82
    object cdsClasseVendedorCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsClasseVendedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsClasseVendedorEXIBIRNIVELVENDA: TBCDField
      FieldName = 'EXIBIRNIVELVENDA'
      Precision = 1
      Size = 0
    end
    object cdsClasseVendedorNIVELVENDEDORID: TBCDField
      FieldName = 'NIVELVENDEDORID'
      Precision = 1
      Size = 0
    end
    object cdsClasseVendedorUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsClasseVendedorsqldtsClasseVendaRegiao: TDataSetField
      FieldName = 'sqldtsClasseVendaRegiao'
    end
    object cdsClasseVendedorsqldtsClasseVendTipoVenda: TDataSetField
      FieldName = 'sqldtsClasseVendTipoVenda'
    end
  end
  object dsClasseVendedor: TDataSource
    AutoEdit = False
    DataSet = cdsClasseVendedor
    Left = 513
    Top = 82
  end
  object cdsClasseVendTipoVenda: TClientDataSet
    Aggregates = <>
    DataSetField = cdsClasseVendedorsqldtsClasseVendTipoVenda
    Params = <>
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 124
    object cdsClasseVendTipoVendaCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsClasseVendTipoVendaTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsClasseVendTipoVendaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 14
      Size = 2
    end
    object cdsClasseVendTipoVendaL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      Size = 100
    end
    object cdsClasseVendTipoVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsClasseVendTipoVenda: TDataSource
    AutoEdit = False
    DataSet = cdsClasseVendTipoVenda
    Left = 513
    Top = 124
  end
  object cdsClasseVendRegiao: TClientDataSet
    Aggregates = <>
    Params = <>
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 165
    object cdsClasseVendRegiaoCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsClasseVendRegiaoCEPID: TBCDField
      FieldName = 'CEPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsClasseVendRegiaoL_NOMECIDADE: TStringField
      FieldName = 'L_NOMECIDADE'
      ProviderFlags = []
      Size = 72
    end
    object cdsClasseVendRegiaoL_BAIRROCEP: TBCDField
      FieldName = 'L_BAIRROCEP'
      ProviderFlags = []
      Precision = 5
      Size = 0
    end
    object cdsClasseVendRegiaoL_NOMEBAIRRO: TStringField
      FieldName = 'L_NOMEBAIRRO'
      ProviderFlags = []
      Size = 72
    end
    object cdsClasseVendRegiaoL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object cdsClasseVendRegiaoL_SIGLAPAISID: TStringField
      FieldName = 'L_SIGLAPAISID'
      ProviderFlags = []
      Size = 2
    end
    object cdsClasseVendRegiaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsClasseVendRegiao: TDataSource
    AutoEdit = False
    DataSet = cdsClasseVendRegiao
    Left = 513
    Top = 165
  end
  object cdsTabFinanceira: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvTabFinanceira'
    RemoteServer = shdcnnPP
    OnReconcileError = cdsCatalogoReconcileError
    Left = 627
    Top = 439
    object cdsTabFinanceiraTABFINANCEIRAID: TBCDField
      FieldName = 'TABFINANCEIRAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTabFinanceiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTabFinanceiraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsTabFinanceira: TDataSource
    AutoEdit = False
    DataSet = cdsTabFinanceira
    Left = 745
    Top = 439
  end
  object cdsPedVend: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPedVend'
    RemoteServer = shdcnnPP
    AfterEdit = cdsPedVendAfterEdit
    BeforePost = cdsPedVendBeforePost
    AfterPost = cdsPedVendAfterPost
    BeforeDelete = cdsPedVendBeforeDelete
    AfterDelete = cdsPedVendAfterDelete
    OnNewRecord = cdsPedVendNewRecord
    OnReconcileError = cdsPedVendReconcileError
    Left = 427
    Top = 253
    object cdsPedVendPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsPedVendORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      OnValidate = cdsPedVendORIGEMVENDAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DESCR_ORIGEMVENDA: TStringField
      FieldName = 'L_DESCR_ORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      OnValidate = cdsPedVendCLIENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsPedVendL_INSCRESTADUAL: TStringField
      FieldName = 'L_INSCRESTADUAL'
      ProviderFlags = []
    end
    object cdsPedVendDATACHEGADA: TSQLTimeStampField
      FieldName = 'DATACHEGADA'
    end
    object cdsPedVendPEDVENDREFID: TStringField
      FieldName = 'PEDVENDREFID'
      Size = 9
    end
    object cdsPedVendPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      Precision = 8
      Size = 0
    end
    object cdsPedVendNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
    end
    object cdsPedVendCONTRATOID: TStringField
      FieldName = 'CONTRATOID'
      Size = 25
    end
    object cdsPedVendPROPPEDVENDEDORID: TStringField
      FieldName = 'PROPPEDVENDEDORID'
      Size = 25
    end
    object cdsPedVendTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      OnValidate = cdsPedVendTIPOVENDAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsPedVendEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_NOMEEMPRESA: TStringField
      FieldName = 'L_NOMEEMPRESA'
      ProviderFlags = []
      Size = 60
    end
    object cdsPedVendCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object cdsPedVendPAGAMENTOCOMISSAO: TBCDField
      FieldName = 'PAGAMENTOCOMISSAO'
      Precision = 1
      Size = 0
    end
    object cdsPedVendDESTINATARIOID: TBCDField
      FieldName = 'DESTINATARIOID'
      OnValidate = cdsPedVendDESTINATARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_NOMEDESTINATARIO: TStringField
      FieldName = 'L_NOMEDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendL_CPFCNPJDESTINATARIO: TStringField
      FieldName = 'L_CPFCNPJDESTINATARIO'
      ProviderFlags = []
      Size = 18
    end
    object cdsPedVendCEPORIGID: TBCDField
      FieldName = 'CEPORIGID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPedVendNUMEROORIG: TStringField
      FieldName = 'NUMEROORIG'
    end
    object cdsPedVendCOMPLEMENTOORIG: TStringField
      FieldName = 'COMPLEMENTOORIG'
    end
    object cdsPedVendENDERECOORIG: TStringField
      FieldName = 'ENDERECOORIG'
      Size = 100
    end
    object cdsPedVendBAIRROORIG: TStringField
      FieldName = 'BAIRROORIG'
      Size = 72
    end
    object cdsPedVendCIDADEORIG: TStringField
      FieldName = 'CIDADEORIG'
      Size = 72
    end
    object cdsPedVendSIGLAUFORIGID: TStringField
      FieldName = 'SIGLAUFORIGID'
      Size = 2
    end
    object cdsPedVendPAISORIG: TStringField
      FieldName = 'PAISORIG'
      Size = 72
    end
    object cdsPedVendTELEFONEORIG: TStringField
      FieldName = 'TELEFONEORIG'
      Size = 70
    end
    object cdsPedVendCONTATOORIG: TStringField
      FieldName = 'CONTATOORIG'
      Size = 40
    end
    object cdsPedVendLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      OnValidate = cdsPedVendLIBCHEFIAValidate
      Precision = 1
      Size = 0
    end
    object cdsPedVendLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsPedVendLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsPedVendCONDPAGTOPROPID: TBCDField
      FieldName = 'CONDPAGTOPROPID'
      OnValidate = cdsPedVendCONDPAGTOPROPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DESCR_FOB: TStringField
      FieldName = 'L_DESCR_FOB'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCONDINTERVID: TBCDField
      FieldName = 'CONDINTERVID'
      OnValidate = cdsPedVendCONDINTERVIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DESCR_INTERV: TStringField
      FieldName = 'L_DESCR_INTERV'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendDESCRICAOINTERV: TStringField
      FieldName = 'DESCRICAOINTERV'
      Size = 100
    end
    object cdsPedVendVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCONDEMPRSUPLID: TBCDField
      FieldName = 'CONDEMPRSUPLID'
      OnValidate = cdsPedVendCONDEMPRSUPLIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DESCR_SUPL: TStringField
      FieldName = 'L_DESCR_SUPL'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendVLREMPRSUPLEMENTAR: TBCDField
      FieldName = 'VLREMPRSUPLEMENTAR'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendBONIFICACAO: TMemoField
      FieldName = 'BONIFICACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPedVendVLRBONIFICACAO: TBCDField
      FieldName = 'VLRBONIFICACAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPedVendTIPODESPESA: TStringField
      FieldName = 'TIPODESPESA'
      Size = 1
    end
    object cdsPedVendVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendPORCDESPESA: TFMTBCDField
      FieldName = 'PORCDESPESA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsPedVendPORCVENDA: TFMTBCDField
      FieldName = 'PORCVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsPedVendPORCFOB: TFMTBCDField
      FieldName = 'PORCFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsPedVendNOMEAPARELHOINTERV: TStringField
      FieldName = 'NOMEAPARELHOINTERV'
      Size = 100
    end
    object cdsPedVendVLRAPARELHOINTERV: TBCDField
      FieldName = 'VLRAPARELHOINTERV'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendVLRFRETEINTERNACIONAL: TBCDField
      FieldName = 'VLRFRETEINTERNACIONAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      OnValidate = cdsPedVendCONDPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DESCRICAOCONDPAGTO: TStringField
      FieldName = 'L_DESCRICAOCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsPedVendNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object cdsPedVendL_DESCRICAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object cdsPedVendDATAPEDIDOPDSID: TSQLTimeStampField
      FieldName = 'DATAPEDIDOPDSID'
    end
    object cdsPedVendL_NFSID: TBCDField
      FieldName = 'L_NFSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPedVendL_DATAEMISSAOID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAOID'
      ProviderFlags = []
    end
    object cdsPedVendVLRTOTALINTERVCRED: TBCDField
      FieldName = 'VLRTOTALINTERVCRED'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendVLRTOTALINTERVDEB: TBCDField
      FieldName = 'VLRTOTALINTERVDEB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendVLRTOTALVENDA: TBCDField
      FieldName = 'VLRTOTALVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendVLRTOTALGERAL: TBCDField
      FieldName = 'VLRTOTALGERAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPedVendsqldtsPedVendInterv: TDataSetField
      FieldName = 'sqldtsPedVendInterv'
    end
    object cdsPedVendsqldtsPedVendBonif: TDataSetField
      FieldName = 'sqldtsPedVendBonif'
    end
    object cdsPedVendsqldtsPedVendVend: TDataSetField
      FieldName = 'sqldtsPedVendVend'
    end
    object cdsPedVendsqldtsPedVendItem: TDataSetField
      FieldName = 'sqldtsPedVendItem'
    end
    object cdsPedVendsqldtsPedVendServ: TDataSetField
      FieldName = 'sqldtsPedVendServ'
    end
  end
  object dsPedVend: TDataSource
    AutoEdit = False
    DataSet = cdsPedVend
    Left = 513
    Top = 253
  end
  object cdsPedVendItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedVendsqldtsPedVendItem
    Params = <>
    BeforeInsert = cdsPedVendItemBeforeInsert
    BeforeEdit = cdsPedVendItemBeforeEdit
    BeforePost = cdsPedVendItemBeforePost
    AfterPost = cdsPedVendItemAfterPost
    BeforeDelete = cdsPedVendItemBeforeDelete
    AfterDelete = cdsPedVendItemAfterDelete
    OnNewRecord = cdsPedVendItemNewRecord
    Left = 426
    Top = 297
    object cdsPedVendItemPEDVENDID: TStringField
      Tag = 1
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsPedVendItemMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsPedVendItemVOLTAGEM: TStringField
      FieldName = 'VOLTAGEM'
      Size = 3
    end
    object cdsPedVendItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnValidate = cdsPedVendItemQUANTIDADEValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemVLRFOBREVENDA: TBCDField
      FieldName = 'VLRFOBREVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemVLRCOMISSAO: TBCDField
      FieldName = 'VLRCOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsPedVendItemPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendItemL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsPedVendItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsPedVendItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      OnValidate = cdsPedVendItemVLRPRECOUNITARIOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemNXID: TStringField
      FieldName = 'NXID'
      Size = 6
    end
    object cdsPedVendItemINVOICEID: TStringField
      FieldName = 'INVOICEID'
      Size = 30
    end
    object cdsPedVendItemCEPINSTID: TBCDField
      FieldName = 'CEPINSTID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemNUMEROINST: TStringField
      FieldName = 'NUMEROINST'
    end
    object cdsPedVendItemCOMPLEMENTOINST: TStringField
      FieldName = 'COMPLEMENTOINST'
    end
    object cdsPedVendItemENDERECOINST: TStringField
      FieldName = 'ENDERECOINST'
      Size = 100
    end
    object cdsPedVendItemBAIRROINST: TStringField
      FieldName = 'BAIRROINST'
      Size = 72
    end
    object cdsPedVendItemCIDADEINST: TStringField
      FieldName = 'CIDADEINST'
      Size = 72
    end
    object cdsPedVendItemSIGLAUFINSTID: TStringField
      FieldName = 'SIGLAUFINSTID'
      Size = 2
    end
    object cdsPedVendItemTELEFONEINST: TStringField
      FieldName = 'TELEFONEINST'
      Size = 70
    end
    object cdsPedVendItemCONTATOINST: TStringField
      FieldName = 'CONTATOINST'
      Size = 100
    end
    object cdsPedVendItemEMBJAPAOID: TStringField
      FieldName = 'EMBJAPAOID'
      Size = 30
    end
    object cdsPedVendItemLIDISPENSA: TBCDField
      FieldName = 'LIDISPENSA'
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemLIDATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'LIDATATRANSMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemLIDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'LIDATAAPROVACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemLINUMERO: TStringField
      FieldName = 'LINUMERO'
      Size = 12
    end
    object cdsPedVendItemLIDATAVALIDADE: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemLIVLRCOMISSAO: TBCDField
      FieldName = 'LIVLRCOMISSAO'
      Precision = 14
      Size = 2
    end
    object cdsPedVendItemLIADITIVO1: TStringField
      FieldName = 'LIADITIVO1'
      Size = 12
    end
    object cdsPedVendItemLIDATAVALIDADE1: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE1'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemLIADITIVO2: TStringField
      FieldName = 'LIADITIVO2'
      Size = 12
    end
    object cdsPedVendItemLIDATAVALIDADE2: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE2'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemLIADITIVO3: TStringField
      FieldName = 'LIADITIVO3'
      Size = 12
    end
    object cdsPedVendItemLIDATAVALIDADE3: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE3'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemLIADITIVO4: TStringField
      FieldName = 'LIADITIVO4'
      Size = 12
    end
    object cdsPedVendItemLIDATAVALIDADE4: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE4'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemRTINVOICEID: TStringField
      FieldName = 'RTINVOICEID'
      Size = 12
    end
    object cdsPedVendItemRTCLIENTEID: TBCDField
      FieldName = 'RTCLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemRTOBSERVACAO: TMemoField
      FieldName = 'RTOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPedVendItemRTCABOK7: TStringField
      FieldName = 'RTCABOK7'
      Size = 40
    end
    object cdsPedVendItemRTCABOVIDEOPRINTER: TStringField
      FieldName = 'RTCABOVIDEOPRINTER'
      Size = 40
    end
    object cdsPedVendItemRTCABOMONITORAUXILIAR: TStringField
      FieldName = 'RTCABOMONITORAUXILIAR'
      Size = 40
    end
    object cdsPedVendItemRTMULTIFORMATO: TStringField
      FieldName = 'RTMULTIFORMATO'
      Size = 40
    end
    object cdsPedVendItemRTESTABILIZADOR: TStringField
      FieldName = 'RTESTABILIZADOR'
      Size = 40
    end
    object cdsPedVendItemRTDATASAIDA: TSQLTimeStampField
      FieldName = 'RTDATASAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemRTTRANSPORTADORID: TBCDField
      FieldName = 'RTTRANSPORTADORID'
      OnValidate = cdsPedVendItemRTTRANSPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendItemL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendItemRTOSID: TStringField
      FieldName = 'RTOSID'
      Size = 13
    end
    object cdsPedVendItemRTIMPRESSO: TBCDField
      FieldName = 'RTIMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsPedVendItemRTDATAPREVCHEGADA: TSQLTimeStampField
      FieldName = 'RTDATAPREVCHEGADA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemRTUSUARIO: TStringField
      FieldName = 'RTUSUARIO'
    end
    object cdsPedVendItemRTLIBERADO: TBCDField
      FieldName = 'RTLIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsPedVendItemRTDATAEMBARQUE: TSQLTimeStampField
      FieldName = 'RTDATAEMBARQUE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedVendItemUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsPedVendItemsqldtsPedVendComp: TDataSetField
      FieldName = 'sqldtsPedVendComp'
    end
  end
  object dsPedVendItem: TDataSource
    AutoEdit = False
    DataSet = cdsPedVendItem
    Left = 513
    Top = 297
  end
  object cdsPedVendVend: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedVendsqldtsPedVendVend
    Params = <>
    BeforeInsert = cdsPedVendVendBeforeInsert
    BeforeEdit = cdsPedVendVendBeforeEdit
    AfterPost = cdsPedVendVendAfterPost
    BeforeDelete = cdsPedVendVendBeforeDelete
    AfterDelete = cdsPedVendVendAfterDelete
    OnNewRecord = cdsPedVendVendNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 426
    object cdsPedVendVendPEDVENDID: TStringField
      Tag = 1
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendVendITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendVendVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      OnValidate = cdsPedVendVendVENDEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendVendL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendVendCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      OnValidate = cdsPedVendVendCLASSEVENDEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendVendL_DESCR_CLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCR_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendVendPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 14
      Size = 6
    end
    object cdsPedVendVendUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPedVendVend: TDataSource
    AutoEdit = False
    DataSet = cdsPedVendVend
    Left = 513
    Top = 428
  end
  object cdsPedVendBonif: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedVendsqldtsPedVendBonif
    Params = <>
    BeforeEdit = cdsPedVendBonifBeforeEdit
    AfterPost = cdsPedVendBonifAfterPost
    BeforeDelete = cdsPedVendBonifBeforeDelete
    AfterDelete = cdsPedVendBonifAfterDelete
    OnNewRecord = cdsPedVendBonifNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 470
    object cdsPedVendBonifPEDVENDID: TStringField
      Tag = 1
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendBonifITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendBonifBONIFICACAOID: TBCDField
      FieldName = 'BONIFICACAOID'
      OnValidate = cdsPedVendBonifBONIFICACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendBonifL_DESCR_BONIFICACAO: TStringField
      FieldName = 'L_DESCR_BONIFICACAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendBonifDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsPedVendBonifVLRBONIFICACAO: TBCDField
      FieldName = 'VLRBONIFICACAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendBonifUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPedVendBonif: TDataSource
    AutoEdit = False
    DataSet = cdsPedVendBonif
    Left = 513
    Top = 472
  end
  object cdsPedVendInterv: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedVendsqldtsPedVendInterv
    Params = <>
    BeforeEdit = cdsPedVendIntervBeforeEdit
    AfterPost = cdsPedVendIntervAfterPost
    BeforeDelete = cdsPedVendIntervBeforeDelete
    AfterDelete = cdsPedVendIntervAfterDelete
    OnNewRecord = cdsPedVendIntervNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 427
    Top = 514
    object cdsPedVendIntervPEDVENDID: TStringField
      Tag = 1
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendIntervITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendIntervCONDINTERVID: TBCDField
      FieldName = 'CONDINTERVID'
      OnValidate = cdsPedVendIntervCONDINTERVIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendIntervL_DESCRICAOPAGTO: TStringField
      FieldName = 'L_DESCRICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendIntervL_DEDUZIRCOMISSAO: TBCDField
      FieldName = 'L_DEDUZIRCOMISSAO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsPedVendIntervDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsPedVendIntervVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendIntervUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPedVendInterv: TDataSource
    AutoEdit = False
    DataSet = cdsPedVendInterv
    Left = 513
    Top = 516
  end
  object cdsHistFechComissao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvHistFechComissao'
    RemoteServer = shdcnnPP
    AfterPost = cdsHistFechComissaoAfterPost
    AfterDelete = cdsHistFechComissaoAfterDelete
    OnNewRecord = cdsHistFechComissaoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    object cdsHistFechComissaoANOMESID: TStringField
      FieldName = 'ANOMESID'
      Required = True
      Size = 6
    end
    object cdsHistFechComissaoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object cdsHistFechComissaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsHistFechComissao: TDataSource
    AutoEdit = False
    DataSet = cdsHistFechComissao
    Left = 744
  end
  object cdsAnaliseVenda: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvAnaliseVenda'
    RemoteServer = shdcnnPP
    AfterPost = cdsAnaliseVendaAfterPost
    AfterDelete = cdsAnaliseVendaAfterDelete
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 41
    object cdsAnaliseVendaPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsAnaliseVendaL_DATAPEDIDO: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDO'
      ProviderFlags = []
    end
    object cdsAnaliseVendaL_ORIGEMVENDAID: TBCDField
      FieldName = 'L_ORIGEMVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaL_DECRICAOORIGEMVENDA: TStringField
      FieldName = 'L_DECRICAOORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsAnaliseVendaL_TIPOVENDAID: TBCDField
      FieldName = 'L_TIPOVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsAnaliseVendaL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsAnaliseVendaL_SIGLAUFORGID: TStringField
      FieldName = 'L_SIGLAUFORGID'
      ProviderFlags = []
      Size = 2
    end
    object cdsAnaliseVendaL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      ProviderFlags = []
      Size = 72
    end
    object cdsAnaliseVendaL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsAnaliseVendaL_FISICAJURIDICA: TStringField
      FieldName = 'L_FISICAJURIDICA'
      ProviderFlags = []
      Size = 1
    end
    object cdsAnaliseVendaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object cdsAnaliseVendaDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object cdsAnaliseVendaVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAnaliseVendaVLRVENDA: TBCDField
      FieldName = 'VLRVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAnaliseVendaVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAnaliseVendaVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAnaliseVendaVLRCOMISSAO: TBCDField
      FieldName = 'VLRCOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAnaliseVendaVLRCOMISSAOUS: TBCDField
      FieldName = 'VLRCOMISSAOUS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAnaliseVendaLIBPAGTOFIN: TBCDField
      FieldName = 'LIBPAGTOFIN'
      Precision = 1
      Size = 0
    end
    object cdsAnaliseVendaSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object cdsAnaliseVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsAnaliseVendasqldtsAnaliseVendaVend: TDataSetField
      FieldName = 'sqldtsAnaliseVendaVend'
    end
    object cdsAnaliseVendasqldtsAnaliseVendaItem: TDataSetField
      FieldName = 'sqldtsAnaliseVendaItem'
    end
  end
  object dsAnaliseVenda: TDataSource
    AutoEdit = False
    DataSet = cdsAnaliseVenda
    Left = 744
    Top = 41
  end
  object cdsAnaliseVendaItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAnaliseVendasqldtsAnaliseVendaItem
    Params = <>
    Left = 624
    Top = 83
    object cdsAnaliseVendaItemPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsAnaliseVendaItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaItemL_PARTNUMBER: TStringField
      FieldName = 'L_PARTNUMBER'
      ProviderFlags = []
    end
    object cdsAnaliseVendaItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsAnaliseVendaItemL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaItemL_SIGLAGRUPO_PRODUTO: TStringField
      FieldName = 'L_SIGLAGRUPO_PRODUTO'
      Size = 50
    end
    object cdsAnaliseVendaItemL_TIPO: TStringField
      FieldName = 'L_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object cdsAnaliseVendaItemMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsAnaliseVendaItemL_GRUPO_IMP: TBCDField
      FieldName = 'L_GRUPO_IMP'
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaItemL_SIGLAGRUPO_CATALOGO: TStringField
      FieldName = 'L_SIGLAGRUPO_CATALOGO'
      Size = 50
    end
    object cdsAnaliseVendaItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAnaliseVendaItem: TDataSource
    AutoEdit = False
    DataSet = cdsAnaliseVendaItem
    Left = 744
    Top = 83
  end
  object cdsBasePagto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvBasePagto'
    RemoteServer = shdcnnPP
    AfterPost = cdsBasePagtoAfterPost
    AfterDelete = cdsBasePagtoAfterDelete
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 164
    object cdsBasePagtoVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_APELIDOVENDEDOR: TStringField
      FieldName = 'L_APELIDOVENDEDOR'
      Size = 50
    end
    object cdsBasePagtoL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      Required = True
      Size = 9
    end
    object cdsBasePagtoITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_DATAPEDIDO: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDO'
    end
    object cdsBasePagtoL_ORIGEMVENDAID: TBCDField
      FieldName = 'L_ORIGEMVENDAID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
    end
    object cdsBasePagtoL_EMPRESAID: TBCDField
      FieldName = 'L_EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_NFSID: TBCDField
      FieldName = 'L_NFSID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_DATAEMISSAOID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAOID'
    end
    object cdsBasePagtoL_DECRICAOORIGEMVENDA: TStringField
      FieldName = 'L_DECRICAOORIGEMVENDA'
      Size = 100
    end
    object cdsBasePagtoL_TIPOVENDAID: TBCDField
      FieldName = 'L_TIPOVENDAID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      Size = 100
    end
    object cdsBasePagtoL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_NOME: TStringField
      FieldName = 'L_NOME'
      Size = 100
    end
    object cdsBasePagtoL_SIGLAUFORGID: TStringField
      FieldName = 'L_SIGLAUFORGID'
      Size = 2
    end
    object cdsBasePagtoL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      Size = 72
    end
    object cdsBasePagtoL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      Size = 18
    end
    object cdsBasePagtoL_FISICAJURIDICA: TStringField
      FieldName = 'L_FISICAJURIDICA'
      Size = 1
    end
    object cdsBasePagtoDATACONVFOB: TSQLTimeStampField
      FieldName = 'DATACONVFOB'
      OnValidate = cdsBasePagtoDATACONVFOBValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBasePagtoL_DOLAROFICIALC: TFMTBCDField
      FieldName = 'L_DOLAROFICIALC'
      Precision = 14
    end
    object cdsBasePagtoDATALIBPAGTOFIN: TSQLTimeStampField
      FieldName = 'DATALIBPAGTOFIN'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBasePagtoDATAPAGTOCOM: TSQLTimeStampField
      FieldName = 'DATAPAGTOCOM'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBasePagtoCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object cdsBasePagtoL_CLASSEVENDEDOR: TStringField
      FieldName = 'L_CLASSEVENDEDOR'
      Size = 100
    end
    object cdsBasePagtoNIVELVENDA: TStringField
      FieldName = 'NIVELVENDA'
      Size = 1
    end
    object cdsBasePagtoVLRCOMISSAO: TBCDField
      FieldName = 'VLRCOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoPORCVENDA: TFMTBCDField
      FieldName = 'PORCVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsBasePagtoVLRBASECOMISSAO: TBCDField
      FieldName = 'VLRBASECOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoVLRBASECOMISSAOUS: TBCDField
      FieldName = 'VLRBASECOMISSAOUS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoVLRDSR: TBCDField
      FieldName = 'VLRDSR'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      DisplayFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoL_VLRFOB: TBCDField
      FieldName = 'L_VLRFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoL_VLRVENDA: TBCDField
      FieldName = 'L_VLRVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoL_VLRINTERVENIENCIA: TBCDField
      FieldName = 'L_VLRINTERVENIENCIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoL_VLRIPI: TBCDField
      FieldName = 'L_VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsBasePagtoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsBasePagtoUSUARIOPAGTO: TStringField
      Tag = 1
      FieldName = 'USUARIOPAGTO'
    end
    object cdsBasePagtoDATAUSUARIOPAGTO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAUSUARIOPAGTO'
    end
    object cdsBasePagtoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsBasePagto: TDataSource
    AutoEdit = False
    DataSet = cdsBasePagto
    Left = 744
    Top = 164
  end
  object cdsProcessoImp: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvProcessoImp'
    RemoteServer = shdcnnPP
    AfterEdit = cdsProcessoImpAfterEdit
    BeforePost = cdsProcessoImpBeforePost
    AfterPost = cdsProcessoImpAfterPost
    AfterDelete = cdsProcessoImpAfterDelete
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 208
    object cdsProcessoImpPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsProcessoImpDATAPROCESSO: TSQLTimeStampField
      FieldName = 'DATAPROCESSO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpDATAPDI: TSQLTimeStampField
      FieldName = 'DATAPDI'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsProcessoImpL_FISICAJURIDICA: TStringField
      FieldName = 'L_FISICAJURIDICA'
      ProviderFlags = []
      Size = 1
    end
    object cdsProcessoImpL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoImpL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object cdsProcessoImpL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object cdsProcessoImpOBSERVACAOVENDA: TMemoField
      FieldName = 'OBSERVACAOVENDA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpOBSERVACAOPROCESSO: TMemoField
      FieldName = 'OBSERVACAOPROCESSO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpSOLICESQUEMA: TBCDField
      FieldName = 'SOLICESQUEMA'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpSOLICNOTAPROMISSORIA: TBCDField
      FieldName = 'SOLICNOTAPROMISSORIA'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpEMBDATAPREVISAO: TSQLTimeStampField
      FieldName = 'EMBDATAPREVISAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATA: TSQLTimeStampField
      FieldName = 'EMBDATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATABL: TSQLTimeStampField
      FieldName = 'EMBDATABL'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBNUMCONHEC: TStringField
      FieldName = 'EMBNUMCONHEC'
      Size = 15
    end
    object cdsProcessoImpEMBPESOLIQUIDO: TBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBNOMENAVIO: TStringField
      FieldName = 'EMBNOMENAVIO'
      Size = 60
    end
    object cdsProcessoImpEMBPESOBRUTO: TBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBSINALFOB: TBCDField
      FieldName = 'EMBSINALFOB'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBDATAPAGTOSINAL: TSQLTimeStampField
      FieldName = 'EMBDATAPAGTOSINAL'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBFOBAVISTA: TBCDField
      FieldName = 'EMBFOBAVISTA'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBDATAPAGTOFOBV: TSQLTimeStampField
      FieldName = 'EMBDATAPAGTOFOBV'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATASOLSEGINT: TSQLTimeStampField
      FieldName = 'EMBDATASOLSEGINT'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATAAPOLICE: TSQLTimeStampField
      FieldName = 'EMBDATAAPOLICE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATAPAGTOSEGINT: TSQLTimeStampField
      FieldName = 'EMBDATAPAGTOSEGINT'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBSEGINT: TBCDField
      FieldName = 'EMBSEGINT'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBDESPACHANTE: TStringField
      FieldName = 'EMBDESPACHANTE'
      Size = 15
    end
    object cdsProcessoImpEMBVLRDESEMBARACO: TBCDField
      FieldName = 'EMBVLRDESEMBARACO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBVLRFRETEINTERNAC: TBCDField
      FieldName = 'EMBVLRFRETEINTERNAC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBVLRFRETEINTERNO: TBCDField
      FieldName = 'EMBVLRFRETEINTERNO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpEMBDATACHEGAPAR: TSQLTimeStampField
      FieldName = 'EMBDATACHEGAPAR'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATALIBALFANDEGA: TSQLTimeStampField
      FieldName = 'EMBDATALIBALFANDEGA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATALIBTMB: TSQLTimeStampField
      FieldName = 'EMBDATALIBTMB'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATAENTREGACLI: TSQLTimeStampField
      FieldName = 'EMBDATAENTREGACLI'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBDATATERMOACEIT: TSQLTimeStampField
      FieldName = 'EMBDATATERMOACEIT'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBOBS: TMemoField
      FieldName = 'EMBOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpEMBDIID: TStringField
      FieldName = 'EMBDIID'
      Size = 12
    end
    object cdsProcessoImpEMBDATADI: TSQLTimeStampField
      FieldName = 'EMBDATADI'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEMBFATINVOICEID: TStringField
      FieldName = 'EMBFATINVOICEID'
      Size = 30
    end
    object cdsProcessoImpEMBJAPAOID: TStringField
      FieldName = 'EMBJAPAOID'
      Size = 30
    end
    object cdsProcessoImpEMBDATAFATURA: TSQLTimeStampField
      FieldName = 'EMBDATAFATURA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpROFRESPONSAVEL: TStringField
      FieldName = 'ROFRESPONSAVEL'
      Size = 1
    end
    object cdsProcessoImpROFDISPENSA: TBCDField
      FieldName = 'ROFDISPENSA'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpROFDATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'ROFDATATRANSMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpROFDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'ROFDATAAPROVACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpROFID: TStringField
      FieldName = 'ROFID'
      Size = 8
    end
    object cdsProcessoImpROFOBSEXIGENCIA: TMemoField
      FieldName = 'ROFOBSEXIGENCIA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpPPDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'PPDATASOLICITACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPPDATAENVIOCLIENTE: TSQLTimeStampField
      FieldName = 'PPDATAENVIOCLIENTE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPPDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'PPDATAAPROVACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPPOBS: TMemoField
      FieldName = 'PPOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpLIRESPONSAVEL: TStringField
      FieldName = 'LIRESPONSAVEL'
      Size = 1
    end
    object cdsProcessoImpLIOBSEXIGENCIA: TMemoField
      FieldName = 'LIOBSEXIGENCIA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpPODATATRANSMISSAOEMAIL: TSQLTimeStampField
      FieldName = 'PODATATRANSMISSAOEMAIL'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPONXID: TStringField
      FieldName = 'PONXID'
      Size = 6
    end
    object cdsProcessoImpPODATAENVIOFORM: TSQLTimeStampField
      FieldName = 'PODATAENVIOFORM'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPOTRANSMISSAO1: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO1'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPOTRANSMISSAO2: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO2'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPOTRANSMISSAO3: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO3'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPOTRANSMISSAO4: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO4'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPOTRANSMISSAO5: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO5'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPOTRANSMISSAO6: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO6'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpPONUMFATPROFORMA: TStringField
      FieldName = 'PONUMFATPROFORMA'
      Size = 30
    end
    object cdsProcessoImpPODATAFATPROFORMA: TSQLTimeStampField
      FieldName = 'PODATAFATPROFORMA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEPRESPONSAVEL: TStringField
      FieldName = 'EPRESPONSAVEL'
      Size = 1
    end
    object cdsProcessoImpEPDISPENSA: TBCDField
      FieldName = 'EPDISPENSA'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpEPDATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'EPDATATRANSMISSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEPDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'EPDATAAPROVACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpEPNUMERO: TStringField
      FieldName = 'EPNUMERO'
      Size = 10
    end
    object cdsProcessoImpEPOBS: TMemoField
      FieldName = 'EPOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpTIDATA: TSQLTimeStampField
      FieldName = 'TIDATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpTICLIENTEID: TBCDField
      FieldName = 'TICLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpTIOBS: TMemoField
      FieldName = 'TIOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpDOCDATARECDOC: TSQLTimeStampField
      FieldName = 'DOCDATARECDOC'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpDOCPEDCONFCONTRATO: TSQLTimeStampField
      FieldName = 'DOCPEDCONFCONTRATO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpDOCRECCONTRATO: TSQLTimeStampField
      FieldName = 'DOCRECCONTRATO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpDOCDATAREQUISICAOMI: TSQLTimeStampField
      FieldName = 'DOCDATAREQUISICAOMI'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpDOCOBS: TMemoField
      FieldName = 'DOCOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpDOCNUMCONTRATO: TStringField
      FieldName = 'DOCNUMCONTRATO'
      Size = 15
    end
    object cdsProcessoImpDOCDATACONTRATO: TSQLTimeStampField
      FieldName = 'DOCDATACONTRATO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpLCDISPENSA: TBCDField
      FieldName = 'LCDISPENSA'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpLCNUMERO: TStringField
      FieldName = 'LCNUMERO'
      Size = 15
    end
    object cdsProcessoImpLCDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'LCDATAEMISSAOID'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpLCDATAVALIDADE: TSQLTimeStampField
      FieldName = 'LCDATAVALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpLCULTDATAEMBARQUE: TSQLTimeStampField
      FieldName = 'LCULTDATAEMBARQUE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpLCBANCOEMISSOR: TStringField
      FieldName = 'LCBANCOEMISSOR'
    end
    object cdsProcessoImpLCPRACA: TBCDField
      FieldName = 'LCPRACA'
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpLCINSTITUICAO: TBCDField
      FieldName = 'LCINSTITUICAO'
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpCBDISPENSA: TBCDField
      FieldName = 'CBDISPENSA'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpCBNUMERO: TStringField
      FieldName = 'CBNUMERO'
      Size = 15
    end
    object cdsProcessoImpCBDATA: TSQLTimeStampField
      FieldName = 'CBDATA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object cdsProcessoImpDATACANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATACANCELAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsProcessoImpOBSCANCELADO: TMemoField
      FieldName = 'OBSCANCELADO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoImpUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsProcessoImpsqldtsProcessoImpParc: TDataSetField
      FieldName = 'sqldtsProcessoImpParc'
    end
  end
  object dsProcessoImp: TDataSource
    AutoEdit = False
    DataSet = cdsProcessoImp
    Left = 744
    Top = 206
  end
  object cdsProcessoImpParc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProcessoImpsqldtsProcessoImpParc
    Params = <>
    AfterOpen = cdsProcessoImpParcAfterOpen
    AfterDelete = cdsProcessoImpParcAfterDelete
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 248
    object cdsProcessoImpParcPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsProcessoImpParcPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpParcQTDPARCELAS: TBCDField
      FieldName = 'QTDPARCELAS'
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpParcDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsProcessoImpParcVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcLIBOR: TBCDField
      FieldName = 'LIBOR'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcSPREED: TBCDField
      FieldName = 'SPREED'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcVLRJUROS: TBCDField
      FieldName = 'VLRJUROS'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcPOSICAOJUROS: TStringField
      FieldName = 'POSICAOJUROS'
      Size = 1
    end
    object cdsProcessoImpParcVLRTOTAL: TBCDField
      FieldName = 'VLRTOTAL'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcJUROSMORA: TBCDField
      FieldName = 'JUROSMORA'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcDATAPAGAMENTO: TSQLTimeStampField
      FieldName = 'DATAPAGAMENTO'
    end
    object cdsProcessoImpParcMOTIVOATRASO: TStringField
      FieldName = 'MOTIVOATRASO'
      Size = 30
    end
    object cdsProcessoImpParcPRAZOPARCELA: TBCDField
      FieldName = 'PRAZOPARCELA'
      Precision = 8
      Size = 0
    end
    object cdsProcessoImpParcPAGTOPARCIAL: TBCDField
      FieldName = 'PAGTOPARCIAL'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object cdsProcessoImpParcUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsProcessoImpParc: TDataSource
    AutoEdit = False
    DataSet = cdsProcessoImpParc
    Left = 744
    Top = 248
  end
  object cdsPedVendComp: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedVendItemsqldtsPedVendComp
    Params = <>
    AfterPost = cdsPedVendCompAfterPost
    BeforeDelete = cdsPedVendCompBeforeDelete
    AfterDelete = cdsPedVendCompAfterDelete
    OnNewRecord = cdsPedVendCompNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 429
    Top = 340
    object cdsPedVendCompPEDVENDID: TStringField
      Tag = 1
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendCompITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendCompITEMCOMPID: TBCDField
      Tag = 1
      FieldName = 'ITEMCOMPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendCompSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsPedVendCompMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsPedVendCompL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsPedVendCompL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPedVendCompQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCompVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      OnValidate = cdsPedVendCompVLRUNITARIOFOBValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCompVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCompVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      OnValidate = cdsPedVendCompVLRUNITARIOREVENDAValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCompVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPedVendCompUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPedVendComp: TDataSource
    AutoEdit = False
    DataSet = cdsPedVendComp
    Left = 513
    Top = 340
  end
  object cdsAnaliseVendaVend: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAnaliseVendasqldtsAnaliseVendaVend
    Params = <>
    Left = 624
    Top = 124
    object cdsAnaliseVendaVendPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsAnaliseVendaVendITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaVendVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaVendL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsAnaliseVendaVendL_DESCR_CLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCR_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsAnaliseVendaVendCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object cdsAnaliseVendaVendPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 14
      Size = 6
    end
    object cdsAnaliseVendaVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAnaliseVendaVend: TDataSource
    AutoEdit = False
    DataSet = cdsAnaliseVendaVend
    Left = 744
    Top = 124
  end
  object cdsRecebComVenda: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvRecebComVenda'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsRecebComVendaNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 628
    Top = 497
    object cdsRecebComVendaENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsRecebComVendaENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsRecebComVendaL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsRecebComVendaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsRecebComVendaCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object cdsRecebComVendaL_CLASSEVENDEDOR: TStringField
      FieldName = 'L_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsRecebComVendaBLOQUEARCOMISSAO: TBCDField
      FieldName = 'BLOQUEARCOMISSAO'
      Precision = 1
      Size = 0
    end
    object cdsRecebComVendaVIGENCIA: TSQLTimeStampField
      FieldName = 'VIGENCIA'
    end
    object cdsRecebComVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsRecebComVenda: TDataSource
    AutoEdit = False
    DataSet = cdsRecebComVenda
    Left = 745
    Top = 496
  end
  object cdsAnaliseItem: TClientDataSet
    Aggregates = <>
    Params = <>
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 344
  end
  object dsAnaliseItem: TDataSource
    AutoEdit = False
    DataSet = cdsAnaliseItem
    Left = 744
    Top = 344
  end
  object cdsAnaliseParc: TClientDataSet
    Aggregates = <>
    Params = <>
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 388
  end
  object dsAnaliseParc: TDataSource
    AutoEdit = False
    DataSet = cdsAnaliseParc
    Left = 744
    Top = 388
  end
  object cdsNfsParcela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvNfsParcela'
    RemoteServer = shdcnnPP
    AfterPost = cdsNfsParcelaAfterPost
    AfterDelete = cdsNfsParcelaAfterDelete
    OnReconcileError = cdsCatalogoReconcileError
    Left = 624
    Top = 296
    object cdsNfsParcelaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaNFSID: TBCDField
      FieldName = 'NFSID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      Required = True
    end
    object cdsNfsParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsNfsParcelaDATAPAGTO: TSQLTimeStampField
      FieldName = 'DATAPAGTO'
    end
    object cdsNfsParcelaVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaDUPLICATAID: TBCDField
      FieldName = 'DUPLICATAID'
      Precision = 10
      Size = 0
    end
    object cdsNfsParcelaEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsNfsParcelaVLRBASECOMISSAO: TBCDField
      FieldName = 'VLRBASECOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaPAGTOVENDEDOR: TBCDField
      FieldName = 'PAGTOVENDEDOR'
      Precision = 1
      Size = 0
    end
    object cdsNfsParcelaL_PEDVENDID: TStringField
      FieldName = 'L_PEDVENDID'
      Size = 9
    end
    object cdsNfsParcelaL_VLRFOB: TBCDField
      FieldName = 'L_VLRFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaL_VLRVENDA: TBCDField
      FieldName = 'L_VLRVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaL_VLRINTERVENIENCIA: TBCDField
      FieldName = 'L_VLRINTERVENIENCIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaL_VLRIPI: TBCDField
      FieldName = 'L_VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaL_VLRCOMISSAO: TBCDField
      FieldName = 'L_VLRCOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaL_VLRCOMISSAOUS: TBCDField
      FieldName = 'L_VLRCOMISSAOUS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsParcelaL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      Size = 72
    end
    object cdsNfsParcelaL_SIGLAUFORIGID: TStringField
      FieldName = 'L_SIGLAUFORIGID'
      Size = 2
    end
    object cdsNfsParcelaL_NOME: TStringField
      FieldName = 'L_NOME'
      Size = 100
    end
    object cdsNfsParcelaCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object cdsNfsParcelaOBSCANCELAMENTO: TMemoField
      FieldName = 'OBSCANCELAMENTO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfsParcela: TDataSource
    AutoEdit = False
    DataSet = cdsNfsParcela
    Left = 744
    Top = 296
  end
  object cdsPerComRepr: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPerComRepr'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsPerComReprNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 72
    Top = 514
    object cdsPerComReprGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      OnValidate = cdsPerComReprGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPerComReprL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPerComReprL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPerComReprORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsPerComReprL_ORIGEMVENDA: TStringField
      FieldName = 'L_ORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPerComReprTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsPerComReprL_TIPOVENDA: TStringField
      FieldName = 'L_TIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPerComReprVLRPERCENTUAL: TFMTBCDField
      FieldName = 'VLRPERCENTUAL'
      Precision = 14
      Size = 6
    end
    object cdsPerComReprVLRIRRF: TFMTBCDField
      FieldName = 'VLRIRRF'
      Precision = 14
      Size = 6
    end
    object cdsPerComReprUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPerComRepr: TDataSource
    AutoEdit = False
    DataSet = cdsPerComRepr
    Left = 168
    Top = 514
  end
  object cdsVendedorResponsavel: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvVendedorResponsavel'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsVendedorResponsavelNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 627
    Top = 544
    object cdsVendedorResponsavelVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      OnValidate = cdsVendedorResponsavelVENDEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsVendedorResponsavelL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      Size = 100
    end
    object cdsVendedorResponsavelRESPONSAVELID: TBCDField
      FieldName = 'RESPONSAVELID'
      OnValidate = cdsVendedorResponsavelRESPONSAVELIDValidate
      Precision = 8
      Size = 0
    end
    object cdsVendedorResponsavelL_NOMERESPONSAVEL: TStringField
      FieldName = 'L_NOMERESPONSAVEL'
      Size = 100
    end
    object cdsVendedorResponsavelUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
  end
  object dsVendedorResponsavel: TDataSource
    AutoEdit = False
    DataSet = cdsVendedorResponsavel
    Left = 744
    Top = 544
  end
  object cdsClasseNivel: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvClasseNivel'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsClasseNivelNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 424
    Top = 208
    object cdsClasseNivelCLASSENIVELID: TBCDField
      FieldName = 'CLASSENIVELID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsClasseNivelCLASSEVENDEDOR1ID: TBCDField
      FieldName = 'CLASSEVENDEDOR1ID'
      OnValidate = cdsClasseNivelCLASSEVENDEDOR1IDValidate
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR1: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR1'
      Size = 100
    end
    object cdsClasseNivelNIVELVENDA1: TStringField
      FieldName = 'NIVELVENDA1'
      Size = 1
    end
    object cdsClasseNivelPERCENTUAL1: TFMTBCDField
      FieldName = 'PERCENTUAL1'
      Precision = 20
    end
    object cdsClasseNivelCLASSEVENDEDOR2ID: TBCDField
      FieldName = 'CLASSEVENDEDOR2ID'
      OnValidate = cdsClasseNivelCLASSEVENDEDOR1IDValidate
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR2: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR2'
      Size = 100
    end
    object cdsClasseNivelNIVELVENDA2: TStringField
      FieldName = 'NIVELVENDA2'
      Size = 1
    end
    object cdsClasseNivelPERCENTUAL2: TFMTBCDField
      FieldName = 'PERCENTUAL2'
      Precision = 20
    end
    object cdsClasseNivelCLASSEVENDEDOR3ID: TBCDField
      FieldName = 'CLASSEVENDEDOR3ID'
      OnValidate = cdsClasseNivelCLASSEVENDEDOR1IDValidate
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR3: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR3'
      Size = 100
    end
    object cdsClasseNivelNIVELVENDA3: TStringField
      FieldName = 'NIVELVENDA3'
      Size = 1
    end
    object cdsClasseNivelPERCENTUAL3: TFMTBCDField
      FieldName = 'PERCENTUAL3'
      Precision = 20
    end
    object cdsClasseNivelCLASSEVENDEDOR4ID: TBCDField
      FieldName = 'CLASSEVENDEDOR4ID'
      OnValidate = cdsClasseNivelCLASSEVENDEDOR1IDValidate
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR4: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR4'
      Size = 100
    end
    object cdsClasseNivelNIVELVENDA4: TStringField
      FieldName = 'NIVELVENDA4'
      Size = 1
    end
    object cdsClasseNivelPERCENTUAL4: TFMTBCDField
      FieldName = 'PERCENTUAL4'
      Precision = 20
    end
    object cdsClasseNivelCLASSEVENDEDOR5ID: TBCDField
      FieldName = 'CLASSEVENDEDOR5ID'
      OnValidate = cdsClasseNivelCLASSEVENDEDOR1IDValidate
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR5: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR5'
      Size = 100
    end
    object cdsClasseNivelNIVELVENDA5: TStringField
      FieldName = 'NIVELVENDA5'
      Size = 1
    end
    object cdsClasseNivelPERCENTUAL5: TFMTBCDField
      FieldName = 'PERCENTUAL5'
      Precision = 20
    end
    object cdsClasseNivelCLASSEVENDEDOR6ID: TBCDField
      FieldName = 'CLASSEVENDEDOR6ID'
      OnValidate = cdsClasseNivelCLASSEVENDEDOR1IDValidate
      Precision = 8
      Size = 0
    end
    object cdsClasseNivelL_DESCRICAOCLASSEVENDEDOR6: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR6'
      Size = 100
    end
    object cdsClasseNivelNIVELVENDA6: TStringField
      FieldName = 'NIVELVENDA6'
      Size = 1
    end
    object cdsClasseNivelPERCENTUAL6: TFMTBCDField
      FieldName = 'PERCENTUAL6'
      Precision = 20
    end
    object cdsClasseNivelUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsClasseNivel: TDataSource
    AutoEdit = False
    DataSet = cdsClasseNivel
    Left = 512
    Top = 208
  end
  object cdsPedVendServ: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPedVendsqldtsPedVendServ
    Params = <>
    BeforeInsert = cdsPedVendServBeforeInsert
    BeforeEdit = cdsPedVendServBeforeEdit
    AfterPost = cdsPedVendServAfterPost
    BeforeDelete = cdsPedVendServBeforeDelete
    AfterDelete = cdsPedVendServAfterDelete
    OnNewRecord = cdsPedVendServNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 432
    Top = 384
    object cdsPedVendServPEDVENDID: TStringField
      Tag = 1
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object cdsPedVendServITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPedVendServEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsPedVendServSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      OnValidate = cdsPedVendServSERVICOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPedVendServL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPedVendServDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPedVendServVLRSERVICO: TFMTBCDField
      FieldName = 'VLRSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsPedVendServUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPedVendServ: TDataSource
    AutoEdit = False
    DataSet = cdsPedVendServ
    Left = 512
    Top = 384
  end
  object cdsPercComFunc: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPercComFunc'
    RemoteServer = shdcnnPP
    AfterPost = cdsPercComFuncAfterPost
    AfterDelete = cdsPercComFuncAfterDelete
    OnNewRecord = cdsPercComFuncNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 240
    Top = 514
    object cdsPercComFuncCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsPercComFuncCLASSEVENDEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPercComFuncL_DESCRICAOCLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPercComFuncTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsPercComFuncTIPOVENDAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPercComFuncL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPercComFuncUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPercComFuncsqldtsPercComFunGrupo: TDataSetField
      FieldName = 'sqldtsPercComFunGrupo'
    end
  end
  object dsPercComFunc: TDataSource
    AutoEdit = False
    DataSet = cdsPercComFunc
    Left = 344
    Top = 514
  end
  object cdsPercComFuncGrupo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPercComFuncsqldtsPercComFunGrupo
    Params = <>
    AfterPost = cdsPercComFuncGrupoAfterPost
    AfterDelete = cdsPercComFuncGrupoAfterDelete
    OnNewRecord = cdsPercComFuncGrupoNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 240
    Top = 560
    object cdsPercComFuncGrupoCLASSEVENDEDORID: TBCDField
      Tag = 1
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPercComFuncGrupoTIPOVENDAID: TBCDField
      Tag = 1
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPercComFuncGrupoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsPercComFuncGrupoGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPercComFuncGrupoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPercComFuncGrupoVLRPERCENTUAL: TFMTBCDField
      FieldName = 'VLRPERCENTUAL'
      Precision = 14
      Size = 6
    end
    object cdsPercComFuncGrupoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPercComFuncGrupo: TDataSource
    AutoEdit = False
    DataSet = cdsPercComFuncGrupo
    Left = 344
    Top = 560
  end
  object dsMotivoRecusa: TDataSource
    AutoEdit = False
    DataSet = cdsMotivoRecusa
    Left = 904
  end
  object cdsMotivoRecusa: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvMotivoRecusa'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsMotivoRecusaNewRecord
    OnReconcileError = cdsPedVendReconcileError
    Left = 832
    object cdsMotivoRecusaMOTIVORECUSAID: TBCDField
      FieldName = 'MOTIVORECUSAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsMotivoRecusaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsMotivoRecusaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsDocPendente: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvDocPendente'
    RemoteServer = shdcnnPP
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterDelete
    OnNewRecord = cdsDocPendenteNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 832
    Top = 42
    object cdsDocPendenteDOCPENDENTEID: TBCDField
      FieldName = 'DOCPENDENTEID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDocPendenteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsDocPendenteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsDocPendente: TDataSource
    AutoEdit = False
    DataSet = cdsDocPendente
    Left = 904
    Top = 42
  end
  object cdsAcompPed: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvAcompPed'
    RemoteServer = shdcnnPP
    AfterPost = cdsAcompPedAfterPost
    AfterDelete = cdsAcompPedAfterDelete
    OnNewRecord = cdsAcompPedNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 832
    Top = 84
    object cdsAcompPedNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcompPedDATAASSINATURA: TSQLTimeStampField
      FieldName = 'DATAASSINATURA'
    end
    object cdsAcompPedCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      OnValidate = cdsAcompPedCLIENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAcompPedNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object cdsAcompPedDATARECEBPEDIDO: TSQLTimeStampField
      FieldName = 'DATARECEBPEDIDO'
    end
    object cdsAcompPedTIPORECEBPEDIDO: TStringField
      FieldName = 'TIPORECEBPEDIDO'
      Size = 1
    end
    object cdsAcompPedDOCPENDENTE: TBCDField
      FieldName = 'DOCPENDENTE'
      Precision = 1
      Size = 0
    end
    object cdsAcompPedDATAENTREGAFIN: TSQLTimeStampField
      FieldName = 'DATAENTREGAFIN'
    end
    object cdsAcompPedDATARETORNOFIN: TSQLTimeStampField
      FieldName = 'DATARETORNOFIN'
    end
    object cdsAcompPedMOTIVORECUSAID: TBCDField
      FieldName = 'MOTIVORECUSAID'
      OnValidate = cdsAcompPedMOTIVORECUSAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_DESCRMOTIVORECUSA: TStringField
      FieldName = 'L_DESCRMOTIVORECUSA'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedMOTIVORECUSA2ID: TBCDField
      FieldName = 'MOTIVORECUSA2ID'
      OnValidate = cdsAcompPedMOTIVORECUSA2IDValidate
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_DESCRMOTIVORECUSA2: TStringField
      FieldName = 'L_DESCRMOTIVORECUSA2'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedHISTFINANCEIRO: TMemoField
      FieldName = 'HISTFINANCEIRO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsAcompPedDATAENVCONTRATO: TSQLTimeStampField
      FieldName = 'DATAENVCONTRATO'
    end
    object cdsAcompPedDATARETCONTRATO: TSQLTimeStampField
      FieldName = 'DATARETCONTRATO'
    end
    object cdsAcompPedCONTRATOOK: TBCDField
      FieldName = 'CONTRATOOK'
      Precision = 1
      Size = 0
    end
    object cdsAcompPedTIPODOCRETORNO: TStringField
      FieldName = 'TIPODOCRETORNO'
      Size = 1
    end
    object cdsAcompPedDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object cdsAcompPedDATAFATURAMENTO: TSQLTimeStampField
      FieldName = 'DATAFATURAMENTO'
    end
    object cdsAcompPedDATAPREVENTREGA: TSQLTimeStampField
      FieldName = 'DATAPREVENTREGA'
    end
    object cdsAcompPedL_PEDVENDID: TStringField
      FieldName = 'L_PEDVENDID'
      ProviderFlags = []
      Size = 9
    end
    object cdsAcompPedL_ORIGEMVENDAID: TBCDField
      FieldName = 'L_ORIGEMVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_DESCRORIGEMVENDA: TStringField
      FieldName = 'L_DESCRORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedL_TIPOVENDAID: TBCDField
      FieldName = 'L_TIPOVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_DESCRTIPOVENDA: TStringField
      FieldName = 'L_DESCRTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsAcompPedL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      ProviderFlags = []
      Size = 72
    end
    object cdsAcompPedL_SIGLAUFORIGID: TStringField
      FieldName = 'L_SIGLAUFORIGID'
      ProviderFlags = []
      Size = 2
    end
    object cdsAcompPedL_DESTINATARIOID: TBCDField
      FieldName = 'L_DESTINATARIOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_NOMEDESTINATARIO: TStringField
      FieldName = 'L_NOMEDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedL_CPFCNPJDESTINATARIO: TStringField
      FieldName = 'L_CPFCNPJDESTINATARIO'
      ProviderFlags = []
      Size = 18
    end
    object cdsAcompPedL_EMPRESAID: TBCDField
      FieldName = 'L_EMPRESAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_PDSID: TBCDField
      FieldName = 'L_PDSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_NFSID: TBCDField
      FieldName = 'L_NFSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAcompPedL_DATAEMISSAOID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAOID'
      ProviderFlags = []
    end
    object cdsAcompPedL_DATAPEDIDOPDSID: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDOPDSID'
      ProviderFlags = []
    end
    object cdsAcompPedL_VLRTOTALGERAL: TBCDField
      FieldName = 'L_VLRTOTALGERAL'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAcompPedL_VLRTOTALVENDA: TBCDField
      FieldName = 'L_VLRTOTALVENDA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAcompPedOBSERVAO: TMemoField
      FieldName = 'OBSERVA'#199#195'O'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsAcompPedVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsAcompPedUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsAcompPedsqldtsAcompPedDocPendente: TDataSetField
      FieldName = 'sqldtsAcompPedDocPendente'
    end
    object cdsAcompPedsqldtsAcompPedVend: TDataSetField
      FieldName = 'sqldtsAcompPedVend'
    end
  end
  object dsAcompPed: TDataSource
    AutoEdit = False
    DataSet = cdsAcompPed
    Left = 904
    Top = 84
  end
  object cdsAcompPedDocPend: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcompPedsqldtsAcompPedDocPendente
    Params = <>
    AfterPost = cdsAcompPedDocPendAfterPost
    AfterDelete = cdsAcompPedDocPendAfterDelete
    OnNewRecord = cdsAcompPedDocPendNewRecord
    OnReconcileError = cdsPedVendReconcileError
    Left = 833
    Top = 126
    object cdsAcompPedDocPendNUMPEDVENDEDORID: TStringField
      Tag = 1
      FieldName = 'NUMPEDVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcompPedDocPendITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAcompPedDocPendDATAREGISTRO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAREGISTRO'
    end
    object cdsAcompPedDocPendDOCPENDENTEID: TBCDField
      FieldName = 'DOCPENDENTEID'
      OnValidate = cdsAcompPedDocPendDOCPENDENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAcompPedDocPendL_DESCRDOCPENDENTE: TStringField
      FieldName = 'L_DESCRDOCPENDENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedDocPendDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsAcompPedDocPendDATAULTATUAL: TSQLTimeStampField
      FieldName = 'DATAULTATUAL'
    end
    object cdsAcompPedDocPendRESOLVIDO: TBCDField
      FieldName = 'RESOLVIDO'
      OnValidate = cdsAcompPedDocPendRESOLVIDOValidate
      Precision = 1
      Size = 0
    end
    object cdsAcompPedDocPendDATARESOLUCAO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATARESOLUCAO'
    end
    object cdsAcompPedDocPendUSUARIORESOLUCAO: TStringField
      Tag = 1
      FieldName = 'USUARIORESOLUCAO'
    end
    object cdsAcompPedDocPendUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsAcompPedDocPend: TDataSource
    AutoEdit = False
    DataSet = cdsAcompPedDocPend
    Left = 905
    Top = 126
  end
  object cdsAcompPedVend: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAcompPedsqldtsAcompPedVend
    Params = <>
    AfterPost = cdsAcompPedVendAfterPost
    AfterDelete = cdsAcompPedVendAfterDelete
    OnNewRecord = cdsAcompPedVendNewRecord
    OnReconcileError = cdsCatalogoReconcileError
    Left = 832
    Top = 168
    object cdsAcompPedVendNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAcompPedVendITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAcompPedVendVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      OnValidate = cdsAcompPedVendVENDEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAcompPedVendL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedVendCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      OnValidate = cdsAcompPedVendCLASSEVENDEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAcompPedVendL_DESCR_CLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCR_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsAcompPedVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAcompPedVend: TDataSource
    AutoEdit = False
    DataSet = cdsAcompPedVend
    Left = 905
    Top = 166
  end
end
