object dmEF: TdmEF
  OldCreateOrder = False
  Height = 640
  Width = 892
  object cdsContaContabil: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvContaContabil'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 42
    object cdsContaContabilCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Required = True
      Size = 10
    end
    object cdsContaContabilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsContaContabilGRAU: TBCDField
      FieldName = 'GRAU'
      Precision = 8
      Size = 0
    end
    object cdsContaContabilCODIGOREDUZIDOID: TBCDField
      FieldName = 'CODIGOREDUZIDOID'
      Precision = 8
      Size = 0
    end
    object cdsContaContabilNATUREZACONTA: TStringField
      FieldName = 'NATUREZACONTA'
      Size = 1
    end
    object cdsContaContabilCONTALALUR: TStringField
      FieldName = 'CONTALALUR'
      Size = 1
    end
    object cdsContaContabilEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsContaContabilEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContaContabilL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      Size = 60
    end
    object cdsContaContabilUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsDepartamento: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvDepartamento'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsDepartamentoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 86
    object cdsDepartamentoDEPARTAMENTOID: TBCDField
      FieldName = 'DEPARTAMENTOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDepartamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsDepartamentoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cdsDepartamentoFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsDepartamentoFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDepartamentoL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      Size = 50
    end
    object cdsDepartamentoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsDepartamentoCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 10
    end
    object cdsDepartamentoBLOQLANCAMENTOS: TBCDField
      FieldName = 'BLOQLANCAMENTOS'
      Precision = 1
      Size = 0
    end
    object cdsDepartamentoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsCargo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCargo'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsCargoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 130
    object cdsCargoCARGOID: TBCDField
      FieldName = 'CARGOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCargoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCargoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsCargoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsObservacao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvObservacao'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 217
    object cdsObservacaoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsObservacaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsObservacaoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsSiglaNatureza: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvSiglaNatureza'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsSiglaNaturezaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 348
    object cdsSiglaNaturezaSIGLANATUREZAID: TBCDField
      FieldName = 'SIGLANATUREZAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsSiglaNaturezaDESCRICAORESUMIDA: TStringField
      FieldName = 'DESCRICAORESUMIDA'
    end
    object cdsSiglaNaturezaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsSiglaNaturezaCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsSiglaNaturezaCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 10
    end
    object cdsSiglaNaturezaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsNaturezaOp: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNaturezaOp'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsNaturezaOpNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 392
    object cdsNaturezaOpNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNaturezaOpCFOP: TStringField
      FieldName = 'CFOP'
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsNaturezaOpTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 1
    end
    object cdsNaturezaOpDESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'DESCRICAOOPERACAOUSUARIO'
      Size = 100
    end
    object cdsNaturezaOpDESCRICAOOPERACAONOTA: TStringField
      FieldName = 'DESCRICAOOPERACAONOTA'
      Size = 100
    end
    object cdsNaturezaOpDESCRICAOCOMPLETA: TStringField
      FieldName = 'DESCRICAOCOMPLETA'
      Size = 300
    end
    object cdsNaturezaOpNATUREZAOPRETORNOID: TBCDField
      FieldName = 'NATUREZAOPRETORNOID'
      OnValidate = cdsNaturezaOpNATUREZAOPRETORNOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNaturezaOpL_DESCRNATRETORNO: TStringField
      FieldName = 'L_DESCRNATRETORNO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNaturezaOpMOVIMENTOESTOQUE: TStringField
      FieldName = 'MOVIMENTOESTOQUE'
      Size = 1
    end
    object cdsNaturezaOpVENDADEFINITIVA: TBCDField
      FieldName = 'VENDADEFINITIVA'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpOUTRASSAIDA: TBCDField
      FieldName = 'OUTRASSAIDA'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCALCULAPRECOMEDIO: TBCDField
      FieldName = 'CALCULAPRECOMEDIO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpUTILIZAEMPENHO: TBCDField
      FieldName = 'UTILIZAEMPENHO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpGERARDUPLICATA: TBCDField
      FieldName = 'GERARDUPLICATA'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpTRANSFCONSUMO: TBCDField
      FieldName = 'TRANSFCONSUMO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpDESMEMBRCUSTO: TBCDField
      FieldName = 'DESMEMBRCUSTO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCOBERTURACONTRATUAL: TBCDField
      FieldName = 'COBERTURACONTRATUAL'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpENTRADAPRECOTRANSF: TBCDField
      FieldName = 'ENTRADAPRECOTRANSF'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpENTRADADIPJ: TBCDField
      FieldName = 'ENTRADADIPJ'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpSAIDADIPJ: TBCDField
      FieldName = 'SAIDADIPJ'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpDOCINTERNO: TBCDField
      FieldName = 'DOCINTERNO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCALCULOPIS: TBCDField
      FieldName = 'CALCULOPIS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCALCULOCOFINS: TBCDField
      FieldName = 'CALCULOCOFINS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCREDITOPIS: TBCDField
      FieldName = 'CREDITOPIS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCREDITOCOFINS: TBCDField
      FieldName = 'CREDITOCOFINS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCALCULOIPI: TBCDField
      FieldName = 'CALCULOIPI'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCREDITOIPI: TBCDField
      FieldName = 'CREDITOIPI'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpIPIBASE: TBCDField
      FieldName = 'IPIBASE'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpFRETEIPI: TBCDField
      FieldName = 'FRETEIPI'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpDESPACESSORIABASEICMS: TBCDField
      FieldName = 'DESPACESSORIABASEICMS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpDESTACAIPI: TBCDField
      FieldName = 'DESTACAIPI'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCALCULOIRPJ: TBCDField
      FieldName = 'CALCULOIRPJ'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpGERAMOVIMENTO: TBCDField
      FieldName = 'GERAMOVIMENTO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpVENDAFATANTECIPADO: TBCDField
      FieldName = 'VENDAFATANTECIPADO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpTRIBUTADO: TBCDField
      FieldName = 'TRIBUTADO'
      OnValidate = cdsNaturezaOpTRIBUTADOValidate
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpSUSPENSAOIPI: TBCDField
      FieldName = 'SUSPENSAOIPI'
      OnValidate = cdsNaturezaOpSUSPENSAOIPIValidate
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpISENTOIPI: TBCDField
      FieldName = 'ISENTOIPI'
      OnValidate = cdsNaturezaOpISENTOIPIValidate
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpSITTRIBESTADUAL: TStringField
      FieldName = 'SITTRIBESTADUAL'
      Size = 2
    end
    object cdsNaturezaOpCALCULOICMS: TBCDField
      FieldName = 'CALCULOICMS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCREDITOICMS: TBCDField
      FieldName = 'CREDITOICMS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpISENTOINSCRICAOESTADUAL: TBCDField
      FieldName = 'ISENTOINSCRICAOESTADUAL'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpCALCULOISS: TBCDField
      FieldName = 'CALCULOISS'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      OnValidate = cdsNaturezaOpOBSERVACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNaturezaOpL_DESCRICAOOBSERVACAO: TBlobField
      FieldName = 'L_DESCRICAOOBSERVACAO'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsNaturezaOpSIGLANATUREZAID: TBCDField
      FieldName = 'SIGLANATUREZAID'
      OnValidate = cdsNaturezaOpSIGLANATUREZAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNaturezaOpL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
    end
    object cdsNaturezaOpL_DESCRICAOSIGLA: TStringField
      FieldName = 'L_DESCRICAOSIGLA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNaturezaOpNATUREZASERVICO: TBCDField
      FieldName = 'NATUREZASERVICO'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaOpNUMPADRAO: TStringField
      FieldName = 'NUMPADRAO'
      Size = 6
    end
    object cdsNaturezaOpUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNaturezaOpsqldtsNaturezaEmpresa: TDataSetField
      FieldName = 'sqldtsNaturezaEmpresa'
    end
  end
  object cdsNaturezaEmpresa: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNaturezaOpsqldtsNaturezaEmpresa
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsNaturezaEmpresaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 436
    object cdsNaturezaEmpresaEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsNaturezaEmpresaEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNaturezaEmpresaL_NOMEFANTASIA: TStringField
      DisplayWidth = 50
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object cdsNaturezaEmpresaUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsNaturezaEmpresaNATUREZAOPID: TBCDField
      DisplayWidth = 9
      FieldName = 'NATUREZAOPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvFilial'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 480
    object cdsFilialFILIALID: TBCDField
      FieldName = 'FILIALID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFilialCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnGetText = cdsFilialCPF_CNPJGetText
      OnValidate = cdsFilialCPF_CNPJValidate
      Size = 18
    end
    object cdsFilialINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
    end
    object cdsFilialINSCRMUNICIPAL: TStringField
      FieldName = 'INSCRMUNICIPAL'
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsFilialNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object cdsFilialCEPID: TBCDField
      DisplayWidth = 9
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsFilialNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsFilialSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsFilialCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object cdsFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsFilialTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object cdsFilialCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object cdsFilialCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsFilialPAGINA: TStringField
      FieldName = 'PAGINA'
      Size = 100
    end
    object cdsFilialIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 1
    end
    object cdsFilialULTIMAOS: TBCDField
      FieldName = 'ULTIMAOS'
      Precision = 8
      Size = 0
    end
    object cdsFilialCONTABANCARIA: TStringField
      FieldName = 'CONTABANCARIA'
      Size = 10
    end
    object cdsFilialCONTACAIXA: TStringField
      FieldName = 'CONTACAIXA'
      Size = 10
    end
    object cdsFilialHORAINICIOTRABALHO: TSQLTimeStampField
      FieldName = 'HORAINICIOTRABALHO'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object cdsFilialHORAFINALTRABALHO: TSQLTimeStampField
      FieldName = 'HORAFINALTRABALHO'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object cdsFilialHORASALMOCO: TFMTBCDField
      FieldName = 'HORASALMOCO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 10
    end
    object cdsFilialLIMITEBCOHORAS: TFMTBCDField
      FieldName = 'LIMITEBCOHORAS'
      Precision = 14
      Size = 10
    end
    object cdsFilialUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCategoria'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsCategoriaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 65533
    object cdsCategoriaCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCategoriaFUNCAOVENDA: TBCDField
      FieldName = 'FUNCAOVENDA'
      Precision = 1
      Size = 0
    end
    object cdsCategoriaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvBanco'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 173
    object cdsBancoBANCOID: TBCDField
      FieldName = 'BANCOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 18
    end
    object cdsBancoNUMBANCO: TStringField
      FieldName = 'NUMBANCO'
    end
    object cdsBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
    end
    object cdsBancoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 40
    end
    object cdsBancoNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsBancoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsBancoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsBancoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsBancoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsBancoSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsBancoCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object cdsBancoTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsBancoFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsBancoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object cdsBancoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsBancoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsCondPagto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCondPagto'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 217
    object cdsCondPagtoCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCondPagtoNUMPARCELA: TBCDField
      FieldName = 'NUMPARCELA'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoDIASPRIMEIRA: TBCDField
      FieldName = 'DIASPRIMEIRA'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoDIASENTREPARC: TBCDField
      FieldName = 'DIASENTREPARC'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoMULTA: TBCDField
      FieldName = 'MULTA'
      Precision = 8
      Size = 2
    end
    object cdsCondPagtoDIASJUROS: TBCDField
      FieldName = 'DIASJUROS'
      Precision = 8
      Size = 0
    end
    object cdsCondPagtoJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 8
      Size = 2
    end
    object cdsCondPagtoDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 8
      Size = 2
    end
    object cdsCondPagtoEMITEDUPLICATA: TBCDField
      FieldName = 'EMITEDUPLICATA'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoDIAUNICO: TBCDField
      FieldName = 'DIAUNICO'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoIMPRIMEDESCRICAO: TBCDField
      FieldName = 'IMPRIMEDESCRICAO'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoDESCRICAOPAGTO: TMemoField
      FieldName = 'DESCRICAOPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsCondPagtoDATAIGUALEMISSAO: TBCDField
      FieldName = 'DATAIGUALEMISSAO'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoIMPRIMEDUPLIC1PARCELA: TBCDField
      FieldName = 'IMPRIMEDUPLIC1PARCELA'
      Precision = 1
      Size = 0
    end
    object cdsCondPagtoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsImposto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvImposto'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 261
    object cdsImpostoIMPOSTOID: TStringField
      FieldName = 'IMPOSTOID'
      Required = True
    end
    object cdsImpostoVLRALIQUOTA: TFMTBCDField
      FieldName = 'VLRALIQUOTA'
      DisplayFormat = '###,##0.000000'
      Precision = 8
      Size = 6
    end
    object cdsImpostoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvGrupo'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 305
    object cdsGrupoGRUPOID: TBCDField
      DisplayWidth = 9
      FieldName = 'GRUPOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGrupoSIGLAGRUPO: TStringField
      DisplayWidth = 10
      FieldName = 'SIGLAGRUPO'
      Size = 50
    end
    object cdsGrupoDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsGrupoUSUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsSubGrupo: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvSubGrupo'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 349
    object cdsSubGrupoSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsSubGrupoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsSubGrupoSIGLAGRUPO: TStringField
      FieldName = 'SIGLAGRUPO'
      Size = 5
    end
    object cdsSubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsSubGrupoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvUnidade'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 437
    object cdsUnidadeUNIDADEID: TStringField
      FieldName = 'UNIDADEID'
      Required = True
      Size = 5
    end
    object cdsUnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsUnidadeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsTecWin: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTecWin'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 481
    object cdsTecWinNCMID: TStringField
      FieldName = 'NCMID'
      Required = True
      Size = 10
    end
    object cdsTecWinDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object cdsTecWinALIQUOTAII: TFMTBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 6
    end
    object cdsTecWinALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 9
      Size = 6
    end
    object cdsTecWinISENTOIPI: TBCDField
      FieldName = 'ISENTOIPI'
      Precision = 1
      Size = 0
    end
    object cdsTecWinSITTRIBISENTO: TBCDField
      FieldName = 'SITTRIBISENTO'
      Precision = 8
      Size = 0
    end
    object cdsTecWinARTIGOISENTO: TStringField
      FieldName = 'ARTIGOISENTO'
      Size = 200
    end
    object cdsTecWinSUSPENSAOIPI: TBCDField
      FieldName = 'SUSPENSAOIPI'
      Precision = 1
      Size = 0
    end
    object cdsTecWinSITTRIBSUSPENSAO: TBCDField
      FieldName = 'SITTRIBSUSPENSAO'
      Precision = 8
      Size = 0
    end
    object cdsTecWinARTIGOSUSPENSAO: TStringField
      FieldName = 'ARTIGOSUSPENSAO'
      Size = 200
    end
    object cdsTecWinTRIBUTADO: TBCDField
      FieldName = 'TRIBUTADO'
      Precision = 1
      Size = 0
    end
    object cdsTecWinSITTRIBTRIBUTADO: TBCDField
      FieldName = 'SITTRIBTRIBUTADO'
      Precision = 8
      Size = 0
    end
    object cdsTecWinARTIGOTRIBUTADO: TStringField
      FieldName = 'ARTIGOTRIBUTADO'
      Size = 200
    end
    object cdsTecWinSITTRIBNAOTRIBUTADO: TBCDField
      FieldName = 'SITTRIBNAOTRIBUTADO'
      Precision = 8
      Size = 0
    end
    object cdsTecWinARTIGONAOTRIBUTADO: TStringField
      FieldName = 'ARTIGONAOTRIBUTADO'
      Size = 200
    end
    object cdsTecWinDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsTecWinDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsTecWinDATAINICIALII: TSQLTimeStampField
      FieldName = 'DATAINICIALII'
    end
    object cdsTecWinDATAFINALII: TSQLTimeStampField
      FieldName = 'DATAFINALII'
    end
    object cdsTecWinALIQUOTATEMPIPI: TFMTBCDField
      FieldName = 'ALIQUOTATEMPIPI'
      Precision = 14
      Size = 6
    end
    object cdsTecWinALIQUOTATEMPII: TFMTBCDField
      FieldName = 'ALIQUOTATEMPII'
      Precision = 14
      Size = 6
    end
    object cdsTecWinINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object cdsTecWinUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsReceita: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvReceita'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsReceitaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 407
    object cdsReceitaRECEITAID: TBCDField
      FieldName = 'RECEITAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsReceitaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cdsReceitaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsReceitaTIPORECEITA: TStringField
      FieldName = 'TIPORECEITA'
      Size = 1
    end
    object cdsReceitaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object cdsReceitaIMPOSTOSERVQLDNATID: TStringField
      FieldName = 'IMPOSTOSERVQLDNATID'
      Size = 50
    end
    object cdsReceitaSERVICOPRESTADOID: TFMTBCDField
      FieldName = 'SERVICOPRESTADOID'
      Precision = 32
    end
    object cdsReceitaCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsReceitaCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 10
    end
    object cdsReceitaRETENCAO1: TBCDField
      FieldName = 'RETENCAO1'
      Precision = 1
      Size = 0
    end
    object cdsReceitaRETENCAO2: TBCDField
      FieldName = 'RETENCAO2'
      Precision = 1
      Size = 0
    end
    object cdsReceitaRETENCAO3: TBCDField
      FieldName = 'RETENCAO3'
      Precision = 1
      Size = 0
    end
    object cdsReceitaRETENCAO4: TBCDField
      FieldName = 'RETENCAO4'
      Precision = 1
      Size = 0
    end
    object cdsReceitaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvServico'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsServicoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 84
    object cdsServicoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsServicoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      OnValidate = cdsServicoGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsServicoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsServicoL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsServicoSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      OnValidate = cdsServicoSUBGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsServicoL_DESCRICAO_SUBGRUPO: TStringField
      FieldName = 'L_DESCRICAO_SUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsServicoRECEITAID: TBCDField
      FieldName = 'RECEITAID'
      OnValidate = cdsServicoRECEITAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsServicoL_SIGLARECEITA: TStringField
      FieldName = 'L_SIGLARECEITA'
      ProviderFlags = []
      Size = 10
    end
    object cdsServicoL_DESCRICAORECEITA: TStringField
      FieldName = 'L_DESCRICAORECEITA'
      ProviderFlags = []
      Size = 100
    end
    object cdsServicoDESCRICAORESUMIDA: TStringField
      FieldName = 'DESCRICAORESUMIDA'
      Size = 100
    end
    object cdsServicoDESCRICAOCOMPLETA: TMemoField
      FieldName = 'DESCRICAOCOMPLETA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsServicoIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      Precision = 8
      Size = 0
    end
    object cdsServicoL_ATIVIDADE: TStringField
      FieldName = 'L_ATIVIDADE'
      Size = 300
    end
    object cdsServicoCALCULARPIS: TBCDField
      FieldName = 'CALCULARPIS'
      Precision = 1
      Size = 0
    end
    object cdsServicoCALCULARCOFINS: TBCDField
      FieldName = 'CALCULARCOFINS'
      Precision = 1
      Size = 0
    end
    object cdsServicoALIQUOTAISS: TFMTBCDField
      FieldName = 'ALIQUOTAISS'
      Precision = 14
      Size = 6
    end
    object cdsServicoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsKardex: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvKardex'
    RemoteServer = shdcnnEF
    AfterPost = cdsKardexAfterPost
    AfterDelete = cdsKardexAfterDelete
    OnCalcFields = cdsKardexCalcFields
    OnNewRecord = cdsKardexNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 406
    Top = 440
    object cdsKardexEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsKardexKARDEXID: TBCDField
      Tag = 3
      FieldName = 'KARDEXID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsKardexDATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'DATAOCORRENCIA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsKardexNUMDOCUMENTO: TBCDField
      FieldName = 'NUMDOCUMENTO'
      Precision = 8
      Size = 0
    end
    object cdsKardexTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      Size = 3
    end
    object cdsKardexTIPOESTOQUE: TStringField
      FieldName = 'TIPOESTOQUE'
      Size = 3
    end
    object cdsKardexOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsKardexDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsKardexNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsKardexNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsKardexL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.cc.c;0; '
      Size = 4
    end
    object cdsKardexL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsKardexTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      Size = 1
    end
    object cdsKardexITEMID: TBCDField
      FieldName = 'ITEMID'
      Precision = 8
      Size = 0
    end
    object cdsKardexPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsKardexPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsKardexL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsKardexQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsKardexVLRCUSTOUNITARIO: TFMTBCDField
      FieldName = 'VLRCUSTOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKardexVLRCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKardexQUANTIDADESALDO: TBCDField
      FieldName = 'QUANTIDADESALDO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsKardexVLRCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKardexVLRCUSTOMEDIOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKardexVLRCUSTOMEDIOANTERIOR: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOANTERIOR'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKardexESTOQUENOVO: TBCDField
      FieldName = 'ESTOQUENOVO'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEREVISADO: TBCDField
      FieldName = 'ESTOQUEREVISADO'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEPEDENTRADA: TBCDField
      FieldName = 'ESTOQUEPEDENTRADA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEPEDSAIDA: TBCDField
      FieldName = 'ESTOQUEPEDSAIDA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'ESTOQUEEMTERCEIRO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEDETERCEIRO: TBCDField
      FieldName = 'ESTOQUEDETERCEIRO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEEMPENHO: TBCDField
      FieldName = 'ESTOQUEEMPENHO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEVALE: TBCDField
      FieldName = 'ESTOQUEVALE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEESTORNO: TBCDField
      FieldName = 'ESTOQUEESTORNO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKardexESTOQUETOTAL: TBCDField
      FieldName = 'ESTOQUETOTAL'
      Precision = 8
      Size = 2
    end
    object cdsKardexC_QUANTIDADEENTRADA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_QUANTIDADEENTRADA'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
    end
    object cdsKardexC_QUANTIDADESAIDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_QUANTIDADESAIDA'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
    end
    object cdsKardexC_VLRUNITENTRADA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRUNITENTRADA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKardexC_VLRUNITSAIDA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRUNITSAIDA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKardexC_VLRTOTALENTRADA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRTOTALENTRADA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKardexC_VLRTOTALSAIDA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRTOTALSAIDA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKardexUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsPde: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvPde'
    RemoteServer = shdcnnEF
    BeforeEdit = cdsPdeBeforeEdit
    AfterPost = cdsPdeAfterPost
    BeforeDelete = cdsPdeBeforeDelete
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsPdeNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 65535
    object cdsPdeEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdePDEID: TBCDField
      FieldName = 'PDEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsPdeNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsPdeL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsPdeL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdeDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsPdeDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object cdsPdeDESCRICAOIMPORTACAO: TMemoField
      FieldName = 'DESCRICAOIMPORTACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdeOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsPdeLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      OnValidate = cdsPdeLIBCHEFIAValidate
      Precision = 1
      Size = 0
    end
    object cdsPdeLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsPdeLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsPdeLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsPdeLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object cdsPdeLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object cdsPdeLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      OnValidate = cdsPdeLIBCONTABILValidate
      Precision = 1
      Size = 0
    end
    object cdsPdeLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object cdsPdeLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object cdsPdeMOVIMENTAESTOQUE: TBCDField
      FieldName = 'MOVIMENTAESTOQUE'
      Precision = 1
      Size = 0
    end
    object cdsPdeNFEID: TBCDField
      FieldName = 'NFEID'
      OnValidate = cdsPdeNFEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsPdeDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object cdsPdeMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      OnValidate = cdsPdeMODELODOCFISCALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeL_MODELODOCFISCAL: TStringField
      FieldName = 'L_MODELODOCFISCAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsPdeNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsPdeDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object cdsPdeTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object cdsPdeCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object cdsPdeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Required = True
      OnValidate = cdsPdeENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeCEPID: TBCDField
      FieldName = 'CEPID'
      Required = True
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPdeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 100
    end
    object cdsPdeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsPdeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsPdeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsPdeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsPdeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPdePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsPdeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsPdeNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Required = True
      OnValidate = cdsPdeNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      OnValidate = cdsPdeOBSERVACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdeTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      OnValidate = cdsPdeTRANSPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdePLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object cdsPdeMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object cdsPdeVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object cdsPdeEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object cdsPdeEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object cdsPdeEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object cdsPdeEMBPESOBRUTO: TBCDField
      FieldName = 'EMBPESOBRUTO'
      OnValidate = cdsPdeEMBPESOBRUTOValidate
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 8
      Size = 3
    end
    object cdsPdeEMBPESOLIQUIDO: TBCDField
      FieldName = 'EMBPESOLIQUIDO'
      OnValidate = cdsPdeEMBPESOLIQUIDOValidate
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 8
      Size = 3
    end
    object cdsPdeVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALCREDCOFINS: TBCDField
      FieldName = 'VLRTOTALCREDCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALCREDPIS: TBCDField
      FieldName = 'VLRTOTALCREDPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPdesqldtsPdeItem: TDataSetField
      FieldName = 'sqldtsPdeItem'
    end
  end
  object cdsPdeItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdesqldtsPdeItem
    IndexFieldNames = 'EMPRESAID;PDEID;ITEMID'
    Params = <>
    BeforeInsert = cdsPdeItemBeforeInsert
    BeforeEdit = cdsPdeItemBeforeEdit
    BeforePost = cdsPdeItemBeforePost
    AfterPost = cdsPdeItemAfterPost
    BeforeDelete = cdsPdeItemBeforeDelete
    AfterDelete = cdsPdeItemAfterDelete
    OnNewRecord = cdsPdeItemNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 43
    object cdsPdeItemEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemPDEID: TBCDField
      Tag = 1
      FieldName = 'PDEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsPdeItemNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeItemL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsPdeItemL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdeItemL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdeItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Visible = False
      OnValidate = cdsPdeItemOBSERVACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      Visible = False
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdeItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsPdeItemPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdeItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      OnValidate = cdsPdeItemALIQUOTAICMSValidate
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 14
      Size = 6
    end
    object cdsPdeItemDESCRICAOPRODUTO: TStringField
      Tag = 1
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsPdeItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnValidate = cdsPdeItemQUANTIDADEValidate
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsPdeItemVLRPRECOUNITARIO: TBCDField
      Tag = 1
      FieldName = 'VLRPRECOUNITARIO'
      OnValidate = cdsPdeItemVLRPRECOUNITARIOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object cdsPdeItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object cdsPdeItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsPdeItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object cdsPdeItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object cdsPdeItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object cdsPdeItemVLRCREDPIS: TBCDField
      FieldName = 'VLRCREDPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsPdeItemVLRCREDCOFINS: TBCDField
      FieldName = 'VLRCREDCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdeItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object cdsPdeItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsPdeItemNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsPdeItemDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object cdsPdeItemEMPENHO: TBCDField
      Tag = 1
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object cdsPdeItemQUANTIDADEEMPENHO: TBCDField
      Tag = 1
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 8
      Size = 2
    end
    object cdsPdeItemRETORNO: TStringField
      Tag = 1
      FieldName = 'RETORNO'
      Size = 2
    end
    object cdsPdeItemQTDRETORNA: TBCDField
      Tag = 1
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object cdsPdeItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsPdeItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object cdsPdeItemUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsPdeItemsqldtsPdeItemBar: TDataSetField
      FieldName = 'sqldtsPdeItemBar'
    end
  end
  object dsContaContabil: TDataSource
    AutoEdit = False
    DataSet = cdsContaContabil
    Left = 159
    Top = 42
  end
  object dsDepartamento: TDataSource
    AutoEdit = False
    DataSet = cdsDepartamento
    Left = 159
    Top = 86
  end
  object dsCargo: TDataSource
    AutoEdit = False
    DataSet = cdsCargo
    Left = 159
    Top = 130
  end
  object dsObservacao: TDataSource
    AutoEdit = False
    DataSet = cdsObservacao
    Left = 159
    Top = 217
  end
  object dsSiglaNatureza: TDataSource
    AutoEdit = False
    DataSet = cdsSiglaNatureza
    Left = 159
    Top = 348
  end
  object dsNaturezaOp: TDataSource
    AutoEdit = False
    DataSet = cdsNaturezaOp
    Left = 159
    Top = 392
  end
  object dsNaturezaEmpresa: TDataSource
    AutoEdit = False
    DataSet = cdsNaturezaEmpresa
    Left = 159
    Top = 436
  end
  object dsFilial: TDataSource
    AutoEdit = False
    DataSet = cdsFilial
    Left = 159
    Top = 480
  end
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = cdsCategoria
    Left = 327
    Top = 65534
  end
  object dsBanco: TDataSource
    AutoEdit = False
    DataSet = cdsBanco
    Left = 327
    Top = 174
  end
  object dsCondPagto: TDataSource
    AutoEdit = False
    DataSet = cdsCondPagto
    Left = 327
    Top = 218
  end
  object dsImposto: TDataSource
    AutoEdit = False
    DataSet = cdsImposto
    Left = 327
    Top = 262
  end
  object dsGrupo: TDataSource
    AutoEdit = False
    DataSet = cdsGrupo
    Left = 327
    Top = 306
  end
  object dsSubGrupo: TDataSource
    AutoEdit = False
    DataSet = cdsSubGrupo
    Left = 327
    Top = 350
  end
  object dsUnidade: TDataSource
    AutoEdit = False
    DataSet = cdsUnidade
    Left = 327
    Top = 438
  end
  object dsTecWin: TDataSource
    AutoEdit = False
    DataSet = cdsTecWin
    Left = 327
    Top = 482
  end
  object dsReceita: TDataSource
    AutoEdit = False
    DataSet = cdsReceita
    Left = 487
    Top = 1
  end
  object dsServico: TDataSource
    AutoEdit = False
    DataSet = cdsServico
    Left = 485
    Top = 84
  end
  object dsKardex: TDataSource
    AutoEdit = False
    DataSet = cdsKardex
    Left = 485
    Top = 440
  end
  object dsPde: TDataSource
    AutoEdit = False
    DataSet = cdsPde
    Left = 627
    Top = 65535
  end
  object dsPdeItem: TDataSource
    AutoEdit = False
    DataSet = cdsPdeItem
    Left = 627
    Top = 43
  end
  object cdsNfe: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNfe'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsNfeNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 132
    object cdsNfeEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsNfeCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object cdsNfeMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      OnValidate = cdsNfeMODELODOCFISCALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNfeL_MODELODOCFISCAL: TStringField
      FieldName = 'L_MODELODOCFISCAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsNfeDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
    end
    object cdsNfeCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object cdsNfeEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsNfeDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsNfeDESCRICAOIMPORTACAO: TMemoField
      FieldName = 'DESCRICAOIMPORTACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfeOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsNfeNSUID: TFMTBCDField
      FieldName = 'NSUID'
      Precision = 32
    end
    object cdsNfeCREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsNfeLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsNfeLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object cdsNfeLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object cdsNfeLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object cdsNfeLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object cdsNfeLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object cdsNfePDEID: TBCDField
      FieldName = 'PDEID'
      Precision = 8
      Size = 0
    end
    object cdsNfeDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsNfeREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
      Size = 30
    end
    object cdsNfeNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsNfeDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object cdsNfeTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object cdsNfeCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsNfeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNfeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsNfeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsNfeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsNfeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsNfeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsNfePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsNfeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsNfeNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsNfeNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNfeL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfeTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      OnValidate = cdsNfeTRANSPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNfeL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfePLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object cdsNfeMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object cdsNfeVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object cdsNfeEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object cdsNfeEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object cdsNfeEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object cdsNfeEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfeEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfeVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALCREDCOFINS: TBCDField
      FieldName = 'VLRTOTALCREDCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALCREDPIS: TBCDField
      FieldName = 'VLRTOTALCREDPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object cdsNfeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfesqldtsNfeItem: TDataSetField
      FieldName = 'sqldtsNfeItem'
    end
  end
  object cdsNfeItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfesqldtsNfeItem
    IndexFieldNames = 'EMPRESAID;NFEID;DATAEMISSAOID;ENTIDADEID;ITEMID'
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 177
    object cdsNfeItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfeItemENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemITEMID: TBCDField
      Tag = 3
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.cc.c;0; '
      Size = 4
    end
    object cdsNfeItemL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeItemL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfeItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfeItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsNfeItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object cdsNfeItemEMPENHO: TBCDField
      Tag = 1
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object cdsNfeItemQTDEMPENHO: TBCDField
      FieldName = 'QTDEMPENHO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object cdsNfeItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 14
      Size = 6
    end
    object cdsNfeItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object cdsNfeItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfeItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRCREDCOFINS: TBCDField
      FieldName = 'VLRCREDCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfeItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRCREDPIS: TBCDField
      FieldName = 'VLRCREDPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemALIQUOTAIPI: TBCDField
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfeItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object cdsNfeItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object cdsNfeItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsNfeItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsNfeItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object cdsNfeItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      EditMask = '>9999.99.99;0; '
      Size = 10
    end
    object cdsNfeItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object cdsNfeItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfeItemsqldtsNfeItemBar: TDataSetField
      FieldName = 'sqldtsNfeItemBar'
    end
  end
  object dsNfe: TDataSource
    AutoEdit = False
    DataSet = cdsNfe
    Left = 627
    Top = 132
  end
  object dsNfeItem: TDataSource
    AutoEdit = False
    DataSet = cdsNfeItem
    Left = 627
    Top = 177
  end
  object cdsEntidade: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvEntidade'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsEntidadeNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 41
    object cdsEntidadeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsEntidadeCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      OnValidate = cdsEntidadeCPFCNPJValidate
      Size = 18
    end
    object cdsEntidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsEntidadeFISICAJURIDICA: TStringField
      FieldName = 'FISICAJURIDICA'
      Size = 1
    end
    object cdsEntidadeINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
    end
    object cdsEntidadeINSCRMUNICIPAL: TStringField
      FieldName = 'INSCRMUNICIPAL'
    end
    object cdsEntidadeNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object cdsEntidadePASTA: TStringField
      FieldName = 'PASTA'
      Size = 10
    end
    object cdsEntidadeSTATUSCOMERCIAL: TBCDField
      FieldName = 'STATUSCOMERCIAL'
      Precision = 1
      Size = 0
    end
    object cdsEntidadeSTATUSFINANCEIRO: TBCDField
      FieldName = 'STATUSFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsEntidadeNATUREZAJURIDICAID: TBCDField
      FieldName = 'NATUREZAJURIDICAID'
      OnValidate = cdsEntidadeNATUREZAJURIDICAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEntidadeDESLIGADO: TBCDField
      FieldName = 'DESLIGADO'
      Precision = 1
      Size = 0
    end
    object cdsEntidadeL_NATUREZAJURIDICA: TStringField
      FieldName = 'L_NATUREZAJURIDICA'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeL_CATEGJURIDICA: TStringField
      FieldName = 'L_CATEGJURIDICA'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeCEPID: TBCDField
      FieldName = 'CEPID'
      OnValidate = cdsEntidadeCEPIDValidate
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsEntidadeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsEntidadeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsEntidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsEntidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsEntidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsEntidadeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsEntidadePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsEntidadeCEPCOBID: TBCDField
      FieldName = 'CEPCOBID'
      OnValidate = cdsEntidadeCEPCOBIDValidate
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsEntidadeNUMEROCOB: TStringField
      FieldName = 'NUMEROCOB'
    end
    object cdsEntidadeCOMPLEMENTOCOB: TStringField
      FieldName = 'COMPLEMENTOCOB'
    end
    object cdsEntidadeENDERECOCOB: TStringField
      FieldName = 'ENDERECOCOB'
      Size = 100
    end
    object cdsEntidadeBAIRROCOB: TStringField
      FieldName = 'BAIRROCOB'
      Size = 72
    end
    object cdsEntidadeCIDADECOB: TStringField
      FieldName = 'CIDADECOB'
      Size = 72
    end
    object cdsEntidadeSIGLAUFCOBID: TStringField
      FieldName = 'SIGLAUFCOBID'
      Size = 2
    end
    object cdsEntidadePAISCOB: TStringField
      FieldName = 'PAISCOB'
      Size = 72
    end
    object cdsEntidadeCEPINSTID: TBCDField
      FieldName = 'CEPINSTID'
      OnValidate = cdsEntidadeCEPINSTIDValidate
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsEntidadeNUMEROINST: TStringField
      FieldName = 'NUMEROINST'
    end
    object cdsEntidadeCOMPLEMENTOINST: TStringField
      FieldName = 'COMPLEMENTOINST'
    end
    object cdsEntidadeENDERECOINST: TStringField
      FieldName = 'ENDERECOINST'
      Size = 100
    end
    object cdsEntidadeBAIRROINST: TStringField
      FieldName = 'BAIRROINST'
      Size = 72
    end
    object cdsEntidadeCIDADEINST: TStringField
      FieldName = 'CIDADEINST'
      Size = 72
    end
    object cdsEntidadeSIGLAUFINSTID: TStringField
      FieldName = 'SIGLAUFINSTID'
      Size = 2
    end
    object cdsEntidadeCONTATOINST: TStringField
      FieldName = 'CONTATOINST'
      Size = 100
    end
    object cdsEntidadeCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object cdsEntidadeCONTATOCOB: TStringField
      FieldName = 'CONTATOCOB'
      Size = 100
    end
    object cdsEntidadePAISINST: TStringField
      FieldName = 'PAISINST'
      Size = 72
    end
    object cdsEntidadeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 70
    end
    object cdsEntidadeTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 70
    end
    object cdsEntidadeTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
      Size = 70
    end
    object cdsEntidadeCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object cdsEntidadeCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object cdsEntidadeCELULAR3: TStringField
      FieldName = 'CELULAR3'
    end
    object cdsEntidadeFAX: TStringField
      FieldName = 'FAX'
    end
    object cdsEntidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsEntidadeEMAILNFE: TStringField
      FieldName = 'EMAILNFE'
      Size = 100
    end
    object cdsEntidadePAGINA: TStringField
      FieldName = 'PAGINA'
      Size = 100
    end
    object cdsEntidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsEntidadeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsEntidadeRG: TStringField
      FieldName = 'RG'
      Size = 12
    end
    object cdsEntidadeRGORGAOEMISSOR: TStringField
      FieldName = 'RGORGAOEMISSOR'
      Size = 10
    end
    object cdsEntidadeHABILITACAO: TStringField
      FieldName = 'HABILITACAO'
      Size = 10
    end
    object cdsEntidadeVALIDADEHABILITACAO: TSQLTimeStampField
      FieldName = 'VALIDADEHABILITACAO'
    end
    object cdsEntidadeCRM: TStringField
      FieldName = 'CRM'
      Size = 15
    end
    object cdsEntidadeCRMORGAOEMISSOR: TStringField
      FieldName = 'CRMORGAOEMISSOR'
      Size = 10
    end
    object cdsEntidadeCARGOID: TBCDField
      FieldName = 'CARGOID'
      OnValidate = cdsEntidadeCARGOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEntidadeL_DESCRICAOCARGO: TStringField
      FieldName = 'L_DESCRICAOCARGO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeFILIALID: TBCDField
      FieldName = 'FILIALID'
      OnValidate = cdsEntidadeFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEntidadeL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsEntidadeDEPARTAMENTOID: TBCDField
      FieldName = 'DEPARTAMENTOID'
      OnValidate = cdsEntidadeDEPARTAMENTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEntidadeL_DESCRICAODEPTO: TStringField
      FieldName = 'L_DESCRICAODEPTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsEntidadeHORASCFGTRABID: TBCDField
      FieldName = 'HORASCFGTRABID'
      OnValidate = cdsEntidadeHORASCFGTRABIDValidate
      Precision = 8
      Size = 0
    end
    object cdsEntidadeL_DESCRICAOHORASCFGTRAB: TStringField
      FieldName = 'L_DESCRICAOHORASCFGTRAB'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsEntidadesqldtsEntidadeGrupo: TDataSetField
      FieldName = 'sqldtsEntidadeGrupo'
    end
    object cdsEntidadesqldtsEntidadeDepto: TDataSetField
      FieldName = 'sqldtsEntidadeDepto'
    end
  end
  object cdsEntidadeGrupo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEntidadesqldtsEntidadeGrupo
    Params = <>
    AfterPost = cdsEntidadeGrupoAfterPost
    AfterDelete = cdsEntidadeGrupoAfterDelete
    OnNewRecord = cdsEntidadeGrupoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 85
    object cdsEntidadeGrupoL_DESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeGrupoUSUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsEntidadeGrupoENTIDADEID: TBCDField
      DisplayWidth = 9
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsEntidadeGrupoCATEGORIAID: TBCDField
      DisplayWidth = 9
      FieldName = 'CATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnValidate = cdsEntidadeGrupoCATEGORIAIDValidate
      Precision = 8
      Size = 0
    end
  end
  object dsEntidade: TDataSource
    AutoEdit = False
    DataSet = cdsEntidade
    Left = 327
    Top = 42
  end
  object dsEntidadeGrupo: TDataSource
    AutoEdit = False
    DataSet = cdsEntidadeGrupo
    Left = 327
    Top = 86
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvEmpresa'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsEmpresaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 66
    Top = 65535
    object cdsEmpresaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsEmpresaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 60
    end
    object cdsEmpresaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      OnGetText = cdsEmpresaCPF_CNPJGetText
      OnValidate = cdsEmpresaCPF_CNPJValidate
      Size = 18
    end
    object cdsEmpresaINSCRMUNICIPAL: TStringField
      FieldName = 'INSCRMUNICIPAL'
    end
    object cdsEmpresaINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
    end
    object cdsEmpresaBLOQUEAR: TBCDField
      FieldName = 'BLOQUEAR'
      Precision = 1
      Size = 0
    end
    object cdsEmpresaDIRETORIO: TStringField
      FieldName = 'DIRETORIO'
      Size = 100
    end
    object cdsEmpresaCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsEmpresaSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsEmpresaNUMNF: TBCDField
      FieldName = 'NUMNF'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMNF3: TBCDField
      FieldName = 'NUMNF3'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMPRODUTO: TBCDField
      FieldName = 'NUMPRODUTO'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMDUPLICATA: TBCDField
      FieldName = 'NUMDUPLICATA'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMPDE: TBCDField
      FieldName = 'NUMPDE'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMPDS: TBCDField
      FieldName = 'NUMPDS'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMTRANSFCONSUMO: TBCDField
      FieldName = 'NUMTRANSFCONSUMO'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaNUMNSU: TFMTBCDField
      FieldName = 'NUMNSU'
      Precision = 32
    end
    object cdsEmpresaNUMRPS: TBCDField
      FieldName = 'NUMRPS'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaMODELOIMPRESSAONOTA: TBCDField
      FieldName = 'MODELOIMPRESSAONOTA'
      Precision = 8
      Size = 0
    end
    object cdsEmpresaALIQUOTAISS: TFMTBCDField
      FieldName = 'ALIQUOTAISS'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 14
      Size = 6
    end
    object cdsEmpresaALIQUOTAICMSNAOCONTRIB: TFMTBCDField
      FieldName = 'ALIQUOTAICMSNAOCONTRIB'
      DisplayFormat = '#0.00'
      EditFormat = '#0.00'
      Precision = 14
      Size = 6
    end
    object cdsEmpresaNUMEMPRESAEXP: TBCDField
      FieldName = 'NUMEMPRESAEXP'
      Precision = 8
      Size = 2
    end
    object cdsEmpresaSIGLADUPLICATA: TStringField
      FieldName = 'SIGLADUPLICATA'
      Size = 2
    end
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = cdsEmpresa
    Left = 159
    Top = 65535
  end
  object cdsNfs: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNfs'
    RemoteServer = shdcnnEF
    AfterPost = cdsNfsAfterPost
    AfterDelete = cdsNfsAfterDelete
    OnNewRecord = cdsNfsNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 315
    object cdsNfsEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      OnValidate = cdsNfsENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNfsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsNfsPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsNfsREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
    end
    object cdsNfsDESCRICAOPRENOTA: TMemoField
      FieldName = 'DESCRICAOPRENOTA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsNfsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsNfsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsNfsLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object cdsNfsLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object cdsNfsLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object cdsNfsLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object cdsNfsLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object cdsNfsLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object cdsNfsNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsNfsTIPONOTAENTRADA: TStringField
      FieldName = 'TIPONOTAENTRADA'
      Size = 1
    end
    object cdsNfsEMPRESANFSREFID: TBCDField
      FieldName = 'EMPRESANFSREFID'
      Precision = 8
      Size = 0
    end
    object cdsNfsNFSREFID: TBCDField
      FieldName = 'NFSREFID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDATANFSREFID: TSQLTimeStampField
      FieldName = 'DATANFSREFID'
    end
    object cdsNfsTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object cdsNfsCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object cdsNfsCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsNfsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsNfsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsNfsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsNfsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsNfsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsNfsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsNfsPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsNfsENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 100
    end
    object cdsNfsENDERECOCOBRANCA: TStringField
      FieldName = 'ENDERECOCOBRANCA'
      Size = 100
    end
    object cdsNfsCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsNfsNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsNfsNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNfsCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object cdsNfsEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsNfsL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsNfsL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsL_CONDICAOPAGTO: TStringField
      FieldName = 'L_CONDICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object cdsNfsL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object cdsNfsMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object cdsNfsVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 14
      Size = 2
    end
    object cdsNfsEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object cdsNfsEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object cdsNfsEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object cdsNfsEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfsEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 14
      Size = 6
    end
    object cdsNfsREEID: TBCDField
      FieldName = 'REEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsDDEID: TBCDField
      FieldName = 'DDEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsNF_E1ID: TFMTBCDField
      FieldName = 'NF_E1ID'
      Precision = 32
    end
    object cdsNfsNSUID: TFMTBCDField
      FieldName = 'NSUID'
      Precision = 32
    end
    object cdsNfsVLRTOTALSERVICO: TBCDField
      FieldName = 'VLRTOTALSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALISS: TBCDField
      FieldName = 'VLRTOTALISS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALRETCOFINS: TBCDField
      FieldName = 'VLRTOTALRETCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALRETPIS: TBCDField
      FieldName = 'VLRTOTALRETPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALRETCSLL: TBCDField
      FieldName = 'VLRTOTALRETCSLL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALRETIRPJ: TBCDField
      FieldName = 'VLRTOTALRETIRPJ'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALRETIRPF: TBCDField
      FieldName = 'VLRTOTALRETIRPF'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object cdsNfsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfssqldtsNfsServico: TDataSetField
      FieldName = 'sqldtsNfsServico'
    end
    object cdsNfssqldtsNfsParcela: TDataSetField
      FieldName = 'sqldtsNfsParcela'
    end
    object cdsNfssqldtsNfsItem: TDataSetField
      FieldName = 'sqldtsNfsItem'
    end
  end
  object cdsNfsItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfssqldtsNfsItem
    IndexFieldNames = 'EMPRESAID;DATAEMISSAOID;NFSID;ITEMID'
    Params = <>
    AfterPost = cdsNfsItemAfterPost
    AfterDelete = cdsNfsItemAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 359
    object cdsNfsItemEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemNFSID: TBCDField
      Tag = 1
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDATAEMISSAOID: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemNATUREZAOPID: TBCDField
      Tag = 2
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemOBSERVACAOID: TBCDField
      Tag = 2
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDESCRICAOOBSERVACAO: TMemoField
      Tag = 2
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsNfsItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 20
    end
    object cdsNfsItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 6
    end
    object cdsNfsItemVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRPRECOUNITDESC: TBCDField
      FieldName = 'VLRPRECOUNITDESC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRPRECOTOTALDESC: TBCDField
      FieldName = 'VLRPRECOTOTALDESC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsNfsItemEMPENHO: TBCDField
      Tag = 1
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object cdsNfsItemQUANTIDADEEMPENHO: TBCDField
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 8
      Size = 2
    end
    object cdsNfsItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object cdsNfsItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object cdsNfsItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object cdsNfsItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object cdsNfsItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object cdsNfsItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object cdsNfsItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsNfsItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsNfsItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object cdsNfsItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsNfsItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      EditMask = '>9999.99.99;0; '
      Size = 10
    end
    object cdsNfsItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object cdsNfsItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsNfsItemsqldtsNfsItemBar: TDataSetField
      FieldName = 'sqldtsNfsItemBar'
    end
  end
  object cdsNfsParcela: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfssqldtsNfsParcela
    IndexFieldNames = 'EMPRESAID;NFSID;DATAEMISSAOID;PARCELAID'
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 448
    object cdsNfsParcelaEMPRESAID: TBCDField
      Tag = 3
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaNFSID: TBCDField
      Tag = 3
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsParcelaDATAEMISSAOID: TSQLTimeStampField
      Tag = 3
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsParcelaPARCELAID: TBCDField
      Tag = 3
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsNfsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsNfsServico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfssqldtsNfsServico
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 493
    object cdsNfsServicoEMPRESAID: TBCDField
      Tag = 3
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoNFSID: TBCDField
      Tag = 3
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoDATAEMISSAOID: TSQLTimeStampField
      Tag = 3
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsServicoITEMID: TBCDField
      Tag = 3
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsServicoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsNfsServicoL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNfsServicoDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsNfsServicoVLRISS: TBCDField
      FieldName = 'VLRISS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object cdsNfsServicoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object cdsNfsServicoVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETPIS: TBCDField
      FieldName = 'VLRRETPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETCOFINS: TBCDField
      FieldName = 'VLRRETCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETCSLL: TBCDField
      FieldName = 'VLRRETCSLL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETIRPJ: TBCDField
      FieldName = 'VLRRETIRPJ'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoVLRRETIRPF: TBCDField
      FieldName = 'VLRRETIRPF'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsNfsServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfs: TDataSource
    AutoEdit = False
    DataSet = cdsNfs
    Left = 805
    Top = 315
  end
  object dsNfsItem: TDataSource
    AutoEdit = False
    DataSet = cdsNfsItem
    Left = 805
    Top = 359
  end
  object dsNfsParcela: TDataSource
    AutoEdit = False
    DataSet = cdsNfsParcela
    Left = 805
    Top = 448
  end
  object dsNfsServico: TDataSource
    AutoEdit = False
    DataSet = cdsNfsServico
    Left = 805
    Top = 493
  end
  object cdsPds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvPds'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    BeforeDelete = cdsPdsBeforeDelete
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsPdsNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 65533
    object cdsPdsEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsPdsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPdsL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      EditMask = '>c.ccc;0; '
      Size = 4
    end
    object cdsPdsL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsPdsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      OnValidate = cdsPdsLIBCHEFIAValidate
      Precision = 1
      Size = 0
    end
    object cdsPdsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsPdsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsPdsLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      OnValidate = cdsPdsLIBFINANCEIROValidate
      Precision = 1
      Size = 0
    end
    object cdsPdsLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object cdsPdsLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object cdsPdsLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      OnValidate = cdsPdsLIBCONTABILValidate
      Precision = 1
      Size = 0
    end
    object cdsPdsLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object cdsPdsLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object cdsPdsPRENOTA: TBCDField
      FieldName = 'PRENOTA'
      Precision = 1
      Size = 0
    end
    object cdsPdsDESCRICAOPRENOTA: TMemoField
      FieldName = 'DESCRICAOPRENOTA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdsSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object cdsPdsNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object cdsPdsDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsPdsTIPONOTAENTRADA: TStringField
      FieldName = 'TIPONOTAENTRADA'
      Size = 1
    end
    object cdsPdsEMPRESANFSREFID: TBCDField
      FieldName = 'EMPRESANFSREFID'
      Precision = 8
      Size = 0
    end
    object cdsPdsNFSREFID: TBCDField
      FieldName = 'NFSREFID'
      Precision = 8
      Size = 0
    end
    object cdsPdsDATANFSREFID: TSQLTimeStampField
      FieldName = 'DATANFSREFID'
    end
    object cdsPdsTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object cdsPdsCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object cdsPdsENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      OnValidate = cdsPdsENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsPdsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsPdsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsPdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsPdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsPdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsPdsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPdsPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsPdsCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object cdsPdsENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 100
    end
    object cdsPdsENDERECOCOBRANCA: TStringField
      FieldName = 'ENDERECOCOBRANCA'
      Size = 100
    end
    object cdsPdsNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Required = True
      OnValidate = cdsPdsNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      OnValidate = cdsPdsCONDPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsL_CONDICAOPAGTO: TStringField
      FieldName = 'L_CONDICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdsOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      OnValidate = cdsPdsOBSERVACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdsTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      OnValidate = cdsPdsTRANSPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object cdsPdsMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object cdsPdsVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      OnValidate = cdsPdsVLRFRETEValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      OnValidate = cdsPdsVLRFRETEValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      OnValidate = cdsPdsVLRFRETEValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object cdsPdsEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object cdsPdsEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object cdsPdsEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object cdsPdsEMBPESOBRUTO: TBCDField
      FieldName = 'EMBPESOBRUTO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 8
      Size = 3
    end
    object cdsPdsEMBPESOLIQUIDO: TBCDField
      FieldName = 'EMBPESOLIQUIDO'
      DisplayFormat = '##0.0000'
      EditFormat = '##0.0000'
      Precision = 8
      Size = 3
    end
    object cdsPdsVLRTOTALSERVICO: TBCDField
      FieldName = 'VLRTOTALSERVICO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALISS: TBCDField
      FieldName = 'VLRTOTALISS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALRETCOFINS: TBCDField
      FieldName = 'VLRTOTALRETCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALRETPIS: TBCDField
      FieldName = 'VLRTOTALRETPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALRETCSLL: TBCDField
      FieldName = 'VLRTOTALRETCSLL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALRETIRPJ: TBCDField
      FieldName = 'VLRTOTALRETIRPJ'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALRETIRPF: TBCDField
      FieldName = 'VLRTOTALRETIRPF'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPdssqldtsPdsServico: TDataSetField
      FieldName = 'sqldtsPdsServico'
    end
    object cdsPdssqldtsPdsParcela: TDataSetField
      FieldName = 'sqldtsPdsParcela'
    end
    object cdsPdssqldtsPdsItem: TDataSetField
      FieldName = 'sqldtsPdsItem'
    end
  end
  object cdsPdsItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdssqldtsPdsItem
    IndexFieldNames = 'EMPRESAID;PDSID;ITEMID'
    Params = <>
    BeforeInsert = cdsPdsItemBeforeInsert
    BeforeEdit = cdsPdsItemBeforeEdit
    BeforePost = cdsPdsItemBeforePost
    AfterPost = cdsPdsItemAfterPost
    BeforeDelete = cdsPdsItemBeforeDelete
    AfterDelete = cdsPdsItemAfterDelete
    OnNewRecord = cdsPdsItemNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 41
    object cdsPdsItemEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemPDSID: TBCDField
      Tag = 1
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemOBSERVACAOID: TBCDField
      Tag = 2
      FieldName = 'OBSERVACAOID'
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsPdsItemNATUREZAOPID: TBCDField
      Tag = 2
      FieldName = 'NATUREZAOPID'
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsPdsItemDESCRICAOOBSERVACAO: TMemoField
      Tag = 2
      FieldName = 'DESCRICAOOBSERVACAO'
      Visible = False
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdsItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsPdsItemPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsItemDESCRICAOPRODUTO: TStringField
      Tag = 1
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsPdsItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnValidate = cdsPdsItemQUANTIDADEValidate
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsPdsItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      OnValidate = cdsPdsItemVLRPRECOUNITARIOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLRPRECOTOTAL: TBCDField
      Tag = 1
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      OnValidate = cdsPdsItemPORCDESCONTOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 6
    end
    object cdsPdsItemVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLRPRECOUNITDESC: TBCDField
      FieldName = 'VLRPRECOUNITDESC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLRPRECOTOTALDESC: TBCDField
      FieldName = 'VLRPRECOTOTALDESC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '#0'
      EditFormat = '#0'
      Precision = 14
      Size = 6
    end
    object cdsPdsItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object cdsPdsItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 6
    end
    object cdsPdsItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemTIPOIPI: TStringField
      Tag = 1
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object cdsPdsItemSITTRIBUTARIAFEDERAL: TBCDField
      Tag = 1
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 6
    end
    object cdsPdsItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 8
      Size = 6
    end
    object cdsPdsItemARTIGO: TStringField
      Tag = 1
      FieldName = 'ARTIGO'
      Size = 200
    end
    object cdsPdsItemDATAINICIALIPI: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAINICIALIPI'
    end
    object cdsPdsItemQTDRETORNA: TBCDField
      Tag = 1
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemRETORNO: TStringField
      Tag = 1
      FieldName = 'RETORNO'
      Size = 2
    end
    object cdsPdsItemQUANTIDADEEMPENHO: TFMTBCDField
      Tag = 1
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 14
    end
    object cdsPdsItemEMPENHOITEMID: TBCDField
      Tag = 1
      FieldName = 'EMPENHOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemEMPENHO: TBCDField
      Tag = 1
      FieldName = 'EMPENHO'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemDATAEMISSAONFEID: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsPdsItemNFEID: TBCDField
      Tag = 1
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemDATAFINALIPI: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAFINALIPI'
    end
    object cdsPdsItemPRODINCENTIVADO: TBCDField
      Tag = 1
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object cdsPdsItemESTOQUEUTILIZADO: TStringField
      Tag = 1
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsPdsItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsPdsItemL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPdsItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      Size = 3
    end
    object cdsPdsItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsPdsItemsqldtsPdsItemBar: TDataSetField
      FieldName = 'sqldtsPdsItemBar'
    end
  end
  object cdsPdsParcela: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdssqldtsPdsParcela
    IndexFieldNames = 'EMPRESAID;PDSID;PARCELAID'
    FetchOnDemand = False
    Params = <>
    AfterPost = cdsPdsParcelaAfterPost
    AfterDelete = cdsPdsParcelaAfterDelete
    OnNewRecord = cdsPdsParcelaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 130
    object cdsPdsParcelaEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsParcelaPDSID: TBCDField
      Tag = 1
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsParcelaDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPdsParcelaVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsParcelaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsPdsServico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdssqldtsPdsServico
    Params = <>
    BeforePost = cdsPdsServicoBeforePost
    AfterPost = cdsPdsServicoAfterPost
    AfterDelete = cdsPdsServicoAfterDelete
    OnNewRecord = cdsPdsServicoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 712
    Top = 174
    object cdsPdsServicoEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsServicoPDSID: TBCDField
      Tag = 1
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsServicoITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      OnValidate = cdsPdsServicoSERVICOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPdsServicoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPdsServicoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPdsServicoL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsServicoDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdsServicoVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      OnValidate = cdsPdsServicoVLRSERVICOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoVLRISS: TBCDField
      Tag = 1
      FieldName = 'VLRISS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoALIQUOTAPIS: TFMTBCDField
      Tag = 1
      FieldName = 'ALIQUOTAPIS'
      Precision = 8
      Size = 6
    end
    object cdsPdsServicoVLRPIS: TBCDField
      Tag = 1
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoALIQUOTACOFINS: TFMTBCDField
      Tag = 1
      FieldName = 'ALIQUOTACOFINS'
      Precision = 8
      Size = 6
    end
    object cdsPdsServicoVLRCOFINS: TBCDField
      Tag = 1
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoVLRRETPIS: TBCDField
      Tag = 1
      FieldName = 'VLRRETPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoVLRRETCOFINS: TBCDField
      Tag = 1
      FieldName = 'VLRRETCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoVLRRETCSLL: TBCDField
      Tag = 1
      FieldName = 'VLRRETCSLL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoVLRRETIRPJ: TBCDField
      FieldName = 'VLRRETIRPJ'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoVLRRETIRPF: TBCDField
      FieldName = 'VLRRETIRPF'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPdsServicoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPds: TDataSource
    AutoEdit = False
    DataSet = cdsPds
    Left = 805
    Top = 65533
  end
  object dsPdsItem: TDataSource
    AutoEdit = False
    DataSet = cdsPdsItem
    Left = 805
    Top = 41
  end
  object dsPdsParcela: TDataSource
    AutoEdit = False
    DataSet = cdsPdsParcela
    Left = 805
    Top = 130
  end
  object dsPdsServico: TDataSource
    AutoEdit = False
    DataSet = cdsPdsServico
    Left = 805
    Top = 174
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvProduto'
    RemoteServer = shdcnnEF
    BeforePost = cdsProdutoBeforePost
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnCalcFields = cdsProdutoCalcFields
    OnNewRecord = cdsProdutoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 138
    object cdsProdutoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProdutoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsProdutoEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoPARTNUMBERID: TStringField
      FieldName = 'PARTNUMBERID'
    end
    object cdsProdutoL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      Size = 60
    end
    object cdsProdutoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object cdsProdutoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsProdutoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object cdsProdutoATIVO: TBCDField
      FieldName = 'ATIVO'
      Precision = 1
      Size = 0
    end
    object cdsProdutoNOVOUSADO: TStringField
      FieldName = 'NOVOUSADO'
      LookupDataSet = cdsBanco
      Size = 1
    end
    object cdsProdutoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      OnValidate = cdsProdutoGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutoL_DESCRICAO_GRUPO: TStringField
      FieldName = 'L_DESCRICAO_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdutoSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      OnValidate = cdsProdutoSUBGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_DESCRICAO_SUBGRUPO: TStringField
      FieldName = 'L_DESCRICAO_SUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdutoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      OnValidate = cdsProdutoFORNECEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdutoTIPOITEMID: TBCDField
      FieldName = 'TIPOITEMID'
      OnValidate = cdsProdutoTIPOITEMIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_DESCRICAOTIPOITEM: TStringField
      FieldName = 'L_DESCRICAOTIPOITEM'
      Size = 40
    end
    object cdsProdutoGENEROITEMID: TBCDField
      FieldName = 'GENEROITEMID'
      OnValidate = cdsProdutoGENEROITEMIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_DESCRICAOGENEROITEM: TStringField
      FieldName = 'L_DESCRICAOGENEROITEM'
      Size = 40
    end
    object cdsProdutoGERACODBARRA: TBCDField
      FieldName = 'GERACODBARRA'
      Precision = 1
      Size = 0
    end
    object cdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object cdsProdutoUNIDADEID: TStringField
      FieldName = 'UNIDADEID'
      OnValidate = cdsProdutoUNIDADEIDValidate
      Size = 3
    end
    object cdsProdutoL_DESCRICAOUNIDADE: TStringField
      FieldName = 'L_DESCRICAOUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsProdutoPESO: TFMTBCDField
      FieldName = 'PESO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 14
      Size = 6
    end
    object cdsProdutoCUBAGEM: TFMTBCDField
      FieldName = 'CUBAGEM'
      Precision = 14
      Size = 6
    end
    object cdsProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 30
    end
    object cdsProdutoMODELOID: TStringField
      FieldName = 'MODELOID'
      OnValidate = cdsProdutoMODELOIDValidate
      Size = 40
    end
    object cdsProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsProdutoEMPRESASIMILARID: TBCDField
      FieldName = 'EMPRESASIMILARID'
      OnValidate = cdsProdutoEMPRESASIMILARIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_NOMEFANTASIASIMILAR: TStringField
      FieldName = 'L_NOMEFANTASIASIMILAR'
      Size = 60
    end
    object cdsProdutoPRODUTOSIMILARID: TBCDField
      FieldName = 'PRODUTOSIMILARID'
      OnValidate = cdsProdutoPRODUTOSIMILARIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProdutoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsProdutoNCMID: TStringField
      FieldName = 'NCMID'
      EditMask = '>9999.99.99;0; '
      Size = 10
    end
    object cdsProdutoDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Size = 300
    end
    object cdsProdutoINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object cdsProdutoREDUCAOICMS: TFMTBCDField
      FieldName = 'REDUCAOICMS'
      Precision = 8
      Size = 6
    end
    object cdsProdutoALIQUOTAII: TFMTBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 6
    end
    object cdsProdutoDATAINICIALII: TSQLTimeStampField
      FieldName = 'DATAINICIALII'
    end
    object cdsProdutoDATAFINALII: TSQLTimeStampField
      FieldName = 'DATAFINALII'
    end
    object cdsProdutoALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object cdsProdutoDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object cdsProdutoDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object cdsProdutoSUSPENSAOIPI: TBCDField
      FieldName = 'SUSPENSAOIPI'
      OnValidate = cdsProdutoSUSPENSAOIPIValidate
      Precision = 1
      Size = 0
    end
    object cdsProdutoISENTOIPI: TBCDField
      FieldName = 'ISENTOIPI'
      OnValidate = cdsProdutoISENTOIPIValidate
      Precision = 1
      Size = 0
    end
    object cdsProdutoCONTACTBATIVO: TStringField
      FieldName = 'CONTACTBATIVO'
      Size = 10
    end
    object cdsProdutoCONTACTBDESPESA: TStringField
      FieldName = 'CONTACTBDESPESA'
      Size = 10
    end
    object cdsProdutoCONTACTBRECEITA: TStringField
      FieldName = 'CONTACTBRECEITA'
      Size = 10
    end
    object cdsProdutoCUSTOMEDIOUS: TBCDField
      FieldName = 'CUSTOMEDIOUS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoCUSTOTOTAL: TBCDField
      FieldName = 'CUSTOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoPRECOVENDAMINIMO: TBCDField
      FieldName = 'PRECOVENDAMINIMO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoC_PRECOVENDA_IPI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_PRECOVENDA_IPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutoC_PRECOVENDAMININO_IPI: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_PRECOVENDAMININO_IPI'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsProdutoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProdutoESTOQUENOVO: TBCDField
      FieldName = 'ESTOQUENOVO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEREVISADO: TBCDField
      FieldName = 'ESTOQUEREVISADO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEDEMO: TBCDField
      FieldName = 'ESTOQUEDEMO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEPEDENTRADA: TBCDField
      FieldName = 'ESTOQUEPEDENTRADA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEPEDSAIDA: TBCDField
      FieldName = 'ESTOQUEPEDSAIDA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'ESTOQUEEMTERCEIRO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEDETERCEIRO: TBCDField
      FieldName = 'ESTOQUEDETERCEIRO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEEMPENHO: TBCDField
      FieldName = 'ESTOQUEEMPENHO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEVALE: TBCDField
      FieldName = 'ESTOQUEVALE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEESTORNO: TBCDField
      FieldName = 'ESTOQUEESTORNO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUERESERVA: TBCDField
      FieldName = 'ESTOQUERESERVA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoESTOQUETOTAL: TBCDField
      FieldName = 'ESTOQUETOTAL'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsProdutoNCM2ID: TStringField
      FieldName = 'NCM2ID'
      Size = 10
    end
    object cdsProdutoNCM3ID: TStringField
      FieldName = 'NCM3ID'
      Size = 10
    end
    object cdsProdutoDATANCM: TSQLTimeStampField
      FieldName = 'DATANCM'
    end
    object cdsProdutoDATANCM2: TSQLTimeStampField
      FieldName = 'DATANCM2'
    end
    object cdsProdutoDATANCM3: TSQLTimeStampField
      FieldName = 'DATANCM3'
    end
    object cdsProdutoALIQUOTATEMPIPI: TFMTBCDField
      FieldName = 'ALIQUOTATEMPIPI'
      Precision = 14
      Size = 6
    end
    object cdsProdutoALIQUOTATEMPII: TFMTBCDField
      FieldName = 'ALIQUOTATEMPII'
      Precision = 14
      Size = 6
    end
    object cdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsProdutosqldtsProdutoItem: TDataSetField
      FieldName = 'sqldtsProdutoItem'
    end
  end
  object cdsProdutoItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosqldtsProdutoItem
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsProdutoItemNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 180
    object cdsProdutoItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProdutoItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProdutoItemPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProdutoItemDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
    end
    object cdsProdutoItemCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 15
    end
    object cdsProdutoItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsProdutoItemREVISAO: TBCDField
      FieldName = 'REVISAO'
      Precision = 2
      Size = 0
    end
    object cdsProdutoItemDATAULTIMAREVISAO: TSQLTimeStampField
      FieldName = 'DATAULTIMAREVISAO'
    end
    object cdsProdutoItemTIPOPRODUTO: TStringField
      FieldName = 'TIPOPRODUTO'
      Size = 1
    end
    object cdsProdutoItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsProdutoItemQTDUTILIZADA: TBCDField
      FieldName = 'QTDUTILIZADA'
      Precision = 8
      Size = 2
    end
    object cdsProdutoItemSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsProdutoItemINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object cdsProdutoItemNCMID: TStringField
      FieldName = 'NCMID'
      Size = 10
    end
    object cdsProdutoItemDATANCM: TSQLTimeStampField
      FieldName = 'DATANCM'
    end
    object cdsProdutoItemOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsProdutoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = cdsProduto
    Left = 483
    Top = 138
  end
  object dsProdutoItem: TDataSource
    AutoEdit = False
    DataSet = cdsProdutoItem
    Left = 483
    Top = 180
  end
  object shdcnnEF: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppEF'
    Left = 12
  end
  object cdsPdeItemBar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdeItemsqldtsPdeItemBar
    Params = <>
    AfterPost = cdsPdeItemBarAfterPost
    AfterDelete = cdsPdeItemBarAfterDelete
    OnNewRecord = cdsPdeItemBarNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 86
    object cdsPdeItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemBarPDEID: TBCDField
      FieldName = 'PDEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdeItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsPdeItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsPdeItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsPdeItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object cdsPdeItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsPdeItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsPdeItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPdeItemBar: TDataSource
    AutoEdit = False
    DataSet = cdsPdeItemBar
    Left = 627
    Top = 86
  end
  object cdsNfeItemBar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfeItemsqldtsNfeItemBar
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 222
    object cdsNfeItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfeItemBarENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsNfeItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsNfeItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object cdsNfeItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsNfeItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsNfeItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfeItemBar: TDataSource
    AutoEdit = False
    DataSet = cdsNfeItemBar
    Left = 627
    Top = 222
  end
  object cdsPdsItemBar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdsItemsqldtsPdsItemBar
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 86
    object cdsPdsItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemBarPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsPdsItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsPdsItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object cdsPdsItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsPdsItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsPdsItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPdsItemBar: TDataSource
    AutoEdit = False
    DataSet = cdsPdsItemBar
    Left = 805
    Top = 86
  end
  object cdsNfsItemBar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsNfsItemsqldtsNfsItemBar
    Params = <>
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnReconcileError = cdsEmpresaReconcileError
    Left = 710
    Top = 402
    object cdsNfsItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfsItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object cdsNfsItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsNfsItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object cdsNfsItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsNfsItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsNfsItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfsItemBar: TDataSource
    AutoEdit = False
    DataSet = cdsNfsItemBar
    Left = 805
    Top = 402
  end
  object cdsModeloDocFiscal: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvModeloDocFiscal'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 67
    Top = 173
    object cdsModeloDocFiscalMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsModeloDocFiscalMODELO: TStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object cdsModeloDocFiscalUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsModeloDocFiscal: TDataSource
    AutoEdit = False
    DataSet = cdsModeloDocFiscal
    Left = 160
    Top = 173
  end
  object cdsCategJuridica: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCategJuridica'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 67
    Top = 261
    object cdsCategJuridicaCATEGJURIDICAID: TBCDField
      FieldName = 'CATEGJURIDICAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCategJuridicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCategJuridicaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsCategJuridica: TDataSource
    AutoEdit = False
    DataSet = cdsCategJuridica
    Left = 160
    Top = 261
  end
  object cdsNaturezaJuridica: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNaturezaJuridica'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 67
    Top = 305
    object cdsNaturezaJuridicaNATUREZAJURIDICAID: TBCDField
      FieldName = 'NATUREZAJURIDICAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNaturezaJuridicaCATEGJURIDICAID: TBCDField
      FieldName = 'CATEGJURIDICAID'
      OnValidate = cdsNaturezaJuridicaCATEGJURIDICAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsNaturezaJuridicaL_CATEGJURIDICA: TStringField
      FieldName = 'L_CATEGJURIDICA'
      ProviderFlags = []
      Size = 100
    end
    object cdsNaturezaJuridicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsNaturezaJuridicaIMPRIMIRDUPLICATA: TBCDField
      FieldName = 'IMPRIMIRDUPLICATA'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaJuridicaRETENCAO1: TBCDField
      FieldName = 'RETENCAO1'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaJuridicaRETENCAO2: TBCDField
      FieldName = 'RETENCAO2'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaJuridicaRETENCAO3: TBCDField
      FieldName = 'RETENCAO3'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaJuridicaRETENCAO4: TBCDField
      FieldName = 'RETENCAO4'
      Precision = 1
      Size = 0
    end
    object cdsNaturezaJuridicaALIQRETENCAOPIS: TBCDField
      FieldName = 'ALIQRETENCAOPIS'
      Precision = 14
      Size = 2
    end
    object cdsNaturezaJuridicaALIQRETENCAOCOFINS: TBCDField
      FieldName = 'ALIQRETENCAOCOFINS'
      Precision = 14
      Size = 2
    end
    object cdsNaturezaJuridicaALIQRETENCAOCSLL: TBCDField
      FieldName = 'ALIQRETENCAOCSLL'
      Precision = 14
      Size = 2
    end
    object cdsNaturezaJuridicaALIQRETENCAOIRPJ: TBCDField
      FieldName = 'ALIQRETENCAOIRPJ'
      Precision = 14
      Size = 2
    end
    object cdsNaturezaJuridicaALIQRETENCAOIRPF: TBCDField
      FieldName = 'ALIQRETENCAOIRPF'
      Precision = 14
      Size = 2
    end
    object cdsNaturezaJuridicaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsNaturezaJuridica: TDataSource
    AutoEdit = False
    DataSet = cdsNaturezaJuridica
    Left = 160
    Top = 305
  end
  object cdsEntidadeDepto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEntidadesqldtsEntidadeDepto
    Params = <>
    AfterPost = cdsEntidadeDeptoAfterPost
    AfterDelete = cdsEntidadeDeptoAfterDelete
    OnNewRecord = cdsEntidadeDeptoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 239
    Top = 133
    object cdsEntidadeDeptoL_DESCRICAO_DEPTO: TStringField
      DisplayWidth = 50
      FieldName = 'L_DESCRICAO_DEPTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsEntidadeDeptoUSUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsEntidadeDeptoENTIDADEID: TBCDField
      DisplayWidth = 9
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsEntidadeDeptoDEPARTAMENTOID: TBCDField
      DisplayWidth = 9
      FieldName = 'DEPARTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnValidate = cdsEntidadeDeptoDEPARTAMENTOIDValidate
      Precision = 8
      Size = 0
    end
  end
  object dsEntidadeDepto: TDataSource
    AutoEdit = False
    DataSet = cdsEntidadeDepto
    Left = 327
    Top = 134
  end
  object cdsInventario: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvInventario'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsInventarioNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 407
    Top = 307
    object cdsInventarioHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioL_DATAINVENTARIO: TSQLTimeStampField
      FieldName = 'L_DATAINVENTARIO'
      ProviderFlags = []
    end
    object cdsInventarioL_DESCR_INVENTARIO: TStringField
      FieldName = 'L_DESCR_INVENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioINVENTARIOID: TBCDField
      FieldName = 'INVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsInventarioPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsInventarioL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsInventarioL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsInventarioL_SUBGRUPOID: TBCDField
      FieldName = 'L_SUBGRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsInventarioL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsInventarioL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsInventarioL_ATIVO: TBCDField
      FieldName = 'L_ATIVO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object cdsInventarioDATAINVENTARIO: TSQLTimeStampField
      FieldName = 'DATAINVENTARIO'
    end
    object cdsInventarioESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object cdsInventarioL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUETOTAL: TBCDField
      FieldName = 'L_ESTOQUETOTAL'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioESTOQUEDIFERENCA: TBCDField
      FieldName = 'ESTOQUEDIFERENCA'
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEPEDENTRADA: TBCDField
      FieldName = 'L_ESTOQUEPEDENTRADA'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEPEDSAIDA: TBCDField
      FieldName = 'L_ESTOQUEPEDSAIDA'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'L_ESTOQUEEMTERCEIRO'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEDETERCEIRO: TBCDField
      FieldName = 'L_ESTOQUEDETERCEIRO'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEMINIMO: TBCDField
      FieldName = 'L_ESTOQUEMINIMO'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEEMPENHO: TBCDField
      FieldName = 'L_ESTOQUEEMPENHO'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEVALE: TBCDField
      FieldName = 'L_ESTOQUEVALE'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEESTORNO: TBCDField
      FieldName = 'L_ESTOQUEESTORNO'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_ESTOQUEQUARENTENA: TBCDField
      FieldName = 'L_ESTOQUEQUARENTENA'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object cdsInventarioL_CUSTOMEDIO: TBCDField
      FieldName = 'L_CUSTOMEDIO'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsInventarioL_CUSTOTOTAL: TBCDField
      FieldName = 'L_CUSTOTOTAL'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsInventarioL_VLRFOB: TBCDField
      FieldName = 'L_VLRFOB'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsInventarioDIFERENCASALDO: TBCDField
      FieldName = 'DIFERENCASALDO'
      Precision = 8
      Size = 0
    end
    object cdsInventarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsInventariosqldtsInventarioItem: TDataSetField
      FieldName = 'sqldtsInventarioItem'
    end
    object cdsInventarioA_CUSTOMEDIOAPURADO: TAggregateField
      FieldName = 'A_CUSTOMEDIOAPURADO'
      Active = True
      DisplayFormat = '##,###,##0.00'
      Expression = 'SUM((ESTOQUEDIFERENCA * L_CUSTOMEDIO ))'
    end
  end
  object dsInventario: TDataSource
    AutoEdit = False
    DataSet = cdsInventario
    Left = 487
    Top = 307
  end
  object cdsHistInventario: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvHistInventario'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsHistInventarioNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 407
    Top = 223
    object cdsHistInventarioHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHistInventarioDATAINVENTARIO: TSQLTimeStampField
      FieldName = 'DATAINVENTARIO'
    end
    object cdsHistInventarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsHistInventarioUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsHistInventario: TDataSource
    AutoEdit = False
    DataSet = cdsHistInventario
    Left = 487
    Top = 223
  end
  object cdsInventarioItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsInventariosqldtsInventarioItem
    PacketRecords = 1
    Params = <>
    RemoteServer = shdcnnEF
    AfterPost = cdsInventarioItemAfterPost
    AfterDelete = cdsInventarioItemAfterDelete
    Left = 408
    Top = 352
    object cdsInventarioItemHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioItemINVENTARIOID: TBCDField
      FieldName = 'INVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioItemTIPOCTGINVENTID: TBCDField
      FieldName = 'TIPOCTGINVENTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsInventarioItemTIPOCTGINVENTIDValidate
      Precision = 8
      Size = 0
    end
    object cdsInventarioItemL_TIPOCTGINVENT: TStringField
      FieldName = 'L_TIPOCTGINVENT'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioItemDATACFGFISICA: TSQLTimeStampField
      FieldName = 'DATACFGFISICA'
    end
    object cdsInventarioItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsInventarioItemREALIZADORID: TBCDField
      FieldName = 'REALIZADORID'
      OnValidate = cdsInventarioItemREALIZADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsInventarioItemL_NOME_REALIZADOR: TStringField
      FieldName = 'L_NOME_REALIZADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioItemDIGITADORID: TBCDField
      FieldName = 'DIGITADORID'
      OnValidate = cdsInventarioItemDIGITADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsInventarioItemL_NOME_DIGITADOR: TStringField
      FieldName = 'L_NOME_DIGITADOR'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsInventarioItem: TDataSource
    AutoEdit = False
    DataSet = cdsInventarioItem
    Left = 487
    Top = 352
  end
  object cdsTipoCtgInvent: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoCtgInvent'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsTipoCtgInventNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 264
    object cdsTipoCtgInventTIPOCTGINVENTID: TBCDField
      FieldName = 'TIPOCTGINVENTID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoCtgInventDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoCtgInventBLOQUEARDIGITACAO: TBCDField
      FieldName = 'BLOQUEARDIGITACAO'
      Precision = 1
      Size = 0
    end
    object cdsTipoCtgInventUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsTipoCtgInvent: TDataSource
    AutoEdit = False
    DataSet = cdsTipoCtgInvent
    Left = 488
    Top = 264
  end
  object cdsKdxTransf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvKdxTransf'
    RemoteServer = shdcnnEF
    OnCalcFields = cdsKardexCalcFields
    Left = 408
    Top = 488
    object cdsKdxTransfEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsKdxTransfKARDEXID: TBCDField
      FieldName = 'KARDEXID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsKdxTransfDATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'DATAOCORRENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsKdxTransfNUMDOCUMENTO: TBCDField
      FieldName = 'NUMDOCUMENTO'
      Precision = 8
      Size = 0
    end
    object cdsKdxTransfTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      Size = 3
    end
    object cdsKdxTransfTIPOESTOQUE: TStringField
      FieldName = 'TIPOESTOQUE'
      Size = 3
    end
    object cdsKdxTransfOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsKdxTransfDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsKdxTransfNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsKdxTransfL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object cdsKdxTransfL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsKdxTransfTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      Size = 1
    end
    object cdsKdxTransfPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsKdxTransfL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsKdxTransfQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfVLRCUSTOUNITARIO: TFMTBCDField
      FieldName = 'VLRCUSTOUNITARIO'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKdxTransfVLRCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOTOTAL'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKdxTransfQUANTIDADESALDO: TBCDField
      FieldName = 'QUANTIDADESALDO'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsKdxTransfVLRCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIO'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKdxTransfVLRCUSTOMEDIOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOTOTAL'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKdxTransfVLRCUSTOMEDIOANTERIOR: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOANTERIOR'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsKdxTransfESTOQUENOVO: TBCDField
      FieldName = 'ESTOQUENOVO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEREVISADO: TBCDField
      FieldName = 'ESTOQUEREVISADO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEPEDENTRADA: TBCDField
      FieldName = 'ESTOQUEPEDENTRADA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEPEDSAIDA: TBCDField
      FieldName = 'ESTOQUEPEDSAIDA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'ESTOQUEEMTERCEIRO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEDETERCEIRO: TBCDField
      FieldName = 'ESTOQUEDETERCEIRO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEEMPENHO: TBCDField
      FieldName = 'ESTOQUEEMPENHO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEVALE: TBCDField
      FieldName = 'ESTOQUEVALE'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEESTORNO: TBCDField
      FieldName = 'ESTOQUEESTORNO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfESTOQUETOTAL: TBCDField
      FieldName = 'ESTOQUETOTAL'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsKdxTransfC_QUANTIDADEENTRADA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_QUANTIDADEENTRADA'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
    end
    object cdsKdxTransfC_QUANTIDADESAIDA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'C_QUANTIDADESAIDA'
      ProviderFlags = []
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
    end
    object cdsKdxTransfC_VLRUNITENTRADA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRUNITENTRADA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKdxTransfC_VLRUNITSAIDA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRUNITSAIDA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKdxTransfC_VLRTOTALENTRADA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRTOTALENTRADA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKdxTransfC_VLRTOTALSAIDA: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_VLRTOTALSAIDA'
      ProviderFlags = []
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object cdsKdxTransfUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsKdxTransf: TDataSource
    AutoEdit = False
    DataSet = cdsKdxTransf
    Left = 488
    Top = 488
  end
  object dsPrecoTransf: TDataSource
    AutoEdit = False
    DataSet = cdsPrecoTransf
    Left = 488
    Top = 532
  end
  object cdsPrecoTransf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'pDatIni'
        ParamType = ptInput
        Value = '01/01/2004'
      end
      item
        DataType = ftString
        Name = 'pDatFim'
        ParamType = ptInput
        Value = '01/01/2004'
      end
      item
        DataType = ftString
        Name = 'pDatIni2'
        ParamType = ptInput
        Value = '01/01/2004'
      end
      item
        DataType = ftString
        Name = 'pDatFim2'
        ParamType = ptInput
        Value = '01/01/2004'
      end>
    ProviderName = 'dsprvPrecoTransf'
    RemoteServer = shdcnnEF
    Left = 408
    Top = 531
    object cdsPrecoTransfNFSID: TBCDField
      FieldName = 'NFSID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPrecoTransfDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      Required = True
    end
    object cdsPrecoTransfOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsPrecoTransfENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object cdsPrecoTransfNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsPrecoTransfCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsPrecoTransfSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsPrecoTransfNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsPrecoTransfCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsPrecoTransfDESCRICAOOPERACAONOTA: TStringField
      FieldName = 'DESCRICAOOPERACAONOTA'
      Size = 100
    end
    object cdsPrecoTransfEMP_SIMILARID: TFMTBCDField
      FieldName = 'EMP_SIMILARID'
      Precision = 32
    end
    object cdsPrecoTransfPROD_SIMILARID: TFMTBCDField
      FieldName = 'PROD_SIMILARID'
      Precision = 32
    end
    object cdsPrecoTransfDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsPrecoTransfQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
      Size = 0
    end
    object cdsPrecoTransfVLR_MEDIA_TOTAL: TFMTBCDField
      FieldName = 'VLR_MEDIA_TOTAL'
      Precision = 32
    end
    object cdsPrecoTransfVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPrecoTransfVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPrecoTransfVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPrecoTransfVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPrecoTransfALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 6
    end
    object cdsPrecoTransfVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsPrecoTransfPARTNUMBERID: TStringField
      FieldName = 'PARTNUMBERID'
    end
    object cdsPrecoTransfNCMID: TStringField
      FieldName = 'NCMID'
      Size = 10
    end
    object cdsPrecoTransfDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Size = 300
    end
    object cdsPrecoTransfQTD_MOV_PERIODO: TFMTBCDField
      FieldName = 'QTD_MOV_PERIODO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsPrecoTransfVLR_MOV_UNITARIA: TFMTBCDField
      FieldName = 'VLR_MOV_UNITARIA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsPrecoTransfVLR_MOV_TOTAL: TFMTBCDField
      FieldName = 'VLR_MOV_TOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsPrecoTransfVLRMEDIATOTALVENDAAPURADA: TFMTBCDField
      FieldName = 'VLRMEDIATOTALVENDAAPURADA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsPrecoTransfVLRCUSTOUNITARIO: TFMTBCDField
      FieldName = 'VLRCUSTOUNITARIO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsPrecoTransfVLRCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsPrecoTransfVLRPRECOTRANSF: TFMTBCDField
      FieldName = 'VLRPRECOTRANSF'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsPrecoTransfVLR_AJUSTE: TFMTBCDField
      FieldName = 'VLR_AJUSTE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
  end
  object cdsOpPrestInterestadual: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOpPrestInterestadual'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsContaContabilNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 240
    Top = 392
    object cdsOpPrestInterestadualORIGEMUFID: TStringField
      FieldName = 'ORIGEMUFID'
      Required = True
      Size = 2
    end
    object cdsOpPrestInterestadualL_DESCRICAOORIGEM: TStringField
      FieldName = 'L_DESCRICAOORIGEM'
      Size = 2
    end
    object cdsOpPrestInterestadualDESTINOUFID: TStringField
      FieldName = 'DESTINOUFID'
      Required = True
      Size = 2
    end
    object cdsOpPrestInterestadualL_DESCRICAODESTINO: TStringField
      FieldName = 'L_DESCRICAODESTINO'
      Size = 2
    end
    object cdsOpPrestInterestadualINTERNACIONAL: TBCDField
      FieldName = 'INTERNACIONAL'
      Precision = 1
      Size = 0
    end
    object cdsOpPrestInterestadualALIQUOTAICMSCONTRIB: TFMTBCDField
      FieldName = 'ALIQUOTAICMSCONTRIB'
      Precision = 14
      Size = 6
    end
    object cdsOpPrestInterestadualALIQUOTAICMSNAOCONTRIB: TFMTBCDField
      FieldName = 'ALIQUOTAICMSNAOCONTRIB'
      Precision = 14
      Size = 6
    end
    object cdsOpPrestInterestadualUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOpPrestInterestadual: TDataSource
    AutoEdit = False
    DataSet = cdsOpPrestInterestadual
    Left = 328
    Top = 392
  end
  object cdsPdsLogReserva: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPdsLogReserva'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsPdsLogReservaNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 712
    Top = 222
    object cdsPdsLogReservaEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaPDSID: TBCDField
      Tag = 1
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaLIBERADO: TBCDField
      Tag = 1
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsPdsLogReservaLIBUSUARIO: TStringField
      Tag = 1
      FieldName = 'LIBUSUARIO'
    end
    object cdsPdsLogReservaLOGRESERVA: TMemoField
      FieldName = 'LOGRESERVA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPdsLogReservaL_DATAPEDIDO: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDO'
      ProviderFlags = []
    end
    object cdsPdsLogReservaL_OSID: TStringField
      FieldName = 'L_OSID'
      ProviderFlags = []
      Size = 13
    end
    object cdsPdsLogReservaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsLogReservaL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object cdsPdsLogReservaL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object cdsPdsLogReservaL_NATUREZAOPID: TBCDField
      FieldName = 'L_NATUREZAOPID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaL_CONDPAGTOID: TBCDField
      FieldName = 'L_CONDPAGTOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaL_VLRTOTALPRODUTO: TBCDField
      FieldName = 'L_VLRTOTALPRODUTO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsPdsLogReservaL_VLRTOTALNOTA: TBCDField
      FieldName = 'L_VLRTOTALNOTA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsPdsLogReservaL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsLogReservaL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object cdsPdsLogReservaL_DESCRICAOCONDPAGTO: TStringField
      FieldName = 'L_DESCRICAOCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsPdsLogReservaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsPdsLogReservasqldtsPdsLogReservaItem: TDataSetField
      FieldName = 'sqldtsPdsLogReservaItem'
    end
  end
  object dsPdsLogReserva: TDataSource
    AutoEdit = False
    DataSet = cdsPdsLogReserva
    Left = 808
    Top = 222
  end
  object cdsPdsLogReservaItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPdsLogReservasqldtsPdsLogReservaItem
    Params = <>
    Left = 712
    Top = 272
    object cdsPdsLogReservaItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaItemPDSID: TBCDField
      FieldName = 'PDSID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaItemITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsPdsLogReservaItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsPdsLogReservaItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
    end
    object cdsPdsLogReservaItemL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      Size = 50
    end
    object cdsPdsLogReservaItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsPdsLogReservaItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object cdsPdsLogReservaItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
  end
  object dsPdsLogReservaItem: TDataSource
    AutoEdit = False
    DataSet = cdsPdsLogReservaItem
    Left = 808
    Top = 272
  end
  object cdsInventarioDig: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvInventarioDig'
    RemoteServer = shdcnnEF
    OnNewRecord = cdsInventarioDigNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 400
    object cdsInventarioDigHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigINVENTARIOID: TBCDField
      FieldName = 'INVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigTIPOCTGINVENTID: TBCDField
      FieldName = 'TIPOCTGINVENTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigL_TIPOCTGINVENT: TStringField
      FieldName = 'L_TIPOCTGINVENT'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioDigPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioDigL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsInventarioDigL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsInventarioDigL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsInventarioDigL_CUSTOMEDIO: TBCDField
      FieldName = 'L_CUSTOMEDIO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsInventarioDigL_CUSTOTOTAL: TBCDField
      FieldName = 'L_CUSTOTOTAL'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object cdsInventarioDigL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object cdsInventarioDigDATACFGFISICA: TSQLTimeStampField
      FieldName = 'DATACFGFISICA'
    end
    object cdsInventarioDigQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsInventarioDigREALIZADORID: TBCDField
      FieldName = 'REALIZADORID'
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigL_NOME_REALIZADOR: TStringField
      FieldName = 'L_NOME_REALIZADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioDigDIGITADORID: TBCDField
      FieldName = 'DIGITADORID'
      Precision = 8
      Size = 0
    end
    object cdsInventarioDigL_NOME_DIGITADOR: TStringField
      FieldName = 'L_NOME_DIGITADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsInventarioDigDIFERENCASALDO: TBCDField
      FieldName = 'DIFERENCASALDO'
      Precision = 8
      Size = 0
    end
  end
  object dsInventarioDig: TDataSource
    AutoEdit = False
    DataSet = cdsInventarioDig
    Left = 488
    Top = 400
  end
  object cdsBudget: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvBudget'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsBudgetNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 64
    Top = 528
    object cdsBudgetBUDGETID: TBCDField
      Tag = 3
      FieldName = 'BUDGETID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBudgetDATABUDGET: TSQLTimeStampField
      FieldName = 'DATABUDGET'
    end
    object cdsBudgetDESCRICAO_BUDGET: TStringField
      FieldName = 'DESCRICAO_BUDGET'
      Size = 100
    end
    object cdsBudgetSIGLA_DEPTO: TStringField
      FieldName = 'SIGLA_DEPTO'
      FixedChar = True
      Size = 3
    end
    object cdsBudgetIDENTIFICADOR_NOTA: TStringField
      FieldName = 'IDENTIFICADOR_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsBudgetGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      OnValidate = cdsBudgetGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBudgetL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      Size = 100
    end
    object cdsBudgetL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsBudgetSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      OnValidate = cdsBudgetSUBGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBudgetL_SIGLASUBGRUPO: TStringField
      FieldName = 'L_SIGLASUBGRUPO'
      Size = 5
    end
    object cdsBudgetL_DESCRICAOSUBGRUPO: TStringField
      FieldName = 'L_DESCRICAOSUBGRUPO'
      Size = 100
    end
    object cdsBudgetVLRBUDGET: TFMTBCDField
      FieldName = 'VLRBUDGET'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsBudgetUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsBudget: TDataSource
    AutoEdit = False
    DataSet = cdsBudget
    Left = 160
    Top = 528
  end
  object cdsNotas_Dev: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNotas_Dev'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsNotas_DevNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 240
    Top = 528
    object cdsNotas_DevEF_NOTAID: TBCDField
      FieldName = 'EF_NOTAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNotas_DevEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsNotas_DevNOTAID: TBCDField
      FieldName = 'NOTAID'
      Precision = 8
      Size = 0
    end
    object cdsNotas_DevDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object cdsNotas_DevDATADEVOLUCAO: TSQLTimeStampField
      FieldName = 'DATADEVOLUCAO'
    end
    object cdsNotas_DevVLRDEVOLUCAO: TFMTBCDField
      FieldName = 'VLRDEVOLUCAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 32
    end
    object cdsNotas_DevTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 1
    end
    object cdsNotas_DevUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsNotas_Dev: TDataSource
    AutoEdit = False
    DataSet = cdsNotas_Dev
    Left = 328
    Top = 528
  end
  object cdsImpostoServico: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvImpostoServico'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsImpostoServicoNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 43
    object cdsImpostoServicoIMPOSTOSERVICOID: TBCDField
      Tag = 3
      FieldName = 'IMPOSTOSERVICOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsImpostoServicoATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 300
    end
    object cdsImpostoServicoNIVELSERVICO: TBCDField
      FieldName = 'NIVELSERVICO'
      Precision = 8
      Size = 0
    end
    object cdsImpostoServicoALIQUOTAISS: TFMTBCDField
      FieldName = 'ALIQUOTAISS'
      Precision = 14
      Size = 6
    end
    object cdsImpostoServicoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsImpostoServico: TDataSource
    AutoEdit = False
    DataSet = cdsImpostoServico
    Left = 488
    Top = 43
  end
  object cdsMunicipioIBGE: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvMunicipioIBGE'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsMunicipioIBGENewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 64
    Top = 576
    object cdsMunicipioIBGEMUNICIPIOIBGEID: TBCDField
      Tag = 3
      FieldName = 'MUNICIPIOIBGEID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsMunicipioIBGEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsMunicipioIBGEDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 100
    end
    object cdsMunicipioIBGESIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsMunicipioIBGEL_NOMEUUF: TStringField
      FieldName = 'L_NOMEUUF'
      Size = 72
    end
    object cdsMunicipioIBGEUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsMunicipioIBGE: TDataSource
    AutoEdit = False
    DataSet = cdsMunicipioIBGE
    Left = 160
    Top = 576
  end
  object cdsCall: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvCall'
    RemoteServer = shdcnnEF
    BeforeEdit = cdsCallBeforeEdit
    AfterPost = cdsCallAfterPost
    BeforeDelete = cdsCallBeforeDelete
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsCallNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 550
    Top = 269
    object cdsCallEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCallCALLID: TBCDField
      FieldName = 'CALLID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCallDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object cdsCallSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object cdsCallPRENOTA: TBCDField
      FieldName = 'PRENOTA'
      Precision = 1
      Size = 0
    end
    object cdsCallENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      OnValidate = cdsCallENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCallL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsCallL_CONTATO: TStringField
      FieldName = 'L_CONTATO'
      ProviderFlags = []
      Size = 100
    end
    object cdsCallEMAIL: TStringField
      FieldName = 'EMAIL'
      Required = True
      Size = 200
    end
    object cdsCallTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Required = True
      Size = 50
    end
    object cdsCallLOCALENTRID: TBCDField
      FieldName = 'LOCALENTRID'
      OnValidate = cdsCallLOCALENTRIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCallL_DESCRICAOLOCAL: TStringField
      FieldName = 'L_DESCRICAOLOCAL'
      Size = 100
    end
    object cdsCallCEPID: TBCDField
      FieldName = 'CEPID'
      OnValidate = cdsCallCEPIDValidate
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsCallNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsCallCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsCallENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsCallBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsCallCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsCallSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsCallPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object cdsCallOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsCallVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsCallUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsCallsqldtsCallItem: TDataSetField
      FieldName = 'sqldtsCallItem'
    end
  end
  object cdsCallItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCallsqldtsCallItem
    IndexFieldNames = 'EMPRESAID;CALLID;ITEMID'
    Params = <>
    BeforeEdit = cdsCallItemBeforeEdit
    BeforePost = cdsCallItemBeforePost
    AfterPost = cdsCallItemAfterPost
    BeforeDelete = cdsCallItemBeforeDelete
    AfterDelete = cdsCallItemAfterDelete
    OnNewRecord = cdsCallItemNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 550
    Top = 313
    object cdsCallItemEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCallItemCALLID: TBCDField
      Tag = 1
      FieldName = 'CALLID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCallItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCallItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsCallItemPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCallItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsCallItemL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      Size = 100
    end
    object cdsCallItemL_ESTOQUENOVO: TBCDField
      FieldName = 'L_ESTOQUENOVO'
      Precision = 8
      Size = 2
    end
    object cdsCallItemL_ESTOQUEREVISADO: TBCDField
      FieldName = 'L_ESTOQUEREVISADO'
      Precision = 8
      Size = 2
    end
    object cdsCallItemL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      Precision = 8
      Size = 2
    end
    object cdsCallItemL_ESTOQUETOTAL: TBCDField
      FieldName = 'L_ESTOQUETOTAL'
      Precision = 8
      Size = 2
    end
    object cdsCallItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnValidate = cdsCallItemQUANTIDADEValidate
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 8
      Size = 2
    end
    object cdsCallItemVLRPRECOUNITARIO: TBCDField
      Tag = 1
      FieldName = 'VLRPRECOUNITARIO'
      OnValidate = cdsCallItemVLRPRECOUNITARIOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsCallItemVLRPRECOTOTAL: TBCDField
      Tag = 1
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsCallItemUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsCall: TDataSource
    AutoEdit = False
    DataSet = cdsCall
    Left = 629
    Top = 269
  end
  object dsCallItem: TDataSource
    AutoEdit = False
    DataSet = cdsCallItem
    Left = 629
    Top = 313
  end
  object cdsLocalEntr: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvLocalEntr'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsLocalEntrNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 554
    Top = 354
    object cdsLocalEntrLOCALENTRID: TBCDField
      FieldName = 'LOCALENTRID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsLocalEntrDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsLocalEntrUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsLocalEntr: TDataSource
    AutoEdit = False
    DataSet = cdsLocalEntr
    Left = 631
    Top = 354
  end
  object cdsTipoItem: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoItem'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsTipoItemNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 240
    Top = 576
    object cdsTipoItemTIPOITEMID: TBCDField
      FieldName = 'TIPOITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsTipoItem: TDataSource
    AutoEdit = False
    DataSet = cdsTipoItem
    Left = 328
    Top = 576
  end
  object cdsGeneroItem: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvGeneroItem'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsGeneroItemNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 408
    Top = 576
    object cdsGeneroItemGENEROITEMID: TBCDField
      FieldName = 'GENEROITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsGeneroItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object cdsGeneroItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsGeneroItem: TDataSource
    AutoEdit = False
    DataSet = cdsGeneroItem
    Left = 488
    Top = 576
  end
  object cdsNfEmail: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvNfEmail'
    RemoteServer = shdcnnEF
    AfterPost = cdsEmpresafterPost
    AfterDelete = cdsEmpresaAfterDelete
    OnNewRecord = cdsNfEmailNewRecord
    OnReconcileError = cdsEmpresaReconcileError
    Left = 561
    Top = 399
    object cdsNfEmailEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfEmailNOTA: TBCDField
      FieldName = 'NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsNfEmailDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNfEmailDATAGERACAO: TSQLTimeStampField
      FieldName = 'DATAGERACAO'
    end
    object cdsNfEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 400
    end
    object cdsNfEmailASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object cdsNfEmailCORPO: TStringField
      FieldName = 'CORPO'
      Size = 500
    end
    object cdsNfEmailSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsNfEmailLOGPROCESSO: TStringField
      FieldName = 'LOGPROCESSO'
      Size = 200
    end
    object cdsNfEmailDATAENVIO: TSQLTimeStampField
      FieldName = 'DATAENVIO'
    end
    object cdsNfEmailUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfEmail: TDataSource
    AutoEdit = False
    DataSet = cdsNfEmail
    Left = 630
    Top = 399
  end
end
