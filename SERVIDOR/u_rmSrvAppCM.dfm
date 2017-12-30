object SrvAppCM: TSrvAppCM
  OldCreateOrder = False
  Height = 464
  Width = 656
  object sqldtsIndContrato: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_INDCONTRATO.INDCONTRATOID,'#13#10'  CM_INDCONTRATO.DESCRI' +
      'CAO,'#13#10'  CM_INDCONTRATO.USUARIO'#13#10'  FROM'#13#10'  CM_INDCONTRATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 8
    object sqldtsIndContratoINDCONTRATOID: TBCDField
      FieldName = 'INDCONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsIndContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsIndContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvIndContrato: TDataSetProvider
    DataSet = sqldtsIndContrato
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 8
  end
  object sqldtsContratoAditivo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOADITIVO.EMPRESAID,'#13#10'  CM_CONTRATOADITIVO.CO' +
      'NTRATOID,'#13#10'  CM_CONTRATOADITIVO.ADITIVOID,'#13#10'  CM_CONTRATOADITIVO' +
      '.DATAADITIVO,'#13#10'  CM_CONTRATOADITIVO.USUARIO'#13#10'  FROM'#13#10'  CM_CONTRA' +
      'TOADITIVO CM_CONTRATOADITIVO'#13#10' WHERE'#13#10'  CM_CONTRATOADITIVO.EMPRE' +
      'SAID = :EMPRESAID'#13#10'  AND CM_CONTRATOADITIVO.CONTRATOID = :CONTRA' +
      'TOID'
    DataSource = dsContratoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'CONTRATOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 248
    object sqldtsContratoAditivoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAditivoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAditivoADITIVOID: TBCDField
      FieldName = 'ADITIVOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAditivoDATAADITIVO: TSQLTimeStampField
      FieldName = 'DATAADITIVO'
    end
    object sqldtsContratoAditivoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsContratoParc: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOPARC.EMPRESAID,'#13#10'  CM_CONTRATOPARC.CONTRATO' +
      'ID,'#13#10'  CM_CONTRATOPARC.ANOID,'#13#10'  CM_CONTRATOPARC.PARCELAID,'#13#10'  C' +
      'M_CONTRATOPARC.PERIODOINICIAL,'#13#10'  CM_CONTRATOPARC.PERIODOFINAL,'#13 +
      #10'  CM_CONTRATOPARC.DATAVENCIMENTO,'#13#10'  CM_CONTRATOPARC.MESVENCIME' +
      'NTO,'#13#10'  CM_CONTRATOPARC.DATAPAGAMENTO,'#13#10'  CM_CONTRATOPARC.VLRCON' +
      'TRATO,'#13#10'  CM_CONTRATOPARC.PDSID,'#13#10'  CM_CONTRATOPARC.NFSID,'#13#10'  CM' +
      '_CONTRATOPARC.DATAEMISSAOID,'#13#10'  CM_CONTRATOPARC.GERADA,'#13#10'  CM_CO' +
      'NTRATOPARC.USUARIO'#13#10'  FROM'#13#10'  CM_CONTRATOPARC CM_CONTRATOPARC'#13#10' ' +
      'WHERE'#13#10'  CM_CONTRATOPARC.EMPRESAID = :EMPRESAID'#13#10'  AND CM_CONTRA' +
      'TOPARC.CONTRATOID = :CONTRATOID'#13#10'  AND CM_CONTRATOPARC.ANOID = :' +
      'ANOID'
    DataSource = dsContratoAnoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'CONTRATOID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'ANOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 200
    object sqldtsContratoParcEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoParcCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoParcANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoParcPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoParcPERIODOINICIAL: TSQLTimeStampField
      FieldName = 'PERIODOINICIAL'
    end
    object sqldtsContratoParcPERIODOFINAL: TSQLTimeStampField
      FieldName = 'PERIODOFINAL'
    end
    object sqldtsContratoParcDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsContratoParcMESVENCIMENTO: TStringField
      FieldName = 'MESVENCIMENTO'
      Size = 10
    end
    object sqldtsContratoParcDATAPAGAMENTO: TSQLTimeStampField
      FieldName = 'DATAPAGAMENTO'
    end
    object sqldtsContratoParcVLRCONTRATO: TBCDField
      FieldName = 'VLRCONTRATO'
      Precision = 14
      Size = 2
    end
    object sqldtsContratoParcPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoParcNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoParcDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object sqldtsContratoParcGERADA: TBCDField
      FieldName = 'GERADA'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoParcUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsTermoContrato: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_TERMOCONTRATO.TERMOCONTRATOID,'#13#10'  CM_TERMOCONTRATO.' +
      'DESCRICAO,'#13#10'  CM_TERMOCONTRATO.USUARIO'#13#10'  FROM'#13#10'  CM_TERMOCONTRA' +
      'TO CM_TERMOCONTRATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 296
    object sqldtsTermoContratoTERMOCONTRATOID: TBCDField
      FieldName = 'TERMOCONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTermoContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTermoContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPreventiva: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_PREVENTIVA.PREVENTIVAID,'#13#10'  CM_PREVENTIVA.DESCRICAO' +
      ','#13#10'  CM_PREVENTIVA.USUARIO'#13#10'  FROM'#13#10'  CM_PREVENTIVA CM_PREVENTIV' +
      'A'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 248
    object sqldtsPreventivaPREVENTIVAID: TBCDField
      FieldName = 'PREVENTIVAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPreventivaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sqldtsPreventivaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsCorretiva: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CORRETIVA.CORRETIVAID,'#13#10'  CM_CORRETIVA.DESCRICAO,'#13#10 +
      '  CM_CORRETIVA.USUARIO'#13#10'  FROM'#13#10'  CM_CORRETIVA CM_CORRETIVA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 200
    object sqldtsCorretivaCORRETIVAID: TBCDField
      FieldName = 'CORRETIVAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCorretivaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sqldtsCorretivaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsTipoContrato: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_TIPOCONTRATO.TIPOCONTRATOID,'#13#10'  CM_TIPOCONTRATO.DES' +
      'CRICAO,'#13#10'  CM_TIPOCONTRATO.USUARIO'#13#10'  FROM'#13#10'  CM_TIPOCONTRATO CM' +
      '_TIPOCONTRATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 152
    object sqldtsTipoContratoTIPOCONTRATOID: TBCDField
      FieldName = 'TIPOCONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsContratoPadrao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOPADRAO.ANEXO,'#13#10'  CM_CONTRATOPADRAO.ADITIVO,' +
      #13#10'  CM_CONTRATOPADRAO.ULTIMOCONTRATO,'#13#10'  CM_CONTRATOPADRAO.USUAR' +
      'IO'#13#10'  FROM'#13#10'  CM_CONTRATOPADRAO CM_CONTRATOPADRAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 104
    object sqldtsContratoPadraoANEXO: TMemoField
      FieldName = 'ANEXO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsContratoPadraoADITIVO: TMemoField
      FieldName = 'ADITIVO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsContratoPadraoULTIMOCONTRATO: TBCDField
      FieldName = 'ULTIMOCONTRATO'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsValorIndice: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_VALORINDICE.INDICEID,'#13#10'  CM_VALORINDICE.DATAINDICE,' +
      #13#10'  CM_VALORINDICE.VLRINDICE,'#13#10'  CM_VALORINDICE.USUARIO'#13#10'  FROM'#13 +
      #10'  CM_VALORINDICE CM_VALORINDICE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 44
    Top = 56
    object sqldtsValorIndiceINDICEID: TBCDField
      FieldName = 'INDICEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsValorIndiceDATAINDICE: TSQLTimeStampField
      FieldName = 'DATAINDICE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsValorIndiceVLRINDICE: TFMTBCDField
      FieldName = 'VLRINDICE'
      Precision = 14
      Size = 6
    end
    object sqldtsValorIndiceUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvValorIndice: TDataSetProvider
    DataSet = sqldtsValorIndice
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 56
  end
  object dsprvContratoPadrao: TDataSetProvider
    DataSet = sqldtsContratoPadrao
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 104
  end
  object dsprvTipoContrato: TDataSetProvider
    DataSet = sqldtsTipoContrato
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 152
  end
  object dsprvCorretiva: TDataSetProvider
    DataSet = sqldtsCorretiva
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 200
  end
  object dsprvPreventiva: TDataSetProvider
    DataSet = sqldtsPreventiva
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 248
  end
  object dsprvTermoContrato: TDataSetProvider
    DataSet = sqldtsTermoContrato
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 152
    Top = 296
  end
  object sqldtsContratoServ: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOSERV.EMPRESAID,'#13#10'  CM_CONTRATOSERV.CONTRATO' +
      'ID,'#13#10'  CM_CONTRATOSERV.ANOID,'#13#10'  CM_CONTRATOSERV.ITEMID,'#13#10'  CM_C' +
      'ONTRATOSERV.SERVICOID,'#13#10'  EF_SERVICO.DESCRICAORESUMIDA L_DESCRIC' +
      'AORESUMIDA,'#13#10'  CM_CONTRATOSERV.VLRSERVICO,'#13#10'  CM_CONTRATOSERV.GR' +
      'UPOID,  '#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_GRUPO.DESCRI' +
      'CAO L_GRUPO,'#13#10'  CM_CONTRATOSERV.HISTORICO,'#13#10'  CM_CONTRATOSERV.US' +
      'UARIO'#13#10'  FROM'#13#10'  CM_CONTRATOSERV CM_CONTRATOSERV,'#13#10'  EF_GRUPO EF' +
      '_GRUPO,'#13#10'  EF_SERVICO EF_SERVICO'#13#10' WHERE'#13#10'  EF_GRUPO.GRUPOID(+) ' +
      '= CM_CONTRATOSERV.GRUPOID'#13#10'  AND EF_SERVICO.EMPRESAID(+) = CM_CO' +
      'NTRATOSERV.EMPRESAID'#13#10'  AND EF_SERVICO.SERVICOID(+) = CM_CONTRAT' +
      'OSERV.SERVICOID'#13#10'  AND CM_CONTRATOSERV.EMPRESAID = :EMPRESAID'#13#10' ' +
      ' AND CM_CONTRATOSERV.CONTRATOID = :CONTRATOID   '#13#10'  AND CM_CONTR' +
      'ATOSERV.ANOID = :ANOID'
    DataSource = dsContratoAnoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'CONTRATOID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'ANOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 152
    object sqldtsContratoServEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoServCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoServANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoServITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoServSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoServL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoServVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsContratoServGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoServL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsContratoServL_GRUPO: TStringField
      FieldName = 'L_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoServHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 300
    end
    object sqldtsContratoServUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsContratoApar: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOAPAR.EMPRESAID,'#13#10'  CM_CONTRATOAPAR.CONTRATO' +
      'ID,'#13#10'  CM_CONTRATOAPAR.ANOID,'#13#10'  CM_CONTRATOAPAR.SERIEID,'#13#10'  CM_' +
      'CONTRATOAPAR.MODELOID,'#13#10'  CM_CONTRATOAPAR.TIPOCONTRATOID,'#13#10'  CM_' +
      'TIPOCONTRATO.DESCRICAO L_DESCRTIPOCONTRATO,'#13#10'  CM_CONTRATOAPAR.V' +
      'LRMENSAL,'#13#10'  CM_CONTRATOAPAR.VLRCONTRATO,'#13#10'  CM_CONTRATOAPAR.COR' +
      'RETIVAID,  '#13#10'  CM_CORRETIVA.DESCRICAO L_DESCRICAOCORRETIVA,'#13#10'  C' +
      'M_CONTRATOAPAR.PREVENTIVAID,'#13#10'  CM_PREVENTIVA.DESCRICAO L_DESCRI' +
      'CAOPREVENTIVA,  '#13#10'  CM_CONTRATOAPAR.HORASESPERA,'#13#10'  CM_CONTRATOA' +
      'PAR.QTDPREVENTIVAS,'#13#10'  CM_CONTRATOAPAR.QTDPREVENTIVASUTIL,'#13#10'  CM' +
      '_CONTRATOAPAR.BLOQUEARPREVENTIVAS,'#13#10'  CM_CONTRATOAPAR.QTDCORRETI' +
      'VAS,'#13#10'  CM_CONTRATOAPAR.QTDCORRETIVASUTIL,'#13#10'  CM_CONTRATOAPAR.BL' +
      'OQUEARCORRETIVAS,'#13#10'  CM_CONTRATOAPAR.QTDPECAS,'#13#10'  CM_CONTRATOAPA' +
      'R.QTDPECASUTIL,'#13#10'  CM_CONTRATOAPAR.TERMOCONTRATOID,'#13#10'  CM_TERMOC' +
      'ONTRATO.DESCRICAO L_DESCRICAOTERMOCONTRATO,'#13#10'  CM_CONTRATOAPAR.I' +
      'MPRCONDCONTR,'#13#10'  CM_CONTRATOAPAR.USUARIO'#13#10'  FROM'#13#10'  CM_CONTRATOA' +
      'PAR CM_CONTRATOAPAR,'#13#10'  CM_TIPOCONTRATO CM_TIPOCONTRATO,'#13#10'  CM_C' +
      'ORRETIVA CM_CORRETIVA,'#13#10'  CM_PREVENTIVA CM_PREVENTIVA,'#13#10'  CM_TER' +
      'MOCONTRATO CM_TERMOCONTRATO'#13#10' WHERE'#13#10'  CM_TIPOCONTRATO.TIPOCONTR' +
      'ATOID(+) = CM_CONTRATOAPAR.TIPOCONTRATOID'#13#10'  AND CM_CORRETIVA.CO' +
      'RRETIVAID(+) = CM_CONTRATOAPAR.CORRETIVAID'#13#10'  AND CM_PREVENTIVA.' +
      'PREVENTIVAID(+) = CM_CONTRATOAPAR.PREVENTIVAID'#13#10'  AND CM_TERMOCO' +
      'NTRATO.TERMOCONTRATOID(+) = CM_CONTRATOAPAR.TERMOCONTRATOID'#13#10'  A' +
      'ND CM_CONTRATOAPAR.EMPRESAID = :EMPRESAID'#13#10'  AND CM_CONTRATOAPAR' +
      '.CONTRATOID = :CONTRATOID'#13#10'  AND CM_CONTRATOAPAR.ANOID = :ANOID'
    DataSource = dsContratoAnoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTRATOID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 104
    object sqldtsContratoAparEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsContratoAparMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsContratoAparTIPOCONTRATOID: TBCDField
      FieldName = 'TIPOCONTRATOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparL_DESCRTIPOCONTRATO: TStringField
      FieldName = 'L_DESCRTIPOCONTRATO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoAparVLRMENSAL: TBCDField
      FieldName = 'VLRMENSAL'
      Precision = 14
      Size = 2
    end
    object sqldtsContratoAparVLRCONTRATO: TFMTBCDField
      FieldName = 'VLRCONTRATO'
      Precision = 20
    end
    object sqldtsContratoAparCORRETIVAID: TBCDField
      FieldName = 'CORRETIVAID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparL_DESCRICAOCORRETIVA: TStringField
      FieldName = 'L_DESCRICAOCORRETIVA'
      ProviderFlags = []
      Size = 200
    end
    object sqldtsContratoAparPREVENTIVAID: TBCDField
      FieldName = 'PREVENTIVAID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparL_DESCRICAOPREVENTIVA: TStringField
      FieldName = 'L_DESCRICAOPREVENTIVA'
      ProviderFlags = []
      Size = 200
    end
    object sqldtsContratoAparHORASESPERA: TBCDField
      FieldName = 'HORASESPERA'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparQTDPREVENTIVAS: TBCDField
      FieldName = 'QTDPREVENTIVAS'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparQTDPREVENTIVASUTIL: TBCDField
      FieldName = 'QTDPREVENTIVASUTIL'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparBLOQUEARPREVENTIVAS: TBCDField
      FieldName = 'BLOQUEARPREVENTIVAS'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoAparQTDCORRETIVAS: TBCDField
      FieldName = 'QTDCORRETIVAS'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparQTDCORRETIVASUTIL: TBCDField
      FieldName = 'QTDCORRETIVASUTIL'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparBLOQUEARCORRETIVAS: TBCDField
      FieldName = 'BLOQUEARCORRETIVAS'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoAparQTDPECAS: TBCDField
      FieldName = 'QTDPECAS'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparQTDPECASUTIL: TBCDField
      FieldName = 'QTDPECASUTIL'
      Precision = 8
      Size = 2
    end
    object sqldtsContratoAparTERMOCONTRATOID: TBCDField
      FieldName = 'TERMOCONTRATOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAparL_DESCRICAOTERMOCONTRATO: TStringField
      FieldName = 'L_DESCRICAOTERMOCONTRATO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoAparIMPRCONDCONTR: TBCDField
      FieldName = 'IMPRCONDCONTR'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoAparUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsContratoAno: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOANO.EMPRESAID,'#13#10'  CM_CONTRATOANO.CONTRATOID' +
      ','#13#10'  CM_CONTRATOANO.ANOID,'#13#10'  CM_CONTRATOANO.INDCONTRATOID,'#13#10'  C' +
      'M_INDCONTRATO.DESCRICAO L_DESCRICAOINDICE,  '#13#10'  CM_CONTRATOANO.D' +
      'ATAINICIOCONTRATO,'#13#10'  CM_CONTRATOANO.DATAFIMCONTRATO,'#13#10'  CM_CONT' +
      'RATOANO.VLRCONTRATOMENSAL,'#13#10'  CM_CONTRATOANO.VLRTOTALCONTRATO,'#13#10 +
      '  CM_CONTRATOANO.QTDPARCELA,'#13#10'  CM_CONTRATOANO.PAGAMENTO,'#13#10'  CM_' +
      'CONTRATOANO.PERIODOCONCLUIDO,'#13#10'  CM_CONTRATOANO.USUARIO'#13#10'  FROM'#13 +
      #10'  CM_CONTRATOANO,'#13#10'  CM_INDCONTRATO'#13#10' WHERE'#13#10'  CM_INDCONTRATO.I' +
      'NDCONTRATOID(+) = CM_CONTRATOANO.INDCONTRATOID'#13#10'  AND CM_CONTRAT' +
      'OANO.EMPRESAID = :EMPRESAID'#13#10'  AND CM_CONTRATOANO.CONTRATOID = :' +
      'CONTRATOID'
    DataSource = dsContratoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'CONTRATOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 56
    object sqldtsContratoAnoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAnoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAnoANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAnoINDCONTRATOID: TBCDField
      FieldName = 'INDCONTRATOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAnoL_DESCRICAOINDICE: TStringField
      FieldName = 'L_DESCRICAOINDICE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoAnoDATAINICIOCONTRATO: TSQLTimeStampField
      FieldName = 'DATAINICIOCONTRATO'
    end
    object sqldtsContratoAnoDATAFIMCONTRATO: TSQLTimeStampField
      FieldName = 'DATAFIMCONTRATO'
    end
    object sqldtsContratoAnoVLRCONTRATOMENSAL: TBCDField
      FieldName = 'VLRCONTRATOMENSAL'
      Precision = 14
      Size = 2
    end
    object sqldtsContratoAnoVLRTOTALCONTRATO: TBCDField
      FieldName = 'VLRTOTALCONTRATO'
      Precision = 14
      Size = 2
    end
    object sqldtsContratoAnoQTDPARCELA: TBCDField
      FieldName = 'QTDPARCELA'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAnoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 100
    end
    object sqldtsContratoAnoPERIODOCONCLUIDO: TBCDField
      FieldName = 'PERIODOCONCLUIDO'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoAnoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsContrato: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATO.EMPRESAID,'#13#10'  CM_CONTRATO.CONTRATOID,'#13#10'  C' +
      'M_CONTRATO.DATAEMISSAO,'#13#10'  CM_CONTRATO.CONTRATOANTIGOID,'#13#10'  CM_C' +
      'ONTRATO.CLIENTEID,'#13#10'  EF_ENTIDADE_CLIENTE.NOME L_NOME_CLIENTE,  ' +
      #13#10'  EF_ENTIDADE_CLIENTE.CPFCNPJ L_CNPJ,'#13#10'  EF_ENTIDADE_CLIENTE.C' +
      'EPID L_CEPID,'#13#10'  EF_ENTIDADE_CLIENTE.ENDERECO L_ENDERECO,'#13#10'  EF_' +
      'ENTIDADE_CLIENTE.COMPLEMENTO L_COMPLEMENTO,'#13#10'  EF_ENTIDADE_CLIEN' +
      'TE.NUMERO L_NUMERO,'#13#10'  EF_ENTIDADE_CLIENTE.BAIRRO L_BAIRRO,'#13#10'  E' +
      'F_ENTIDADE_CLIENTE.CIDADE L_CIDADE,'#13#10'  EF_ENTIDADE_CLIENTE.SIGLA' +
      'UFID L_SIGLAUFID,'#13#10'  EF_ENTIDADE_CLIENTE.TELEFONE L_TELEFONE, '#13#10 +
      '  EF_ENTIDADE_CLIENTE.STATUSFINANCEIRO L_STATUSFINANCEIRO, '#13#10'  C' +
      'M_CONTRATO.CONTATO,'#13#10'  CM_CONTRATO.FILIALID,'#13#10'  EF_FILIAL.NOMEFA' +
      'NTASIA L_FILIAL,'#13#10'  CM_CONTRATO.NATUREZAOPID,'#13#10'  EF_NATUREZAOP.C' +
      'FOP L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO L_DESCRICA' +
      'OOPERACAOUSUARIO,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAONOTA L_DESCR' +
      'ICAOOPERACAONOTA,'#13#10'  CM_CONTRATO.ALIQUOTAICMS,'#13#10'  CM_CONTRATO.OB' +
      'SERVACAOID,'#13#10'  CM_CONTRATO.OBSPDS,'#13#10'  CM_CONTRATO.TRANSPORTADORI' +
      'D,'#13#10'  EF_ENTIDADE_TRANSP.NOME L_NOME_TRANSPORTADORA,'#13#10'  CM_CONTR' +
      'ATO.OBSCLIENTE,'#13#10'  CM_CONTRATO.CONTRATOMEMO,'#13#10'  CM_CONTRATO.CANC' +
      'ELADO,'#13#10'  CM_CONTRATO.SUSPFATURAMENTO,  '#13#10'  CM_ULTIMO_ANO.ANOID ' +
      'L_ANO,'#13#10'  CM_ULTIMO_ANO.DATAINICIOCONTRATO L_DATAINICIOCONTRATO,' +
      #13#10'  CM_ULTIMO_ANO.DATAFIMCONTRATO L_DATAFIMCONTRATO, '#13#10'  CM_ULTI' +
      'MO_ANO.VLRCONTRATOMENSAL L_VLRCONTRATOMENSAL,'#13#10'  CM_ULTIMO_ANO.V' +
      'LRTOTALCONTRATO L_VLRTOTALCONTRATO,'#13#10'  CM_ULTIMO_ANO.QTDPARCELA ' +
      'L_QTDPARCELA,'#13#10'  CM_ULTIMO_ANO.PAGAMENTO L_PAGAMENTO,'#13#10'  CM_ULTI' +
      'MO_ANO.PERIODOCONCLUIDO L_PERIODOCONCLUIDO,  '#13#10'  CM_CONTRATO.PRE' +
      'CONTRATO,'#13#10'  CM_CONTRATO.USUARIO'#13#10'  FROM'#13#10'  CM_CONTRATO CM_CONTR' +
      'ATO,'#13#10'  EF_ENTIDADE EF_ENTIDADE_CLIENTE,'#13#10'  EF_ENTIDADE EF_ENTID' +
      'ADE_TRANSP,'#13#10'  EF_FILIAL EF_FILIAL,'#13#10'  EF_NATUREZAOP EF_NATUREZA' +
      'OP,'#13#10'( SELECT '#13#10'       C.EMPRESAID,'#13#10'       C.CONTRATOID,'#13#10'     ' +
      '  C.ANOID,'#13#10'       C.DATAINICIOCONTRATO,'#13#10'       C.DATAFIMCONTRA' +
      'TO,'#13#10'       C.VLRCONTRATOMENSAL,'#13#10'       C.VLRTOTALCONTRATO,'#13#10'  ' +
      '     C.QTDPARCELA,'#13#10'       C.PAGAMENTO,'#13#10'       C.PERIODOCONCLUI' +
      'DO'#13#10'  FROM CM_CONTRATOANO C'#13#10' WHERE (EMPRESAID, CONTRATOID, ANOI' +
      'D) IN'#13#10'       (SELECT EMPRESAID, CONTRATOID, MAX(ANOID)'#13#10'       ' +
      '   FROM CM_CONTRATOANO'#13#10'         WHERE CM_CONTRATOANO.EMPRESAID ' +
      '= C.EMPRESAID'#13#10'           AND CM_CONTRATOANO.CONTRATOID = C.CONT' +
      'RATOID'#13#10'         GROUP BY EMPRESAID, CONTRATOID) ) CM_ULTIMO_ANO' +
      '  '#13#10'  '#13#10' WHERE'#13#10'  EF_ENTIDADE_CLIENTE.ENTIDADEID(+) = CM_CONTRAT' +
      'O.CLIENTEID'#13#10'  AND CM_CONTRATO.TRANSPORTADORID = EF_ENTIDADE_TRA' +
      'NSP.ENTIDADEID(+)'#13#10'  AND EF_FILIAL.FILIALID(+) = CM_CONTRATO.FIL' +
      'IALID'#13#10'  AND EF_NATUREZAOP.NATUREZAOPID(+) = CM_CONTRATO.NATUREZ' +
      'AOPID'#13#10'  AND CM_CONTRATO.EMPRESAID = CM_ULTIMO_ANO.EMPRESAID(+)'#13 +
      #10'  AND CM_CONTRATO.CONTRATOID = CM_ULTIMO_ANO.CONTRATOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 8
    object sqldtsContratoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoDATAEMISSAO: TSQLTimeStampField
      FieldName = 'DATAEMISSAO'
    end
    object sqldtsContratoCONTRATOANTIGOID: TStringField
      FieldName = 'CONTRATOANTIGOID'
    end
    object sqldtsContratoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_NOME_CLIENTE: TStringField
      FieldName = 'L_NOME_CLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoL_CNPJ: TStringField
      FieldName = 'L_CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsContratoL_CEPID: TBCDField
      FieldName = 'L_CEPID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_ENDERECO: TStringField
      FieldName = 'L_ENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoL_COMPLEMENTO: TStringField
      FieldName = 'L_COMPLEMENTO'
      ProviderFlags = []
    end
    object sqldtsContratoL_NUMERO: TStringField
      FieldName = 'L_NUMERO'
      ProviderFlags = []
    end
    object sqldtsContratoL_BAIRRO: TStringField
      FieldName = 'L_BAIRRO'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsContratoL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsContratoL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsContratoL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object sqldtsContratoL_STATUSFINANCEIRO: TBCDField
      FieldName = 'L_STATUSFINANCEIRO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsContratoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object sqldtsContratoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsContratoNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsContratoL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 8
      Size = 6
    end
    object sqldtsContratoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoOBSPDS: TStringField
      FieldName = 'OBSPDS'
      Size = 300
    end
    object sqldtsContratoTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_NOME_TRANSPORTADORA: TStringField
      FieldName = 'L_NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoOBSCLIENTE: TMemoField
      FieldName = 'OBSCLIENTE'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsContratoCONTRATOMEMO: TStringField
      FieldName = 'CONTRATOMEMO'
      Size = 300
    end
    object sqldtsContratoCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoSUSPFATURAMENTO: TBCDField
      FieldName = 'SUSPFATURAMENTO'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoL_ANO: TBCDField
      FieldName = 'L_ANO'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_DATAINICIOCONTRATO: TSQLTimeStampField
      FieldName = 'L_DATAINICIOCONTRATO'
      ProviderFlags = []
    end
    object sqldtsContratoL_DATAFIMCONTRATO: TSQLTimeStampField
      FieldName = 'L_DATAFIMCONTRATO'
      ProviderFlags = []
    end
    object sqldtsContratoL_VLRCONTRATOMENSAL: TBCDField
      FieldName = 'L_VLRCONTRATOMENSAL'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsContratoL_VLRTOTALCONTRATO: TBCDField
      FieldName = 'L_VLRTOTALCONTRATO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsContratoL_QTDPARCELA: TBCDField
      FieldName = 'L_QTDPARCELA'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsContratoL_PAGAMENTO: TStringField
      FieldName = 'L_PAGAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContratoL_PERIODOCONCLUIDO: TBCDField
      FieldName = 'L_PERIODOCONCLUIDO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsContratoPRECONTRATO: TBCDField
      FieldName = 'PRECONTRATO'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvContrato: TDataSetProvider
    DataSet = sqldtsContrato
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 400
    Top = 8
  end
  object dsContratoLink: TDataSource
    DataSet = sqldtsContrato
    Left = 400
    Top = 56
  end
  object dsContratoAnoLink: TDataSource
    DataSet = sqldtsContratoAno
    Left = 400
    Top = 104
  end
  object sqldtsVisualContrato: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT CM_CONTRATO.EMPRESAID,'#13#10'       CM_CONTRATO.CONTRATOID,'#13#10' ' +
      '      CM_CONTRATO.CONTRATOANTIGOID,'#13#10'       CM_CONTRATO.FILIALID' +
      ','#13#10'       EF_FILIAL.NOMEFANTASIA L_FILIALNOME,'#13#10'       CM_CONTRA' +
      'TOANO.ANOID,'#13#10'       CM_CONTRATO.CLIENTEID,'#13#10'       CM_CONTRATOA' +
      'PAR.SERIEID,'#13#10'       CM_CONTRATOAPAR.MODELOID,'#13#10'       CM_CONTRA' +
      'TOAPAR.VLRCONTRATO,'#13#10'       EF_ENTIDADE_CLIENTE.NOME L_NOME_CLIE' +
      'NTE,'#13#10'       EF_ENTIDADE_CLIENTE.CIDADE L_CIDADE,'#13#10'       EF_ENT' +
      'IDADE_CLIENTE.SIGLAUFID L_SIGLAUFID,'#13#10'       CM_CONTRATOANO.DATA' +
      'INICIOCONTRATO,'#13#10'       CM_CONTRATOANO.DATAFIMCONTRATO,'#13#10'       ' +
      'CM_CONTRATO.CANCELADO,'#13#10'       CM_TIPOCONTRATO.DESCRICAO,'#13#10'     ' +
      '  CM_CONTRATOAPAR.QTDPECAS,'#13#10'       CM_CONTRATOAPAR.QTDPECASUTIL' +
      ','#13#10'       CM_CONTRATOAPAR.QTDPREVENTIVAS,'#13#10'       CM_CONTRATOAPA' +
      'R.QTDPREVENTIVASUTIL,'#13#10'       CM_CONTRATOAPAR.QTDCORRETIVAS,'#13#10'  ' +
      '     CM_CONTRATOAPAR.QTDCORRETIVASUTIL,'#13#10'       CM_CONTRATOANO.Q' +
      'TDPARCELA,'#13#10'       CM_CONTRATOANO.PAGAMENTO,'#13#10'       CM_CONTRATO' +
      'APAR.VLRMENSAL,'#13#10'       CM_CONTRATOANO.VLRCONTRATOMENSAL,'#13#10'     ' +
      '  CM_CONTRATOANO.VLRTOTALCONTRATO,'#13#10'       CM_CONTRATO.OBSCLIENT' +
      'E,'#13#10'       CM_CONTRATOAPAR.CORRETIVAID,'#13#10'       CM_CORRETIVA.DES' +
      'CRICAO L_DESCRCORRETIVA,'#13#10'       CM_CONTRATOAPAR.PREVENTIVAID,'#13#10 +
      '       CM_PREVENTIVA.DESCRICAO L_DESCRICAOPREVENTIVA'#13#10'  FROM CM_' +
      'CONTRATO CM_CONTRATO,'#13#10'       EF_FILIAL,'#13#10'       CM_CONTRATOANO ' +
      'CM_CONTRATOANO,'#13#10'       CM_CONTRATOAPAR CM_CONTRATOAPAR,'#13#10'      ' +
      ' CM_TIPOCONTRATO CM_TIPOCONTRATO,'#13#10'       EF_ENTIDADE EF_ENTIDAD' +
      'E_CLIENTE,'#13#10'       CM_CORRETIVA CM_CORRETIVA,'#13#10'       CM_PREVENT' +
      'IVA CM_PREVENTIVA'#13#10' WHERE CM_CONTRATOANO.EMPRESAID = CM_CONTRATO' +
      '.EMPRESAID'#13#10'   AND CM_CONTRATOANO.CONTRATOID = CM_CONTRATO.CONTR' +
      'ATOID'#13#10'   AND CM_CONTRATOAPAR.EMPRESAID = CM_CONTRATOANO.EMPRESA' +
      'ID'#13#10'   AND CM_CONTRATOAPAR.CONTRATOID = CM_CONTRATOANO.CONTRATOI' +
      'D'#13#10'   AND CM_CONTRATOAPAR.ANOID = CM_CONTRATOANO.ANOID'#13#10'   AND C' +
      'M_CONTRATO.FILIALID = EF_FILIAL.FILIALID(+)'#13#10'   AND CM_TIPOCONTR' +
      'ATO.TIPOCONTRATOID(+) = CM_CONTRATOAPAR.TIPOCONTRATOID'#13#10'   AND E' +
      'F_ENTIDADE_CLIENTE.ENTIDADEID(+) = CM_CONTRATO.CLIENTEID'#13#10'   AND' +
      ' CM_CORRETIVA.CORRETIVAID(+) = CM_CONTRATOAPAR.CORRETIVAID'#13#10'   A' +
      'ND CM_PREVENTIVA.PREVENTIVAID(+) = CM_CONTRATOAPAR.PREVENTIVAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 293
    Top = 296
    object sqldtsVisualContratoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoL_FILIALNOME: TStringField
      FieldName = 'L_FILIALNOME'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsVisualContratoCONTRATOANTIGOID: TStringField
      FieldName = 'CONTRATOANTIGOID'
    end
    object sqldtsVisualContratoANOID: TBCDField
      FieldName = 'ANOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoSERIEID: TStringField
      FieldName = 'SERIEID'
      Required = True
      Size = 40
    end
    object sqldtsVisualContratoMODELOID: TStringField
      FieldName = 'MODELOID'
      Required = True
      Size = 40
    end
    object sqldtsVisualContratoVLRCONTRATO: TFMTBCDField
      FieldName = 'VLRCONTRATO'
      Precision = 20
    end
    object sqldtsVisualContratoL_NOME_CLIENTE: TStringField
      FieldName = 'L_NOME_CLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVisualContratoL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsVisualContratoL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsVisualContratoDATAINICIOCONTRATO: TSQLTimeStampField
      FieldName = 'DATAINICIOCONTRATO'
    end
    object sqldtsVisualContratoDATAFIMCONTRATO: TSQLTimeStampField
      FieldName = 'DATAFIMCONTRATO'
    end
    object sqldtsVisualContratoCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object sqldtsVisualContratoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsVisualContratoQTDPECAS: TBCDField
      FieldName = 'QTDPECAS'
      Precision = 8
      Size = 2
    end
    object sqldtsVisualContratoQTDPECASUTIL: TBCDField
      FieldName = 'QTDPECASUTIL'
      Precision = 8
      Size = 2
    end
    object sqldtsVisualContratoQTDPREVENTIVAS: TBCDField
      FieldName = 'QTDPREVENTIVAS'
      Precision = 8
      Size = 2
    end
    object sqldtsVisualContratoQTDPREVENTIVASUTIL: TBCDField
      FieldName = 'QTDPREVENTIVASUTIL'
      Precision = 8
      Size = 2
    end
    object sqldtsVisualContratoQTDCORRETIVAS: TBCDField
      FieldName = 'QTDCORRETIVAS'
      Precision = 8
      Size = 2
    end
    object sqldtsVisualContratoQTDCORRETIVASUTIL: TBCDField
      FieldName = 'QTDCORRETIVASUTIL'
      Precision = 8
      Size = 2
    end
    object sqldtsVisualContratoQTDPARCELA: TBCDField
      FieldName = 'QTDPARCELA'
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoPAGAMENTO: TStringField
      FieldName = 'PAGAMENTO'
      Size = 100
    end
    object sqldtsVisualContratoVLRMENSAL: TBCDField
      FieldName = 'VLRMENSAL'
      Precision = 14
      Size = 2
    end
    object sqldtsVisualContratoVLRCONTRATOMENSAL: TBCDField
      FieldName = 'VLRCONTRATOMENSAL'
      Precision = 14
      Size = 2
    end
    object sqldtsVisualContratoVLRTOTALCONTRATO: TBCDField
      FieldName = 'VLRTOTALCONTRATO'
      Precision = 14
      Size = 2
    end
    object sqldtsVisualContratoCORRETIVAID: TBCDField
      FieldName = 'CORRETIVAID'
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoL_DESCRCORRETIVA: TStringField
      FieldName = 'L_DESCRCORRETIVA'
      Size = 200
    end
    object sqldtsVisualContratoPREVENTIVAID: TBCDField
      FieldName = 'PREVENTIVAID'
      Precision = 8
      Size = 0
    end
    object sqldtsVisualContratoL_DESCRICAOPREVENTIVA: TStringField
      FieldName = 'L_DESCRICAOPREVENTIVA'
      Size = 200
    end
    object sqldtsVisualContratoOBSCLIENTE: TMemoField
      FieldName = 'OBSCLIENTE'
      BlobType = ftOraClob
      Size = 1
    end
  end
  object dsprvVizualContrato: TDataSetProvider
    DataSet = sqldtsVisualContrato
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 400
    Top = 296
  end
  object sqldtsContratoAuto: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT C1.EMPRESAID,'#13#10'       C1.CONTRATOID,'#13#10'       C.ANOID,'#13#10'  ' +
      '     EF_ENTIDADE.NOME,'#13#10'       C1.CLIENTEID,'#13#10'       C1.NATUREZA' +
      'OPID,'#13#10'       C1.TRANSPORTADORID,'#13#10'       C1.OBSERVACAOID,'#13#10'    ' +
      '   C1.OBSPDS,'#13#10'       C.DATAVENCIMENTO,'#13#10'       C.VLRCONTRATO,'#13#10 +
      '       C.MESVENCIMENTO,'#13#10'       C.PERIODOINICIAL,'#13#10'       C.PERI' +
      'ODOFINAL,'#13#10'       EF_ENTIDADE.STATUSFINANCEIRO,'#13#10'       C.PARCEL' +
      'AID'#13#10'  FROM cm_contratoparc C,'#13#10'       CM_CONTRATO C1,'#13#10'       E' +
      'F_ENTIDADE,'#13#10'       EF_NATUREZAJURIDICA,'#13#10'       EF_CATEGJURIDIC' +
      'A'#13#10' WHERE C1.EMPRESAID = C.EMPRESAID'#13#10'       AND C1.CONTRATOID =' +
      ' C.CONTRATOID'#13#10'       AND C1.CLIENTEID = EF_ENTIDADE.ENTIDADEID'#13 +
      #10'       AND EF_ENTIDADE.NATUREZAJURIDICAID =   EF_NATUREZAJURIDI' +
      'CA.NATUREZAJURIDICAID(+)'#13#10'       AND EF_NATUREZAJURIDICA.CATEGJU' +
      'RIDICAID =    EF_CATEGJURIDICA.CATEGJURIDICAID(+)'#13#10'       AND NV' +
      'L(C1.CANCELADO, 0) = 0'#13#10'       AND NVL(GERADA, 0) <> 1'#13#10'       A' +
      'ND NVL(SUSPFATURAMENTO, 0) <> 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 352
    object sqldtsContratoAutoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoCONTRATOID: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoANOID: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsContratoAutoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContratoAutoOBSPDS: TStringField
      FieldName = 'OBSPDS'
      Size = 300
    end
    object sqldtsContratoAutoDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsContratoAutoMESVENCIMENTO: TStringField
      FieldName = 'MESVENCIMENTO'
      Size = 10
    end
    object sqldtsContratoAutoPERIODOINICIAL: TSQLTimeStampField
      FieldName = 'PERIODOINICIAL'
    end
    object sqldtsContratoAutoPERIODOFINAL: TSQLTimeStampField
      FieldName = 'PERIODOFINAL'
    end
    object sqldtsContratoAutoVLRCONTRATO: TBCDField
      FieldName = 'VLRCONTRATO'
      Precision = 14
      Size = 2
    end
    object sqldtsContratoAutoSTATUSFINANCEIRO: TBCDField
      FieldName = 'STATUSFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsContratoAutoPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      Required = True
      Precision = 8
      Size = 0
    end
  end
  object sqldtsContratoAutoServ: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  CM_CONTRATOSERV.EMPRESAID,'#13#10'  CM_CONTRATOSERV.CONTRATO' +
      'ID,'#13#10'  CM_CONTRATOSERV.ANOID,'#13#10'  CM_CONTRATOSERV.ITEMID,'#13#10'  CM_C' +
      'ONTRATOSERV.SERVICOID,'#13#10'  EF_SERVICO.DESCRICAORESUMIDA L_DESCRIC' +
      'AORESUMIDA,'#13#10'  CM_CONTRATOSERV.VLRSERVICO,'#13#10'  CM_CONTRATOSERV.GR' +
      'UPOID,  '#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_GRUPO.DESCRI' +
      'CAO L_GRUPO,'#13#10'  CM_CONTRATOSERV.HISTORICO,'#13#10'  CM_CONTRATOSERV.US' +
      'UARIO'#13#10'  FROM'#13#10'  CM_CONTRATOSERV CM_CONTRATOSERV,'#13#10'  EF_GRUPO EF' +
      '_GRUPO,'#13#10'  EF_SERVICO EF_SERVICO'#13#10' WHERE'#13#10'  EF_GRUPO.GRUPOID(+) ' +
      '= CM_CONTRATOSERV.GRUPOID'#13#10'  AND EF_SERVICO.EMPRESAID(+) = CM_CO' +
      'NTRATOSERV.EMPRESAID'#13#10'  AND EF_SERVICO.SERVICOID(+) = CM_CONTRAT' +
      'OSERV.SERVICOID'#13#10'  AND CM_CONTRATOSERV.EMPRESAID = :EMPRESAID'#13#10' ' +
      ' AND CM_CONTRATOSERV.CONTRATOID = :CONTRATOID   '#13#10'  AND CM_CONTR' +
      'ATOSERV.ANOID = :ANOID'
    DataSource = dsContratoAutoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'CONTRATOID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'ANOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 292
    Top = 408
    object BCDField17: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object BCDField18: TBCDField
      FieldName = 'CONTRATOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object BCDField19: TBCDField
      FieldName = 'ANOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object BCDField20: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object BCDField21: TBCDField
      FieldName = 'SERVICOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object StringField21: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object BCDField22: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object BCDField23: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object StringField22: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object StringField23: TStringField
      FieldName = 'L_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object StringField24: TStringField
      FieldName = 'HISTORICO'
      Size = 300
    end
    object StringField25: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvContratoAuto: TDataSetProvider
    DataSet = sqldtsContratoAuto
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 400
    Top = 352
  end
  object dsContratoAutoLink: TDataSource
    DataSet = sqldtsContratoAuto
    Left = 400
    Top = 408
  end
end
