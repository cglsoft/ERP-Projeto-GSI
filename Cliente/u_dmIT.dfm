object dmIT: TdmIT
  OldCreateOrder = False
  Height = 568
  Width = 635
  object shdcnnIT: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppIT'
    Left = 24
    Top = 8
  end
  object cdsIndiceMes: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvIndiceMes'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsIndiceMesNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 54
    object cdsIndiceMesANOMESID: TBCDField
      FieldName = 'ANOMESID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 6
      Size = 0
    end
    object cdsIndiceMesUFIR: TBCDField
      FieldName = 'UFIR'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesUFESP: TBCDField
      FieldName = 'UFESP'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesIPCFIPE: TBCDField
      FieldName = 'IPCFIPE'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesIGPM: TBCDField
      FieldName = 'IGPM'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesIPC: TBCDField
      FieldName = 'IPC'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesIPA: TBCDField
      FieldName = 'IPA'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesINCC: TBCDField
      FieldName = 'INCC'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesIPCA: TBCDField
      FieldName = 'IPCA'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesICV: TBCDField
      FieldName = 'ICV'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesICVM: TBCDField
      FieldName = 'ICVM'
      DisplayFormat = '###,###.000000'
      Precision = 14
      Size = 2
    end
    object cdsIndiceMesUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsDespachante: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvDespachante'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsDespachanteNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 100
    object cdsDespachanteDESPACHANTEID: TBCDField
      DisplayLabel = 'C'#243'd. Despachante'
      DisplayWidth = 9
      FieldName = 'DESPACHANTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDespachanteNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 100
      FieldName = 'NOME'
      Size = 100
    end
    object cdsDespachanteCONTACONTABILID: TStringField
      DisplayLabel = 'Conta Cont'#225'bil'
      DisplayWidth = 10
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsDespachanteUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsContatoJapao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvContatoJapao'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsContatoJapaoNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 147
    object cdsContatoJapaoCONTATOJAPAOID: TBCDField
      DisplayLabel = 'C'#243'd. Contato Jap'#227'o'
      FieldName = 'CONTATOJAPAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsContatoJapaoDESTINATARIO: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'DESTINATARIO'
      Size = 100
    end
    object cdsContatoJapaoEMAILDESTINATARIO: TStringField
      DisplayLabel = 'E-mail Destinat'#225'rio'
      FieldName = 'EMAILDESTINATARIO'
      Size = 50
    end
    object cdsContatoJapaoDESTINATARIOCC: TStringField
      DisplayLabel = 'Com c'#243'pia outro Destinat'#225'rio'
      FieldName = 'DESTINATARIOCC'
      Size = 100
    end
    object cdsContatoJapaoEMAILDESTINATARIOCC: TStringField
      DisplayLabel = 'E-mail com c'#243'pia outro Destinat'#225'rio'
      FieldName = 'EMAILDESTINATARIOCC'
      Size = 50
    end
    object cdsContatoJapaoREMETENTE: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'REMETENTE'
      Size = 100
    end
    object cdsContatoJapaoUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object cdsTipoProcesso: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoProcesso'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsTipoProcessoNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 193
    object cdsTipoProcessoTIPOPROCESSOID: TBCDField
      DisplayLabel = 'C'#243'd. Tipo Processo'
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoProcessoSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
    end
    object cdsTipoProcessoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoProcessoNUMPROCESSO: TBCDField
      DisplayLabel = 'Num. Processo'
      FieldName = 'NUMPROCESSO'
      Precision = 8
      Size = 0
    end
    object cdsTipoProcessoORIGEMPROCESSO: TStringField
      DisplayLabel = 'Origem Processo'
      FieldName = 'ORIGEMPROCESSO'
      Size = 1
    end
    object cdsTipoProcessoUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object cdsTermoPagto: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTermoPagto'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsTermoPagtoNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 240
    object cdsTermoPagtoTERMOPAGTOID: TBCDField
      DisplayLabel = 'C'#243'd. Termo Pagamento'
      FieldName = 'TERMOPAGTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTermoPagtoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTermoPagtoUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object cdsDeclaracao: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvDeclaracao'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    BeforeDelete = cdsDeclaracaoBeforeDelete
    AfterDelete = cdsDeclaracaoAfterDelete
    OnCalcFields = cdsDeclaracaoCalcFields
    OnNewRecord = cdsDeclaracaoNewRecord
    OnReconcileError = cdsDeclaracaoReconcileError
    Left = 480
    Top = 8
    object cdsDeclaracaoDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDeclaracaoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsDeclaracaoEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDeclaracaoL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object cdsDeclaracaoDIID: TStringField
      FieldName = 'DIID'
      OnValidate = cdsDeclaracaoDIIDValidate
      EditMask = '99\/9999999\-9;; '
      Size = 12
    end
    object cdsDeclaracaoDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
      OnValidate = cdsDeclaracaoDATAREGISTROValidate
      EditMask = '!99/99/00;1;_'
    end
    object cdsDeclaracaoL_DOLARFISCALDIARIO: TFMTBCDField
      FieldName = 'L_DOLARFISCALDIARIO'
      ProviderFlags = []
      Precision = 14
    end
    object cdsDeclaracaoL_YENEFISCALDIARIO: TFMTBCDField
      FieldName = 'L_YENEFISCALDIARIO'
      ProviderFlags = []
      Precision = 14
    end
    object cdsDeclaracaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 100
    end
    object cdsDeclaracaoDATALIBERACAO: TSQLTimeStampField
      FieldName = 'DATALIBERACAO'
      EditMask = '!99/99/00;1;_'
    end
    object cdsDeclaracaoTIPOMOEDAFRETE: TStringField
      FieldName = 'TIPOMOEDAFRETE'
      Size = 1
    end
    object cdsDeclaracaoIMPORTADORID: TBCDField
      FieldName = 'IMPORTADORID'
      OnValidate = cdsDeclaracaoIMPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDeclaracaoL_NOMEIMPORTADOR: TStringField
      FieldName = 'L_NOMEIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsDeclaracaoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      OnValidate = cdsDeclaracaoFORNECEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDeclaracaoL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsDeclaracaoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsDeclaracaoCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 7
    end
    object cdsDeclaracaoNUMCONTRATOCAMBIO: TStringField
      FieldName = 'NUMCONTRATOCAMBIO'
      EditMask = '99\/999999;0; '
      Size = 8
    end
    object cdsDeclaracaoDATACONTRATO: TSQLTimeStampField
      FieldName = 'DATACONTRATO'
    end
    object cdsDeclaracaoNUMCONTRATOCAMBIO2: TStringField
      FieldName = 'NUMCONTRATOCAMBIO2'
      EditMask = '99\/999999;0; '
      Size = 8
    end
    object cdsDeclaracaoDATACONTRATO2: TSQLTimeStampField
      FieldName = 'DATACONTRATO2'
    end
    object cdsDeclaracaoNUMCONTRATOCAMBIO3: TStringField
      FieldName = 'NUMCONTRATOCAMBIO3'
      EditMask = '99\/999999;0; '
      Size = 8
    end
    object cdsDeclaracaoDATACONTRATO3: TSQLTimeStampField
      FieldName = 'DATACONTRATO3'
    end
    object cdsDeclaracaoOBSPEDIDO: TMemoField
      FieldName = 'OBSPEDIDO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsDeclaracaoCREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoAGREGARVLRFOB: TBCDField
      FieldName = 'AGREGARVLRFOB'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoRESTITUIRICMS: TBCDField
      FieldName = 'RESTITUIRICMS'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoAGREGARFRETE: TBCDField
      FieldName = 'AGREGARFRETE'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoFOBANTECIPADO: TBCDField
      FieldName = 'FOBANTECIPADO'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoADMISSAOTEMP: TBCDField
      FieldName = 'ADMISSAOTEMP'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoLIBERARESTOQUE: TBCDField
      FieldName = 'LIBERARESTOQUE'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoATIVOFIXO: TBCDField
      FieldName = 'ATIVOFIXO'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoFRETEPAGO: TBCDField
      FieldName = 'FRETEPAGO'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoMATERIALCONSUMO: TBCDField
      FieldName = 'MATERIALCONSUMO'
      Precision = 1
      Size = 0
    end
    object cdsDeclaracaoDESPACHANTEID: TBCDField
      FieldName = 'DESPACHANTEID'
      OnValidate = cdsDeclaracaoDESPACHANTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDeclaracaoL_NOMEDESPACHANTE: TStringField
      FieldName = 'L_NOMEDESPACHANTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsDeclaracaoNUMDEMONSDESPESA: TStringField
      FieldName = 'NUMDEMONSDESPESA'
      EditMask = '999999\/99;; '
      Size = 10
    end
    object cdsDeclaracaoDATANFDESP: TSQLTimeStampField
      FieldName = 'DATANFDESP'
    end
    object cdsDeclaracaoVLRDESPESAII: TBCDField
      FieldName = 'VLRDESPESAII'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPCAPATAZIA: TBCDField
      FieldName = 'VLRDESPCAPATAZIA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPESADESEMB: TBCDField
      FieldName = 'VLRDESPESADESEMB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPSINDDESP: TBCDField
      FieldName = 'VLRDESPSINDDESP'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPCODESPINFRAERO: TBCDField
      FieldName = 'VLRDESPCODESPINFRAERO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPAFRMM: TBCDField
      FieldName = 'VLRDESPAFRMM'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRFRETEMARITIMOAEREO: TBCDField
      FieldName = 'VLRFRETEMARITIMOAEREO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPCPMF: TBCDField
      FieldName = 'VLRDESPCPMF'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPTRANSPENTREGA: TBCDField
      FieldName = 'VLRDESPTRANSPENTREGA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPTRANSPREMOCAO: TBCDField
      FieldName = 'VLRDESPTRANSPREMOCAO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPARMAZENTREPOSTO: TBCDField
      FieldName = 'VLRDESPARMAZENTREPOSTO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPTXEXPEDIENTE: TBCDField
      FieldName = 'VLRDESPTXEXPEDIENTE'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPVIGSANITARIA: TBCDField
      FieldName = 'VLRDESPVIGSANITARIA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLROUTRASDESPESAS: TBCDField
      FieldName = 'VLROUTRASDESPESAS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTAXAEMISSAOLI: TBCDField
      FieldName = 'VLRTAXAEMISSAOLI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRDESPCOMISSAONFS: TBCDField
      FieldName = 'VLRDESPCOMISSAONFS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRCSRF: TBCDField
      FieldName = 'VLRCSRF'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoNFEID: TStringField
      FieldName = 'NFEID'
      Size = 6
    end
    object cdsDeclaracaoDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsDeclaracaoDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object cdsDeclaracaoNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      OnValidate = cdsDeclaracaoNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDeclaracaoL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object cdsDeclaracaoL_DESCRICAONATUREZAUSUARIO: TStringField
      FieldName = 'L_DESCRICAONATUREZAUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDeclaracaoL_DESCRICAONATUREZANOTA: TStringField
      FieldName = 'L_DESCRICAONATUREZANOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsDeclaracaoVLRTOTALCIF: TBCDField
      FieldName = 'VLRTOTALCIF'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALPESO: TFMTBCDField
      FieldName = 'VLRTOTALPESO'
      Precision = 14
      Size = 6
    end
    object cdsDeclaracaoVLRTOTALFOBUS: TBCDField
      FieldName = 'VLRTOTALFOBUS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRSEGUROINTERNAC: TBCDField
      FieldName = 'VLRSEGUROINTERNAC'
      OnValidate = cdsDeclaracaoVLRSEGUROINTERNACValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoTAXAFOBANTECIPADO: TFMTBCDField
      FieldName = 'TAXAFOBANTECIPADO'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsDeclaracaoTAXASISCOMEX: TBCDField
      FieldName = 'TAXASISCOMEX'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRICMSANTECIPADO: TBCDField
      FieldName = 'VLRICMSANTECIPADO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALCUSTOAPARELHO: TBCDField
      FieldName = 'VLRTOTALCUSTOAPARELHO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALCUSTOPECA: TBCDField
      FieldName = 'VLRTOTALCUSTOPECA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALMAQEQUIP: TBCDField
      FieldName = 'VLRTOTALMAQEQUIP'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALFERRAMENTAL: TBCDField
      FieldName = 'VLRTOTALFERRAMENTAL'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALMOVUTENSILIOS: TBCDField
      FieldName = 'VLRTOTALMOVUTENSILIOS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALADMTEMP: TBCDField
      FieldName = 'VLRTOTALADMTEMP'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALFOB2: TBCDField
      FieldName = 'VLRTOTALFOB2'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALFOBANT: TBCDField
      FieldName = 'VLRTOTALFOBANT'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALCIF2: TBCDField
      FieldName = 'VLRTOTALCIF2'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALCIFANT: TBCDField
      FieldName = 'VLRTOTALCIFANT'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALDESPDESP: TBCDField
      FieldName = 'VLRTOTALDESPDESP'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALDESPGI: TBCDField
      FieldName = 'VLRTOTALDESPGI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALSEGUROTRANSP: TBCDField
      FieldName = 'VLRTOTALSEGUROTRANSP'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALIRRFPAGAR: TBCDField
      FieldName = 'VLRTOTALIRRFPAGAR'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoVLRTOTALFRETELOCAL: TBCDField
      FieldName = 'VLRTOTALFRETELOCAL'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsDeclaracaoC_DIFAPURARESUMO: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_DIFAPURARESUMO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object cdsDeclaracaoC_TOTALDESPADUANEIRAS: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'C_TOTALDESPADUANEIRAS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object cdsDeclaracaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsDeclaracaosqldtsMercadoria: TDataSetField
      FieldName = 'sqldtsMercadoria'
    end
    object cdsDeclaracaosqldtsAdicao: TDataSetField
      FieldName = 'sqldtsAdicao'
    end
  end
  object cdsAdicao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDeclaracaosqldtsAdicao
    Params = <>
    AfterPost = cdsAdicaoAfterPost
    AfterDelete = cdsAdicaoAfterDelete
    OnReconcileError = cdsDeclaracaoReconcileError
    Left = 480
    Top = 54
    object cdsAdicaoDECLARACAOID: TBCDField
      DisplayWidth = 9
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdicaoADICAOID: TBCDField
      DisplayWidth = 9
      FieldName = 'ADICAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdicaoNCMID: TStringField
      DisplayWidth = 8
      FieldName = 'NCMID'
      Size = 8
    end
    object cdsAdicaoPESOLIQUIDO: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'PESOLIQUIDO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 14
      Size = 6
    end
    object cdsAdicaoVLRFOBUS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFOBUS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRFOB: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFOB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRCIF: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRCIF'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoALIQUOTAII: TBCDField
      DisplayWidth = 15
      FieldName = 'ALIQUOTAII'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRII: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRII'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoALIQUOTAIPI: TBCDField
      DisplayWidth = 15
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRIPI: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRIPI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoUSUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object cdsMercadoria: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDeclaracaosqldtsMercadoria
    FieldDefs = <
      item
        Name = 'DECLARACAOID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'MERCADORIAID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'PROCESSOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'TIPOPROCESSOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_SIGLA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATAPROCESSOID'
        DataType = ftTimeStamp
      end
      item
        Name = 'ITEMPROCESSOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'NCMID'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'LIBERAESTOQUE'
        DataType = ftBCD
        Precision = 1
        Size = 4
      end
      item
        Name = 'EMPRESAID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'PRODUTOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_DESCRICAO_PRODUTO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'L_PARTNUMBERID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'IMOBILIZADO'
        DataType = ftBCD
        Precision = 1
        Size = 4
      end
      item
        Name = 'TIPOMATERIAL'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PESOLIQUIDO'
        DataType = ftFMTBcd
        Precision = 14
        Size = 6
      end
      item
        Name = 'PESOBRUTO'
        DataType = ftFMTBcd
        Precision = 14
        Size = 6
      end
      item
        Name = 'VLRFOBUS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRFOB'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRCIF'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRCUSTOMOVIMENTO'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRCUSTOTRANSFERENCIA'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRBASEIPI'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'ALIQUOTAIPI'
        DataType = ftFMTBcd
        Precision = 14
        Size = 6
      end
      item
        Name = 'VLRIPI'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRBASEICMS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'ALIQUOTAICMS'
        DataType = ftFMTBcd
        Precision = 14
        Size = 6
      end
      item
        Name = 'VLRICMS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'ALIQUOTAII'
        DataType = ftFMTBcd
        Precision = 14
        Size = 6
      end
      item
        Name = 'VLRFRETE'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRFRETEUS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRPIS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRCOFINS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterPost = cdsMercadoriaAfterPost
    BeforeDelete = cdsMercadoriaBeforeDelete
    AfterDelete = cdsMercadoriaAfterDelete
    OnNewRecord = cdsMercadoriaNewRecord
    OnReconcileError = cdsDeclaracaoReconcileError
    Left = 480
    Top = 100
    object cdsMercadoriaDECLARACAOID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaMERCADORIAID: TBCDField
      Tag = 3
      DisplayWidth = 9
      FieldName = 'MERCADORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaPROCESSOID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'PROCESSOID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaTIPOPROCESSOID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'TIPOPROCESSOID'
      OnValidate = cdsMercadoriaTIPOPROCESSOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaL_SIGLA: TStringField
      DisplayWidth = 20
      FieldName = 'L_SIGLA'
      ProviderFlags = []
    end
    object cdsMercadoriaDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
    end
    object cdsMercadoriaITEMPROCESSOID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'ITEMPROCESSOID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaNCMID: TStringField
      DisplayWidth = 8
      FieldName = 'NCMID'
      Size = 8
    end
    object cdsMercadoriaLIBERAESTOQUE: TBCDField
      DisplayWidth = 2
      FieldName = 'LIBERAESTOQUE'
      Precision = 1
      Size = 0
    end
    object cdsMercadoriaEMPRESAID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaPRODUTOID: TBCDField
      DisplayWidth = 9
      FieldName = 'PRODUTOID'
      OnValidate = cdsMercadoriaPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaL_DESCRICAO_PRODUTO: TStringField
      DisplayWidth = 100
      FieldName = 'L_DESCRICAO_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsMercadoriaL_PARTNUMBERID: TStringField
      DisplayWidth = 20
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsMercadoriaQUANTIDADE: TBCDField
      DisplayWidth = 9
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaIMOBILIZADO: TBCDField
      DisplayWidth = 2
      FieldName = 'IMOBILIZADO'
      Precision = 1
      Size = 0
    end
    object cdsMercadoriaTIPOMATERIAL: TStringField
      DisplayWidth = 2
      FieldName = 'TIPOMATERIAL'
      Size = 2
    end
    object cdsMercadoriaPESOLIQUIDO: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'PESOLIQUIDO'
      OnValidate = cdsMercadoriaPESOLIQUIDOValidate
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaPESOBRUTO: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'PESOBRUTO'
      DisplayFormat = '###0.000'
      EditFormat = '###0.000'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRFOBUS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFOBUS'
      OnValidate = cdsMercadoriaVLRFOBUSValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRFOB: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFOB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCIF: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRCIF'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCUSTOMOVIMENTO: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRCUSTOMOVIMENTO'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCUSTOTRANSFERENCIA: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRCUSTOTRANSFERENCIA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRBASEIPI: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRBASEIPI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaALIQUOTAIPI: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00%'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRIPI: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRIPI'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRBASEICMS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRBASEICMS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00%'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRICMS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRICMS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaALIQUOTAII: TFMTBCDField
      DisplayWidth = 15
      FieldName = 'ALIQUOTAII'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00%'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRFRETE: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFRETE'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRFRETEUS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFRETEUS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRPIS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRPIS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCOFINS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRCOFINS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsIndice: TDataSource
    AutoEdit = False
    DataSet = cdsIndice
    Left = 176
    Top = 8
  end
  object dsIndiceMes: TDataSource
    AutoEdit = False
    DataSet = cdsIndiceMes
    Left = 176
    Top = 54
  end
  object dsDespachante: TDataSource
    AutoEdit = False
    DataSet = cdsDespachante
    Left = 176
    Top = 100
  end
  object dsContatoJapao: TDataSource
    AutoEdit = False
    DataSet = cdsContatoJapao
    Left = 176
    Top = 147
  end
  object dsTipoProcesso: TDataSource
    AutoEdit = False
    DataSet = cdsTipoProcesso
    Left = 176
    Top = 193
  end
  object dsTermoPagto: TDataSource
    AutoEdit = False
    DataSet = cdsTermoPagto
    Left = 176
    Top = 240
  end
  object dsDeclaracao: TDataSource
    AutoEdit = False
    DataSet = cdsDeclaracao
    Left = 560
    Top = 8
  end
  object dsAdicao: TDataSource
    AutoEdit = False
    DataSet = cdsAdicao
    Left = 560
    Top = 54
  end
  object dsMercadoria: TDataSource
    AutoEdit = False
    DataSet = cdsMercadoria
    Left = 560
    Top = 100
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvProcesso'
    RemoteServer = shdcnnIT
    BeforeEdit = cdsProcessoBeforeEdit
    AfterPost = cdsIndiceAfterPost
    BeforeDelete = cdsProcessoBeforeDelete
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsProcessoNewRecord
    OnReconcileError = cdsProcessoReconcileError
    Left = 280
    Top = 8
    object cdsProcessoPROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProcessoTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsProcessoTIPOPROCESSOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_SIGLAPROCESSO: TStringField
      FieldName = 'L_SIGLAPROCESSO'
      ProviderFlags = []
    end
    object cdsProcessoDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoPROCESSOANTIGOID: TStringField
      FieldName = 'PROCESSOANTIGOID'
      Size = 10
    end
    object cdsProcessoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsProcessoEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object cdsProcessoIMPORTADORID: TBCDField
      FieldName = 'IMPORTADORID'
      OnValidate = cdsProcessoIMPORTADORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_NOMEIMPORTADOR: TStringField
      FieldName = 'L_NOMEIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_CEPIMPORTADOR: TBCDField
      FieldName = 'L_CEPIMPORTADOR'
      ProviderFlags = []
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_ENDERECOIMPORTADOR: TStringField
      FieldName = 'L_ENDERECOIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_CIDADEIMPORTADOR: TStringField
      FieldName = 'L_CIDADEIMPORTADOR'
      ProviderFlags = []
      Size = 72
    end
    object cdsProcessoL_UFIMPORTADOR: TStringField
      FieldName = 'L_UFIMPORTADOR'
      ProviderFlags = []
      Size = 2
    end
    object cdsProcessoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      OnValidate = cdsProcessoCLIENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_CEPCLIENTE: TBCDField
      FieldName = 'L_CEPCLIENTE'
      ProviderFlags = []
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_ENDERECOCLIENTE: TStringField
      FieldName = 'L_ENDERECOCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_CIDADECLIENTE: TStringField
      FieldName = 'L_CIDADECLIENTE'
      ProviderFlags = []
      Size = 72
    end
    object cdsProcessoL_UFCLIENTE: TStringField
      FieldName = 'L_UFCLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object cdsProcessoCONTATOJAPAOID: TBCDField
      FieldName = 'CONTATOJAPAOID'
      OnValidate = cdsProcessoCONTATOJAPAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESTINATARIOJAPAO: TStringField
      FieldName = 'L_DESTINATARIOJAPAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_DESTINATARIOEMAILJAPAO: TStringField
      FieldName = 'L_DESTINATARIOEMAILJAPAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProcessoL_DESTINATARIOCCJAPAO: TStringField
      FieldName = 'L_DESTINATARIOCCJAPAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_DESTINATARIOCCEMAILJAPAO: TStringField
      FieldName = 'L_DESTINATARIOCCEMAILJAPAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProcessoL_REMETENTEJAPAO: TStringField
      FieldName = 'L_REMETENTEJAPAO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsProcessoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsProcessoOBSERVACAOPO: TMemoField
      FieldName = 'OBSERVACAOPO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsProcessoTIPOSERVICO: TStringField
      FieldName = 'TIPOSERVICO'
      Size = 1
    end
    object cdsProcessoTIPOREQUISICAO: TStringField
      FieldName = 'TIPOREQUISICAO'
      Size = 1
    end
    object cdsProcessoPERGUNTA1: TBCDField
      FieldName = 'PERGUNTA1'
      Precision = 1
      Size = 0
    end
    object cdsProcessoPERGUNTA2: TBCDField
      FieldName = 'PERGUNTA2'
      Precision = 1
      Size = 0
    end
    object cdsProcessoPERGUNTA3: TBCDField
      FieldName = 'PERGUNTA3'
      Precision = 1
      Size = 0
    end
    object cdsProcessoPERGUNTA4: TBCDField
      FieldName = 'PERGUNTA4'
      Precision = 1
      Size = 0
    end
    object cdsProcessoPERGUNTA5: TBCDField
      FieldName = 'PERGUNTA5'
      Precision = 1
      Size = 0
    end
    object cdsProcessoTIPOCATEGORIAID: TBCDField
      FieldName = 'TIPOCATEGORIAID'
      OnValidate = cdsProcessoTIPOCATEGORIAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESCRICAOTIPOCATEGORIA: TStringField
      FieldName = 'L_DESCRICAOTIPOCATEGORIA'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoRAZAOEXIGENCIAID: TBCDField
      FieldName = 'RAZAOEXIGENCIAID'
      OnValidate = cdsProcessoRAZAOEXIGENCIAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESCRICAORAZAOEXIGENCIA: TStringField
      FieldName = 'L_DESCRICAORAZAOEXIGENCIA'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoFREQUENCIAID: TBCDField
      FieldName = 'FREQUENCIAID'
      OnValidate = cdsProcessoFREQUENCIAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESCRICAOFREQUENCIA: TStringField
      FieldName = 'L_DESCRICAOFREQUENCIA'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoUSOMEDICO: TBCDField
      FieldName = 'USOMEDICO'
      Precision = 1
      Size = 0
    end
    object cdsProcessoNUMREMESSA: TStringField
      FieldName = 'NUMREMESSA'
      Size = 15
    end
    object cdsProcessoNUMAGENTE: TStringField
      FieldName = 'NUMAGENTE'
      Size = 15
    end
    object cdsProcessoPAISDESTINO: TStringField
      FieldName = 'PAISDESTINO'
      Size = 30
    end
    object cdsProcessoNUMREFERCONSERTO: TBCDField
      FieldName = 'NUMREFERCONSERTO'
      Precision = 8
      Size = 0
    end
    object cdsProcessoLIBERACHEFIA: TBCDField
      FieldName = 'LIBERACHEFIA'
      OnValidate = cdsProcessoLIBERACHEFIAValidate
      Precision = 1
      Size = 0
    end
    object cdsProcessoNOMELIBERANTE: TStringField
      FieldName = 'NOMELIBERANTE'
    end
    object cdsProcessoDATALIBERACAO: TSQLTimeStampField
      FieldName = 'DATALIBERACAO'
    end
    object cdsProcessoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      OnValidate = cdsProcessoFORNECEDORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_CEPFORNECEDOR: TBCDField
      FieldName = 'L_CEPFORNECEDOR'
      ProviderFlags = []
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_ENDERECOFORNECEDOR: TStringField
      FieldName = 'L_ENDERECOFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoL_CIDADEFORNECEDOR: TStringField
      FieldName = 'L_CIDADEFORNECEDOR'
      ProviderFlags = []
      Size = 72
    end
    object cdsProcessoL_UFFORNECEDOR: TStringField
      FieldName = 'L_UFFORNECEDOR'
      ProviderFlags = []
      Size = 2
    end
    object cdsProcessoREVISAO: TStringField
      FieldName = 'REVISAO'
      Size = 50
    end
    object cdsProcessoLOCALFABRICACAO: TStringField
      FieldName = 'LOCALFABRICACAO'
      Size = 100
    end
    object cdsProcessoTERMOPAGTOID: TBCDField
      FieldName = 'TERMOPAGTOID'
      OnValidate = cdsProcessoTERMOPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESCRICAOTERMOPAGTO: TStringField
      FieldName = 'L_DESCRICAOTERMOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoNUMPROCESSOJAPAO: TStringField
      FieldName = 'NUMPROCESSOJAPAO'
      Size = 10
    end
    object cdsProcessoDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object cdsProcessoLOCALCHEGADAID: TBCDField
      FieldName = 'LOCALCHEGADAID'
      OnValidate = cdsProcessoLOCALCHEGADAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESCRICAOLOCALCHEGADA: TStringField
      FieldName = 'L_DESCRICAOLOCALCHEGADA'
      ProviderFlags = []
      Size = 100
    end
    object cdsProcessoVIAEMBARQUEID: TBCDField
      FieldName = 'VIAEMBARQUEID'
      OnValidate = cdsProcessoVIAEMBARQUEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoL_DESCRICAOVIAEMBARQUE: TStringField
      FieldName = 'L_DESCRICAOVIAEMBARQUE'
      ProviderFlags = []
      Size = 40
    end
    object cdsProcessoEMBARQUEMARCACAO: TStringField
      FieldName = 'EMBARQUEMARCACAO'
      Size = 100
    end
    object cdsProcessoCOBERTURACAMBIAL: TBCDField
      FieldName = 'COBERTURACAMBIAL'
      Precision = 1
      Size = 0
    end
    object cdsProcessoAGRUPANCM: TBCDField
      FieldName = 'AGRUPANCM'
      Precision = 1
      Size = 0
    end
    object cdsProcessoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsProcessosqldtsProcessoItem: TDataSetField
      FieldName = 'sqldtsProcessoItem'
    end
  end
  object cdsProcessoItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProcessosqldtsProcessoItem
    FieldDefs = <
      item
        Name = 'PROCESSOID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'TIPOPROCESSOID'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_SIGLA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATAPROCESSOID'
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
        Name = 'EMPRESAID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'PRODUTOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'PARTNUMBERID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PARTNUMBERFABID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GRUPOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_SIGLAGRUPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DESCRICAOINGLES'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DESCRICAOPORTUGUES'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NCMID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATACONVERSAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'VLRYEN'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRFOBUS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'SERIEID'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MODELOID'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOMEUNIDADE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PEDIDOORIGINAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATAINSTALEQUIP'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAFALHAEQUIP'
        DataType = ftTimeStamp
      end
      item
        Name = 'PRIORIDADE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTDPEDIDA'
        DataType = ftBCD
        Precision = 8
        Size = 2
      end
      item
        Name = 'QTDLIBERADA'
        DataType = ftBCD
        Precision = 8
        Size = 2
      end
      item
        Name = 'REGANVISA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATAPREVISAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATASOLICLI'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAAUTORIZLI'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAINSTRENVEMB'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAEMBARQUE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATACHEGADA'
        DataType = ftTimeStamp
      end
      item
        Name = 'INVOICEID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NUMCONHECEMBARQUE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TSBREFID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATADEVOLUCAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAPREVRETORNO'
        DataType = ftTimeStamp
      end
      item
        Name = 'RETORNAPECADEF'
        DataType = ftBCD
        Precision = 1
        Size = 4
      end
      item
        Name = 'DATAEMBTOKIO'
        DataType = ftTimeStamp
      end
      item
        Name = 'DECLARACAOID'
        DataType = ftBCD
        Precision = 8
        Size = 4
      end
      item
        Name = 'L_DIID'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'L_NFEID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'L_DATAEMISSAONFEID'
        DataType = ftTimeStamp
      end
      item
        Name = 'L_DATAENTRADANFEID'
        DataType = ftTimeStamp
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'sqldtsProcessoItemSerie'
        DataType = ftDataSet
      end>
    IndexDefs = <
      item
        Name = 'cdsProcessoItemIndex1'
        Fields = 'PROCESSOID;TIPOPROCESSOID;ITEMID'
      end>
    IndexFieldNames = 'PROCESSOID;TIPOPROCESSOID;ITEMID'
    Params = <>
    StoreDefs = True
    AfterPost = cdsProcessoItemAfterPost
    AfterDelete = cdsProcessoItemAfterDelete
    OnNewRecord = cdsProcessoItemNewRecord
    OnReconcileError = cdsProcessoReconcileError
    Left = 280
    Top = 53
    object cdsProcessoItemPROCESSOID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'PROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemTIPOPROCESSOID: TBCDField
      Tag = 1
      DisplayWidth = 9
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemL_SIGLA: TStringField
      DisplayWidth = 20
      FieldName = 'L_SIGLA'
      ProviderFlags = []
      Visible = False
    end
    object cdsProcessoItemDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoItemEMPRESAID: TBCDField
      DisplayWidth = 9
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemITEMID: TBCDField
      Tag = 3
      DisplayWidth = 9
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemREGANVISA: TStringField
      DisplayWidth = 40
      FieldName = 'REGANVISA'
      OnValidate = cdsProcessoItemREGANVISAValidate
      Size = 40
    end
    object cdsProcessoItemPRODUTOID: TBCDField
      DisplayWidth = 9
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemPARTNUMBERID: TStringField
      Tag = 5
      DisplayWidth = 15
      FieldName = 'PARTNUMBERID'
      OnValidate = cdsProcessoItemPARTNUMBERIDValidate
    end
    object cdsProcessoItemPARTNUMBERFABID: TStringField
      FieldName = 'PARTNUMBERFABID'
    end
    object cdsProcessoItemDESCRICAOINGLES: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object cdsProcessoItemDESCRICAOPORTUGUES: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsProcessoItemGRUPOID: TBCDField
      DisplayWidth = 5
      FieldName = 'GRUPOID'
      OnValidate = cdsProcessoItemGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsProcessoItemQTDPEDIDA: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDPEDIDA'
      DisplayFormat = '###0'
      EditFormat = '###0'
      Precision = 8
      Size = 2
    end
    object cdsProcessoItemQTDLIBERADA: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDLIBERADA'
      DisplayFormat = '###0'
      EditFormat = '###0'
      Precision = 8
      Size = 2
    end
    object cdsProcessoItemVLRFOBUS: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRFOBUS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProcessoItemDATACONVERSAO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATACONVERSAO'
    end
    object cdsProcessoItemVLRYEN: TBCDField
      DisplayWidth = 15
      FieldName = 'VLRYEN'
      OnValidate = cdsProcessoItemVLRYENValidate
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsProcessoItemDATAPREVISAO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAPREVISAO'
    end
    object cdsProcessoItemDATAEMBARQUE: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAEMBARQUE'
    end
    object cdsProcessoItemDATAINSTRENVEMB: TSQLTimeStampField
      FieldName = 'DATAINSTRENVEMB'
    end
    object cdsProcessoItemDATACHEGADA: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATACHEGADA'
    end
    object cdsProcessoItemDATASOLICLI: TSQLTimeStampField
      FieldName = 'DATASOLICLI'
    end
    object cdsProcessoItemDATAAUTORIZLI: TSQLTimeStampField
      FieldName = 'DATAAUTORIZLI'
    end
    object cdsProcessoItemINVOICEID: TStringField
      DisplayWidth = 20
      FieldName = 'INVOICEID'
    end
    object cdsProcessoItemNUMCONHECEMBARQUE: TStringField
      DisplayWidth = 20
      FieldName = 'NUMCONHECEMBARQUE'
    end
    object cdsProcessoItemSERIEID: TStringField
      DisplayWidth = 40
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsProcessoItemMODELOID: TStringField
      DisplayWidth = 40
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsProcessoItemPEDIDOORIGINAL: TStringField
      DisplayWidth = 20
      FieldName = 'PEDIDOORIGINAL'
    end
    object cdsProcessoItemDATAINSTALEQUIP: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAINSTALEQUIP'
    end
    object cdsProcessoItemDATAFALHAEQUIP: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAFALHAEQUIP'
    end
    object cdsProcessoItemNCMID: TStringField
      DisplayWidth = 10
      FieldName = 'NCMID'
      EditMask = '>9999.99.99;0; '
      Size = 10
    end
    object cdsProcessoItemDECLARACAOID: TBCDField
      DisplayWidth = 9
      FieldName = 'DECLARACAOID'
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemL_DIID: TStringField
      DisplayWidth = 12
      FieldName = 'L_DIID'
      ProviderFlags = []
      Size = 12
    end
    object cdsProcessoItemL_NFEID: TStringField
      DisplayWidth = 6
      FieldName = 'L_NFEID'
      ProviderFlags = []
      Size = 6
    end
    object cdsProcessoItemL_DATAEMISSAONFEID: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'L_DATAEMISSAONFEID'
      ProviderFlags = []
    end
    object cdsProcessoItemL_DATAENTRADANFEID: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'L_DATAENTRADANFEID'
      ProviderFlags = []
    end
    object cdsProcessoItemPRIORIDADE: TStringField
      DisplayWidth = 1
      FieldName = 'PRIORIDADE'
      Size = 1
    end
    object cdsProcessoItemTSBREFID: TStringField
      DisplayWidth = 20
      FieldName = 'TSBREFID'
    end
    object cdsProcessoItemNOMEUNIDADE: TStringField
      DisplayWidth = 100
      FieldName = 'NOMEUNIDADE'
      Size = 100
    end
    object cdsProcessoItemRETORNAPECADEF: TBCDField
      DisplayWidth = 2
      FieldName = 'RETORNAPECADEF'
      Precision = 1
      Size = 0
    end
    object cdsProcessoItemDATADEVOLUCAO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATADEVOLUCAO'
    end
    object cdsProcessoItemDATAPREVRETORNO: TSQLTimeStampField
      DisplayWidth = 34
      FieldName = 'DATAPREVRETORNO'
    end
    object cdsProcessoItemDATAEMBTOKIO: TSQLTimeStampField
      FieldName = 'DATAEMBTOKIO'
    end
    object cdsProcessoItemUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
    object cdsProcessoItemsqldtsProcessoItemSerie: TDataSetField
      DisplayWidth = 10
      FieldName = 'sqldtsProcessoItemSerie'
      Visible = False
    end
  end
  object dsProcesso: TDataSource
    AutoEdit = False
    DataSet = cdsProcesso
    Left = 392
    Top = 8
  end
  object dsProcessoItem: TDataSource
    AutoEdit = False
    DataSet = cdsProcessoItem
    Left = 393
    Top = 53
  end
  object cdsIndice: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvIndice'
    RemoteServer = shdcnnIT
    StoreDefs = True
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsIndiceNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 8
    object cdsIndiceDATAID: TSQLTimeStampField
      DisplayLabel = 'DataId'
      FieldName = 'DATAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsIndiceDOLAROFICIALC: TFMTBCDField
      DisplayLabel = 'Dolar Oficial Compra'
      FieldName = 'DOLAROFICIALC'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceDOLAROFICIALV: TFMTBCDField
      DisplayLabel = 'Dolar Oficial Venda'
      FieldName = 'DOLAROFICIALV'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceDOLARPARALELOC: TFMTBCDField
      DisplayLabel = 'Dolar Paralelo Compra'
      FieldName = 'DOLARPARALELOC'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceDOLARPARALELOV: TFMTBCDField
      DisplayLabel = 'Dolar Paralelo Venda'
      FieldName = 'DOLARPARALELOV'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceDOLARTURISMOC: TFMTBCDField
      DisplayLabel = 'Dolar Turismo Compra'
      FieldName = 'DOLARTURISMOC'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceDOLARTURISMOV: TFMTBCDField
      DisplayLabel = 'Dolar Turismo Venda'
      FieldName = 'DOLARTURISMOV'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceDOLARFISCALDIARIO: TFMTBCDField
      DisplayLabel = 'Dolar Fiscal Di'#225'rio'
      FieldName = 'DOLARFISCALDIARIO'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceYENEFISCALDIARIO: TFMTBCDField
      DisplayLabel = 'Yene Fiscal Di'#225'rio'
      FieldName = 'YENEFISCALDIARIO'
      DisplayFormat = '###,###.000000'
      Precision = 14
    end
    object cdsIndiceUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object cdsTipoCategoria: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoCategoria'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsTipoCategoriaNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 284
    object cdsTipoCategoriaTIPOCATEGORIAID: TBCDField
      FieldName = 'TIPOCATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsTipoCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoCategoriaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsTipoCategoria: TDataSource
    AutoEdit = False
    DataSet = cdsTipoCategoria
    Left = 176
    Top = 284
  end
  object cdsRazaoExigencia: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvRazaoExigencia'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsRazaoExigenciaNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 332
    object cdsRazaoExigenciaRAZAOEXIGENCIAID: TBCDField
      FieldName = 'RAZAOEXIGENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsRazaoExigenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsRazaoExigenciaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsRazaoExigencia: TDataSource
    AutoEdit = False
    DataSet = cdsRazaoExigencia
    Left = 176
    Top = 332
  end
  object cdsFrequencia: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvFrequencia'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsFrequenciaNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 380
    object cdsFrequenciaFREQUENCIAID: TBCDField
      FieldName = 'FREQUENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFrequenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsFrequenciaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsFrequencia: TDataSource
    AutoEdit = False
    DataSet = cdsFrequencia
    Left = 176
    Top = 380
  end
  object cdsListaPreco: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvListaPreco'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsListaPrecoNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 428
    object cdsListaPrecoPARTNUMBERID: TStringField
      Tag = 3
      FieldName = 'PARTNUMBERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsListaPrecoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object cdsListaPrecoMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsListaPrecoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsListaPrecoVLRVENDA: TBCDField
      FieldName = 'VLRVENDA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsListaPrecoVLRTROCA: TBCDField
      FieldName = 'VLRTROCA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsListaPrecoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsListaPreco: TDataSource
    AutoEdit = False
    DataSet = cdsListaPreco
    Left = 176
    Top = 428
  end
  object cdsCorListaPreco: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCorListaPreco'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterPost
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsCorListaPrecoNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 80
    Top = 476
    object cdsCorListaPrecoDATAID: TSQLTimeStampField
      FieldName = 'DATAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCorListaPrecoVLRDOLAR: TFMTBCDField
      FieldName = 'VLRDOLAR'
      DisplayFormat = '###,###.000000'
      EditFormat = '###,###.000000'
      Precision = 14
      Size = 6
    end
    object cdsCorListaPrecoVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '###,###.00'
      EditFormat = '###,###.00'
      Precision = 14
      Size = 6
    end
    object cdsCorListaPrecoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsCorListaPrecoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsCorListaPreco: TDataSource
    AutoEdit = False
    DataSet = cdsCorListaPreco
    Left = 176
    Top = 476
  end
  object cdsRelLD: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CONTACONTABILID'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CREDDEB'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DIID'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATAENTRADANFEID'
        DataType = ftTimeStamp
      end
      item
        Name = 'NFEID'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NUMEMPRESAEXP'
        DataType = ftBCD
        Precision = 8
        Size = 2
      end
      item
        Name = 'NUMDEMONSDESPESA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'VLRTOTALFOBUS'
        DataType = ftBCD
        Precision = 14
        Size = 2
      end
      item
        Name = 'VLRDEBITO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 8
      end
      item
        Name = 'VLRCREDITO'
        DataType = ftFMTBcd
        Precision = 32
        Size = 8
      end
      item
        Name = 'CENTROCUSTOID'
        DataType = ftString
        Size = 7
      end>
    IndexDefs = <
      item
        Name = 'idxConta'
        Fields = 'CONTA'
      end>
    Params = <
      item
        DataType = ftString
        Name = 'PEMP1'
        ParamType = ptInput
        Value = '01/01/01'
      end
      item
        DataType = ftString
        Name = 'PEMP2'
        ParamType = ptInput
        Value = '01/01/01'
      end
      item
        DataType = ftString
        Name = 'PEMP_1'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PEMP_2'
        ParamType = ptInput
        Value = '1'
      end>
    ProviderName = 'dsprvRelLD'
    RemoteServer = shdcnnIT
    StoreDefs = True
    Left = 480
    Top = 172
    object cdsRelLDCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsRelLDCREDDEB: TStringField
      FieldName = 'CREDDEB'
      Size = 1
    end
    object cdsRelLDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsRelLDDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsRelLDDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object cdsRelLDNFEID: TStringField
      FieldName = 'NFEID'
      Size = 6
    end
    object cdsRelLDNUMEMPRESAEXP: TBCDField
      FieldName = 'NUMEMPRESAEXP'
      Precision = 8
      Size = 2
    end
    object cdsRelLDNUMDEMONSDESPESA: TStringField
      FieldName = 'NUMDEMONSDESPESA'
      Size = 10
    end
    object cdsRelLDREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 100
    end
    object cdsRelLDVLRTOTALFOBUS: TBCDField
      FieldName = 'VLRTOTALFOBUS'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsRelLDVLRDEBITO: TFMTBCDField
      FieldName = 'VLRDEBITO'
      Precision = 32
    end
    object cdsRelLDVLRCREDITO: TFMTBCDField
      FieldName = 'VLRCREDITO'
      Precision = 32
    end
    object cdsRelLDCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 7
    end
  end
  object dsRelLD: TDataSource
    DataSet = cdsRelLD
    Left = 560
    Top = 172
  end
  object cdsProcessoItemSerie: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProcessoItemsqldtsProcessoItemSerie
    Params = <>
    AfterPost = cdsProcessoItemSerieAfterPost
    AfterDelete = cdsProcessoItemSerieAfterDelete
    OnNewRecord = cdsProcessoItemSerieNewRecord
    OnReconcileError = cdsProcessoReconcileError
    Left = 280
    Top = 100
    object cdsProcessoItemSeriePROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemSerieTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemSerieDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProcessoItemSerieITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsProcessoItemSerieSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsProcessoItemSerieMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsProcessoItemSerieCOMPOSICAO: TBlobField
      FieldName = 'COMPOSICAO'
      BlobType = ftFmtMemo
      Size = 1
    end
    object cdsProcessoItemSerieUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsProcessoItemSerie: TDataSource
    DataSet = cdsProcessoItemSerie
    Left = 392
    Top = 100
  end
  object cdsConta: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvConta'
    RemoteServer = shdcnnIT
    AfterPost = cdsContaAfterPost
    AfterDelete = cdsContaAfterDelete
    OnNewRecord = cdsContaNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 280
    Top = 144
    object cdsContaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      OnValidate = cdsContaEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsContaL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      Size = 60
    end
    object cdsContaNOMECAMPOID: TStringField
      FieldName = 'NOMECAMPOID'
      Required = True
      Size = 100
    end
    object cdsContaCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      OnValidate = cdsContaCONTACONTABILIDValidate
      Size = 10
    end
    object cdsContaL_DESCRICAOCONTA: TStringField
      FieldName = 'L_DESCRICAOCONTA'
      Size = 100
    end
    object cdsContaCREDDEB: TStringField
      FieldName = 'CREDDEB'
      Size = 1
    end
    object cdsContaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsConta: TDataSource
    AutoEdit = False
    DataSet = cdsConta
    Left = 392
    Top = 144
  end
  object cdsLocalChegada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvLocalChegada'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterDelete
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsLocalChegadaNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 280
    Top = 196
    object cdsLocalChegadaLOCALCHEGADAID: TBCDField
      Tag = 1
      FieldName = 'LOCALCHEGADAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsLocalChegadaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsLocalChegadaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object cdsViaEmbarque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvViaEmbarque'
    RemoteServer = shdcnnIT
    AfterPost = cdsIndiceAfterDelete
    AfterDelete = cdsIndiceAfterDelete
    OnNewRecord = cdsViaEmbarqueNewRecord
    OnReconcileError = cdsIndiceReconcileError
    Left = 280
    Top = 244
    object cdsViaEmbarqueVIAEMBARQUEID: TBCDField
      Tag = 1
      FieldName = 'VIAEMBARQUEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsViaEmbarqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsViaEmbarqueUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsLocalChegada: TDataSource
    AutoEdit = False
    DataSet = cdsLocalChegada
    Left = 392
    Top = 196
  end
  object dsViaEmbarque: TDataSource
    AutoEdit = False
    DataSet = cdsViaEmbarque
    Left = 392
    Top = 243
  end
end
