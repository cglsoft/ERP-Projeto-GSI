object srvAppFI: TsrvAppFI
  OldCreateOrder = False
  Height = 448
  Width = 747
  object sqldtsImpostoRetido: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT IMPOSTORETIDOID,'#13#10'       DESCRICAO,'#13#10'       ALIQUOTA,'#13#10'  ' +
      '     DATAVENCIMENTO,'#13#10'       USUARIO'#13#10'  FROM FI_IMPOSTORETIDO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 8
    object sqldtsImpostoRetidoIMPOSTORETIDOID: TBCDField
      FieldName = 'IMPOSTORETIDOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsImpostoRetidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsImpostoRetidoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Precision = 20
    end
    object sqldtsImpostoRetidoDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsImpostoRetidoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAcao: TSQLDataSet
    CommandText = 
      'SELECT ACAOID,'#13#10'       DESCRICAO,'#13#10'       CONTACONTABILID,'#13#10'    ' +
      '   EXIGECENTROCUSTO,'#13#10'       RETEMIMPOSTO,'#13#10'       NUMDOCOBRIGAT' +
      'ORIO,'#13#10'       MOVCONTASPAGAR,'#13#10'       MOVCONTASRECEBER,'#13#10'       ' +
      'MOVINFORMATIVO,'#13#10'       USUARIO'#13#10'  FROM FI_ACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 64
    object sqldtsAcaoACAOID: TBCDField
      FieldName = 'ACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAcaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsAcaoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
    end
    object sqldtsAcaoEXIGECENTROCUSTO: TBCDField
      FieldName = 'EXIGECENTROCUSTO'
      Precision = 1
      Size = 0
    end
    object sqldtsAcaoRETEMIMPOSTO: TBCDField
      FieldName = 'RETEMIMPOSTO'
      Precision = 1
      Size = 0
    end
    object sqldtsAcaoNUMDOCOBRIGATORIO: TBCDField
      FieldName = 'NUMDOCOBRIGATORIO'
      Precision = 1
      Size = 0
    end
    object sqldtsAcaoMOVCONTASPAGAR: TBCDField
      FieldName = 'MOVCONTASPAGAR'
      Precision = 1
      Size = 0
    end
    object sqldtsAcaoMOVCONTASRECEBER: TBCDField
      FieldName = 'MOVCONTASRECEBER'
      Precision = 1
      Size = 0
    end
    object sqldtsAcaoMOVINFORMATIVO: TBCDField
      FieldName = 'MOVINFORMATIVO'
      Precision = 1
      Size = 0
    end
    object sqldtsAcaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsFormaPagto: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT FORMAPAGTOID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM ' +
      'FI_FORMAPAGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 120
    object sqldtsFormaPagtoFORMAPAGTOID: TBCDField
      FieldName = 'FORMAPAGTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFormaPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsFormaPagtoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvImpostoRetido: TDataSetProvider
    DataSet = sqldtsImpostoRetido
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 8
  end
  object dsprvAcao: TDataSetProvider
    DataSet = sqldtsAcao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 64
  end
  object dsprvFormaPagto: TDataSetProvider
    DataSet = sqldtsFormaPagto
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 120
  end
  object sqldtsTipoCobranca: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT TIPOCOBRANCAID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FRO' +
      'M FI_TIPOCOBRANCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 176
    object sqldtsTipoCobrancaTIPOCOBRANCAID: TBCDField
      FieldName = 'TIPOCOBRANCAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoCobrancaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoCobrancaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTipoCobranca: TDataSetProvider
    DataSet = sqldtsTipoCobranca
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 176
  end
  object sqldtsFI: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT FI_FI.FIID,'#13#10'       FI_FI.DATAREGISTRO,'#13#10'       FI_FI.EMP' +
      'RESAID,'#13#10'       EF_EMPRESA.NOME L_NOMEEMPRESA,'#13#10'       FI_FI.FIL' +
      'IALID,'#13#10'       EF_FILIAL.NOME L_NOMEFILIAL,'#13#10'       FI_FI.ACAOID' +
      ','#13#10'       FI_ACAO.DESCRICAO L_DESCRICAOACAO,'#13#10'       FI_ACAO.MOV' +
      'CONTASPAGAR L_MOVCONTASPAGAR,'#13#10'       FI_ACAO.MOVCONTASRECEBER L' +
      '_MOVCONTASRECEBER,'#13#10'       FI_ACAO.MOVINFORMATIVO L_MOVINFORMATI' +
      'VO,'#13#10'       FI_FI.FORNECEDORID,'#13#10'       EF_ENTIDADE.NOME L_NOMEF' +
      'ORNECEDOR,'#13#10'       FI_FI.NUMDOCID,'#13#10'       FI_FI.DATAEMISSAOID,'#13 +
      #10'       FI_FI.SERIEDOC,'#13#10'       FI_FI.DATAVENDOC,'#13#10'       FI_FI.' +
      'CONDPAGTOID,'#13#10'       EF_CONDPAGTO.DESCRICAO L_DESCRICAOCONDPAGTO' +
      ','#13#10'       FI_FI.VLRDOC,'#13#10'       FI_FI.TIPOMOVIMENTO,'#13#10'       FI_' +
      'FI.DOCPGTOVISTA,'#13#10'       FI_FI.VLRLIQUIDO,'#13#10'       FI_FI.HISTORI' +
      'CO,'#13#10'       FI_FI.CONCILIADO,'#13#10'       FI_FI.USUARIO'#13#10'  FROM FI_F' +
      'I,'#13#10'       EF_EMPRESA,'#13#10'       EF_FILIAL,'#13#10'       FI_ACAO,'#13#10'    ' +
      '   EF_ENTIDADE,'#13#10'       EF_CONDPAGTO'#13#10' WHERE FI_FI.EMPRESAID = E' +
      'F_EMPRESA.EMPRESAID(+)'#13#10'       AND FI_FI.FILIALID = EF_FILIAL.FI' +
      'LIALID(+)'#13#10'       AND FI_FI.ACAOID = FI_ACAO.ACAOID(+)'#13#10'       A' +
      'ND EF_ENTIDADE.ENTIDADEID(+) = FI_FI.FORNECEDORID'#13#10'       AND EF' +
      '_CONDPAGTO.CONDPAGTOID(+) = FI_FI.CONDPAGTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 272
    Top = 8
    object sqldtsFIFIID: TBCDField
      FieldName = 'FIID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
    end
    object sqldtsFIEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIL_NOMEEMPRESA: TStringField
      FieldName = 'L_NOMEEMPRESA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIL_NOMEFILIAL: TStringField
      FieldName = 'L_NOMEFILIAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIACAOID: TBCDField
      FieldName = 'ACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIL_DESCRICAOACAO: TStringField
      FieldName = 'L_DESCRICAOACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIL_MOVCONTASPAGAR: TBCDField
      FieldName = 'L_MOVCONTASPAGAR'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsFIL_MOVCONTASRECEBER: TBCDField
      FieldName = 'L_MOVCONTASRECEBER'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsFIL_MOVINFORMATIVO: TBCDField
      FieldName = 'L_MOVINFORMATIVO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsFIFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFINUMDOCID: TStringField
      FieldName = 'NUMDOCID'
      Size = 50
    end
    object sqldtsFIDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object sqldtsFISERIEDOC: TStringField
      FieldName = 'SERIEDOC'
    end
    object sqldtsFIDATAVENDOC: TSQLTimeStampField
      FieldName = 'DATAVENDOC'
    end
    object sqldtsFICONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIL_DESCRICAOCONDPAGTO: TStringField
      FieldName = 'L_DESCRICAOCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIVLRDOC: TFMTBCDField
      FieldName = 'VLRDOC'
      Precision = 20
    end
    object sqldtsFITIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 1
    end
    object sqldtsFIDOCPGTOVISTA: TBCDField
      FieldName = 'DOCPGTOVISTA'
      Precision = 1
      Size = 0
    end
    object sqldtsFIVLRLIQUIDO: TFMTBCDField
      FieldName = 'VLRLIQUIDO'
      Precision = 20
    end
    object sqldtsFIHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsFICONCILIADO: TBCDField
      FieldName = 'CONCILIADO'
      Precision = 1
      Size = 0
    end
    object sqldtsFIUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsFIParcela: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT FI_FIPARCELA.FIID,'#13#10'       FI_FIPARCELA.PARCELAID,'#13#10'     ' +
      '  FI_FIPARCELA.DTVENCIMENTO,'#13#10'       FI_FIPARCELA.DTPRORROGACAO,' +
      #13#10'       FI_FIPARCELA.FORMAPAGTOID,'#13#10'       FI_FORMAPAGTO.DESCRI' +
      'CAO L_DESCRFORMAPAGTO,'#13#10'       FI_FIPARCELA.TIPOCOBRANCAID,'#13#10'   ' +
      '    FI_TIPOCOBRANCA.DESCRICAO L_DESCRTIPOCOBRANCA,'#13#10'       FI_FI' +
      'PARCELA.BANCOID,'#13#10'       EF_BANCO.NOME L_NOMEBANCO,'#13#10'       EF_B' +
      'ANCO.NUMBANCO L_NUMBANCO,'#13#10'       EF_BANCO.AGENCIA L_AGENCIA, '#13#10 +
      '       EF_BANCO.CONTA L_CONTA,'#13#10'       FI_FIPARCELA.OBSERVACAO,'#13 +
      #10'       FI_FIPARCELA.CODIGOBARRASID,'#13#10'       FI_FIPARCELA.TITULO' +
      'CONCESSIONARIA,'#13#10'       FI_FIPARCELA.LINHADIGITAVEL,'#13#10'       FI_' +
      'FIPARCELA.AGENCIACODIGOCEDENTE,'#13#10'       FI_FIPARCELA.NOSSONUMERO' +
      ','#13#10'       FI_FIPARCELA.VLRLIQDOC,'#13#10'       FI_FIPARCELA.CODIGOBAR' +
      'RAS,'#13#10'       FI_FIPARCELA.USUARIO'#13#10'  FROM FI_FIPARCELA,'#13#10'       ' +
      'FI_FORMAPAGTO,'#13#10'       FI_TIPOCOBRANCA,'#13#10'       EF_BANCO'#13#10' WHERE' +
      ' FI_FORMAPAGTO.FORMAPAGTOID(+) = FI_FIPARCELA.FORMAPAGTOID'#13#10'    ' +
      '   AND FI_TIPOCOBRANCA.TIPOCOBRANCAID(+) = FI_FIPARCELA.TIPOCOBR' +
      'ANCAID'#13#10'       AND EF_BANCO.BANCOID(+) = FI_FIPARCELA.BANCOID'#13#10' ' +
      '      AND FI_FIPARCELA.FIID = :FIID'
    DataSource = dsFILink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FIID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 272
    Top = 56
    object sqldtsFIParcelaFIID: TBCDField
      FieldName = 'FIID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaDTVENCIMENTO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO'
    end
    object sqldtsFIParcelaDTPRORROGACAO: TSQLTimeStampField
      FieldName = 'DTPRORROGACAO'
    end
    object sqldtsFIParcelaFORMAPAGTOID: TBCDField
      FieldName = 'FORMAPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaL_DESCRFORMAPAGTO: TStringField
      FieldName = 'L_DESCRFORMAPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIParcelaTIPOCOBRANCAID: TBCDField
      FieldName = 'TIPOCOBRANCAID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaL_DESCRTIPOCOBRANCA: TStringField
      FieldName = 'L_DESCRTIPOCOBRANCA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIParcelaBANCOID: TBCDField
      FieldName = 'BANCOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaL_NOMEBANCO: TStringField
      FieldName = 'L_NOMEBANCO'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsFIParcelaL_NUMBANCO: TStringField
      FieldName = 'L_NUMBANCO'
      ProviderFlags = []
    end
    object sqldtsFIParcelaL_AGENCIA: TStringField
      FieldName = 'L_AGENCIA'
      ProviderFlags = []
    end
    object sqldtsFIParcelaL_CONTA: TStringField
      FieldName = 'L_CONTA'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsFIParcelaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsFIParcelaCODIGOBARRASID: TStringField
      FieldName = 'CODIGOBARRASID'
      Size = 200
    end
    object sqldtsFIParcelaTITULOCONCESSIONARIA: TBCDField
      FieldName = 'TITULOCONCESSIONARIA'
      Precision = 1
      Size = 0
    end
    object sqldtsFIParcelaLINHADIGITAVEL: TStringField
      FieldName = 'LINHADIGITAVEL'
      Size = 100
    end
    object sqldtsFIParcelaAGENCIACODIGOCEDENTE: TStringField
      FieldName = 'AGENCIACODIGOCEDENTE'
      Size = 50
    end
    object sqldtsFIParcelaNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 50
    end
    object sqldtsFIParcelaVLRLIQDOC: TFMTBCDField
      FieldName = 'VLRLIQDOC'
      Precision = 20
    end
    object sqldtsFIParcelaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 44
    end
    object sqldtsFIParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsFILink: TDataSource
    DataSet = sqldtsFI
    Left = 376
    Top = 56
  end
  object dsprvFI: TDataSetProvider
    DataSet = sqldtsFI
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 376
    Top = 8
  end
  object sqldtsFIParcelaClasse: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT FI_FIPARCELACLASSE.FIID,'#13#10'       FI_FIPARCELACLASSE.PARCE' +
      'LAID,'#13#10'       FI_FIPARCELACLASSE.ITEMID,'#13#10'       FI_FIPARCELACLA' +
      'SSE.CENTROCUSTOID,'#13#10'       FI_FIPARCELACLASSE.PROJETOID,'#13#10'      ' +
      ' FI_PROJETO.DESCRICAO L_DESCRPROJETO,       '#13#10'       FI_FIPARCEL' +
      'ACLASSE.VLRPAGAMENTO,'#13#10'       FI_FIPARCELACLASSE.PERCENTUALPAGTO' +
      ','#13#10'       FI_FIPARCELACLASSE.USUARIO       '#13#10'  FROM FI_FIPARCELA' +
      'CLASSE,'#13#10'       FI_PROJETO'#13#10' WHERE FI_PROJETO.PROJETOID(+) = FI_' +
      'FIPARCELACLASSE.PROJETOID'#13#10' AND FI_FIPARCELACLASSE.FIID = :FIID'#13 +
      #10' AND FI_FIPARCELACLASSE.PARCELAID = :PARCELAID'
    DataSource = dsFIParcelaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FIID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PARCELAID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 272
    Top = 112
    object sqldtsFIParcelaClasseFIID: TBCDField
      FieldName = 'FIID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaClassePARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaClasseITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaClasseCENTROCUSTOID: TBCDField
      FieldName = 'CENTROCUSTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaClassePROJETOID: TBCDField
      FieldName = 'PROJETOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIParcelaClasseL_DESCRPROJETO: TStringField
      FieldName = 'L_DESCRPROJETO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIParcelaClasseVLRPAGAMENTO: TFMTBCDField
      FieldName = 'VLRPAGAMENTO'
      Precision = 20
    end
    object sqldtsFIParcelaClassePERCENTUALPAGTO: TFMTBCDField
      FieldName = 'PERCENTUALPAGTO'
      Precision = 20
    end
    object sqldtsFIParcelaClasseUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsFIParcelaLink: TDataSource
    DataSet = sqldtsFIParcela
    Left = 377
    Top = 113
  end
  object sqldtsFIRetencao: TSQLDataSet
    CommandText = 
      'SELECT FI_FIRETENCAO.FIID,'#13#10'       FI_FIRETENCAO.ITEMID,'#13#10'      ' +
      ' FI_FIRETENCAO.IMPOSTORETIDOID,'#13#10'       FI_IMPOSTORETIDO.DESCRIC' +
      'AO L_DESCRIMPOSTO,'#13#10'       FI_IMPOSTORETIDO.ALIQUOTA L_ALIQIMPOS' +
      'TO,'#13#10'       FI_FIRETENCAO.VLRLIQUIDOID,'#13#10'       FI_FIRETENCAO.HI' +
      'STORICO,'#13#10'       FI_FIRETENCAO.USUARIO       '#13#10'  FROM FI_FIRETEN' +
      'CAO,'#13#10'       FI_IMPOSTORETIDO'#13#10' WHERE FI_IMPOSTORETIDO.IMPOSTORE' +
      'TIDOID(+) = FI_FIRETENCAO.IMPOSTORETIDOID'#13#10' AND FI_FIRETENCAO.FI' +
      'ID = :FIID'
    DataSource = dsFILink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FIID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 272
    Top = 168
    object sqldtsFIRetencaoFIID: TBCDField
      FieldName = 'FIID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIRetencaoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFIRetencaoIMPOSTORETIDOID: TBCDField
      FieldName = 'IMPOSTORETIDOID'
      Precision = 8
      Size = 0
    end
    object sqldtsFIRetencaoL_DESCRIMPOSTO: TStringField
      FieldName = 'L_DESCRIMPOSTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsFIRetencaoL_ALIQIMPOSTO: TFMTBCDField
      FieldName = 'L_ALIQIMPOSTO'
      ProviderFlags = []
      Precision = 20
    end
    object sqldtsFIRetencaoVLRLIQUIDOID: TFMTBCDField
      FieldName = 'VLRLIQUIDOID'
      Precision = 20
    end
    object sqldtsFIRetencaoHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsFIRetencaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsProjeto: TSQLDataSet
    CommandText = 
      'SELECT PROJETOID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM FI_' +
      'PROJETO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 232
    object sqldtsProjetoPROJETOID: TBCDField
      FieldName = 'PROJETOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProjetoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsProjetoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvProjeto: TDataSetProvider
    DataSet = sqldtsProjeto
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 232
  end
end
