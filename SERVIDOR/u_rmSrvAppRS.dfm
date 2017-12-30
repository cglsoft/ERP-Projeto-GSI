object SrvAppRS: TSrvAppRS
  OldCreateOrder = False
  Height = 388
  Width = 292
  object sqldtsImpostoServico: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RS_IMPOSTOSERVICO.IMPOSTOSERVICOID,'#13#10'  RS_IMPOSTOSERVI' +
      'CO.DESCRICAO,'#13#10'  RS_IMPOSTOSERVICO.VLRALIQUOTA,'#13#10'  RS_IMPOSTOSER' +
      'VICO.FRETE,'#13#10'  RS_IMPOSTOSERVICO.USUARIO'#13#10'  FROM'#13#10'  RS_IMPOSTOSE' +
      'RVICO RS_IMPOSTOSERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 8
    object sqldtsImpostoServicoIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsImpostoServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsImpostoServicoVLRALIQUOTA: TBCDField
      FieldName = 'VLRALIQUOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsImpostoServicoFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 1
      Size = 0
    end
    object sqldtsImpostoServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvImpostoServico: TDataSetProvider
    DataSet = sqldtsImpostoServico
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 8
  end
  object sqldtsLimiteContribuicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RS_LIMITECONTRIBUICAO.DATAVIGENCIA,'#13#10'  RS_LIMITECONTRI' +
      'BUICAO.VLRCONTRIBUICAO,'#13#10'  RS_LIMITECONTRIBUICAO.USUARIO'#13#10'  FROM' +
      #13#10'  RS_LIMITECONTRIBUICAO RS_LIMITECONTRIBUICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 64
    object sqldtsLimiteContribuicaoDATAVIGENCIA: TSQLTimeStampField
      FieldName = 'DATAVIGENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsLimiteContribuicaoVLRCONTRIBUICAO: TBCDField
      FieldName = 'VLRCONTRIBUICAO'
      Precision = 14
      Size = 2
    end
    object sqldtsLimiteContribuicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvLimiteContribuicao: TDataSetProvider
    DataSet = sqldtsLimiteContribuicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 64
  end
  object dsprvPrestador: TDataSetProvider
    DataSet = sqldtsPrestador
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 120
  end
  object dsprvRecibo: TDataSetProvider
    DataSet = sqldtsRecibo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 240
  end
  object sqldtsPrestador: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RS_PRESTADOR.PRESTADORID,'#13#10'  RS_PRESTADOR.NOME,'#13#10'  RS_' +
      'PRESTADOR.CEPID,'#13#10'  RS_PRESTADOR.NUMERO,'#13#10'  RS_PRESTADOR.COMPLEM' +
      'ENTO,'#13#10'  RS_PRESTADOR.ENDERECO,'#13#10'  RS_PRESTADOR.BAIRRO,'#13#10'  RS_PR' +
      'ESTADOR.CIDADE,'#13#10'  RS_PRESTADOR.SIGLAUFID,'#13#10'  RS_PRESTADOR.CPFCN' +
      'PJ,'#13#10'  RS_PRESTADOR.INSCRPREFMUNICIPAL,'#13#10'  RS_PRESTADOR.INSCRORG' +
      'AOCLASSE,'#13#10'  RS_PRESTADOR.INSCRINSS,'#13#10'  RS_PRESTADOR.INSCRPIS,'#13#10 +
      '  RS_PRESTADOR.TELEFONE,'#13#10'  RS_PRESTADOR.FAX,'#13#10'  RS_PRESTADOR.BE' +
      'NEFICIOTRIBTRANSP,'#13#10'  RS_PRESTADOR.USUARIO'#13#10'  FROM'#13#10'  RS_PRESTAD' +
      'OR RS_PRESTADOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 120
    object sqldtsPrestadorPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPrestadorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsPrestadorCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPrestadorNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsPrestadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsPrestadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsPrestadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsPrestadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsPrestadorSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsPrestadorCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object sqldtsPrestadorINSCRPREFMUNICIPAL: TStringField
      FieldName = 'INSCRPREFMUNICIPAL'
    end
    object sqldtsPrestadorINSCRORGAOCLASSE: TStringField
      FieldName = 'INSCRORGAOCLASSE'
    end
    object sqldtsPrestadorINSCRINSS: TStringField
      FieldName = 'INSCRINSS'
    end
    object sqldtsPrestadorINSCRPIS: TStringField
      FieldName = 'INSCRPIS'
    end
    object sqldtsPrestadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object sqldtsPrestadorFAX: TStringField
      FieldName = 'FAX'
    end
    object sqldtsPrestadorBENEFICIOTRIBTRANSP: TBCDField
      FieldName = 'BENEFICIOTRIBTRANSP'
      Precision = 1
      Size = 0
    end
    object sqldtsPrestadorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPrestadorReceb: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RS_PRESTADORRECEB.PRESTADORID,'#13#10'  RS_PRESTADORRECEB.IT' +
      'EMID,'#13#10'  RS_PRESTADORRECEB.DATAEXECUCAO,'#13#10'  RS_PRESTADORRECEB.CP' +
      'FCNPJ,'#13#10'  RS_PRESTADORRECEB.RAZAOSOCIAL,'#13#10'  RS_PRESTADORRECEB.VL' +
      'RSERVICO,'#13#10'  RS_PRESTADORRECEB.VLRRETIDO,'#13#10'  RS_PRESTADORRECEB.U' +
      'SUARIO'#13#10'  FROM'#13#10'  RS_PRESTADORRECEB RS_PRESTADORRECEB'#13#10'WHERE'#13#10'  ' +
      'RS_PRESTADORRECEB.PRESTADORID = :PRESTADORID'
    DataSource = dsPrestadorLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PRESTADORID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 184
    object sqldtsPrestadorRecebPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPrestadorRecebITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPrestadorRecebDATAEXECUCAO: TSQLTimeStampField
      FieldName = 'DATAEXECUCAO'
    end
    object sqldtsPrestadorRecebCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object sqldtsPrestadorRecebRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Size = 100
    end
    object sqldtsPrestadorRecebVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsPrestadorRecebVLRRETIDO: TBCDField
      FieldName = 'VLRRETIDO'
      Precision = 14
      Size = 2
    end
    object sqldtsPrestadorRecebUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsRecibo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RS_RECIBO.RECIBOID,'#13#10'  RS_RECIBO.FILIALID,'#13#10'  EF_FILIA' +
      'L.NOMEFANTASIA L_FILIAL,'#13#10'  EF_FILIAL.NOME L_NOMEFILIAL,'#13#10'  EF_F' +
      'ILIAL.ENDERECO L_ENDERECOFILIAL,'#13#10'  EF_FILIAL.NUMERO L_NUMEROFIL' +
      'IAL,'#13#10'  EF_FILIAL.CIDADE L_CIDADEFILIAL,'#13#10'  EF_FILIAL.CEPID L_CP' +
      'EIDFILIAL,'#13#10'  EF_FILIAL.CPF_CNPJ L_CPFCNPJFILIAL,   '#13#10'  EF_FILIA' +
      'L.SIGLAUFID L_SIGLAUFIDFILIAL,'#13#10'  RS_RECIBO.DATACALCULO,'#13#10'  RS_R' +
      'ECIBO.DATAVENCIMENTO,'#13#10'  RS_RECIBO.PRESTADORID,'#13#10'  RS_PRESTADOR.' +
      'NOME L_NOME,'#13#10'  RS_PRESTADOR.CEPID L_CEPID,'#13#10'  RS_PRESTADOR.NUME' +
      'RO L_NUMERO,'#13#10'  RS_PRESTADOR.COMPLEMENTO L_COMPLEMENTO,'#13#10'  RS_PR' +
      'ESTADOR.ENDERECO L_ENDERECO,'#13#10'  RS_PRESTADOR.BAIRRO L_BAIRRO,'#13#10' ' +
      ' RS_PRESTADOR.CIDADE L_CIDADE,'#13#10'  RS_PRESTADOR.SIGLAUFID L_SIGLA' +
      'UFID,'#13#10'  RS_PRESTADOR.CPFCNPJ L_CPFCNPJ,'#13#10'  RS_PRESTADOR.INSCRPR' +
      'EFMUNICIPAL L_INSCRPREFMUNICIPAL,'#13#10'  RS_PRESTADOR.INSCRORGAOCLAS' +
      'SE L_INSCRORGAOCLASSE,'#13#10'  RS_PRESTADOR.INSCRINSS L_INSCRINSS,'#13#10' ' +
      ' RS_PRESTADOR.INSCRPIS L_INSCRPIS,'#13#10'  RS_PRESTADOR.TELEFONE L_TE' +
      'LEFONE,'#13#10'  RS_RECIBO.FRETE,'#13#10'  RS_RECIBO.IMPOSTOSERVICOID,'#13#10'  RS' +
      '_RECIBO.VLRSERVICO,'#13#10'  RS_RECIBO.VLRIRRF,'#13#10'  RS_RECIBO.VLRISS,'#13#10 +
      '  RS_RECIBO.VLRINSS,'#13#10'  RS_RECIBO.VLRDESCONTO,'#13#10'  RS_RECIBO.VLRL' +
      'IQUIDO,'#13#10'  RS_RECIBO.VLRBASEINSSEMPRESA,'#13#10'  RS_RECIBO.VLRINSSEMP' +
      'RESA,'#13#10'  RS_RECIBO.DESCRICAOSERVICO,'#13#10'  RS_RECIBO.OBSERVACAO,'#13#10' ' +
      ' RS_RECIBO.USUARIO'#13#10'  FROM'#13#10'  RS_RECIBO RS_RECIBO,'#13#10'  EF_FILIAL ' +
      'EF_FILIAL,'#13#10'  RS_PRESTADOR RS_PRESTADOR'#13#10' WHERE'#13#10'  EF_FILIAL.FIL' +
      'IALID(+) = RS_RECIBO.FILIALID'#13#10'  AND RS_PRESTADOR.PRESTADORID(+)' +
      ' = RS_RECIBO.PRESTADORID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 240
    object sqldtsReciboRECIBOID: TBCDField
      FieldName = 'RECIBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsReciboFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsReciboL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsReciboL_NOMEFILIAL: TStringField
      FieldName = 'L_NOMEFILIAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsReciboL_ENDERECOFILIAL: TStringField
      FieldName = 'L_ENDERECOFILIAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsReciboL_NUMEROFILIAL: TStringField
      FieldName = 'L_NUMEROFILIAL'
      ProviderFlags = []
    end
    object sqldtsReciboL_CIDADEFILIAL: TStringField
      FieldName = 'L_CIDADEFILIAL'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsReciboL_CPEIDFILIAL: TBCDField
      FieldName = 'L_CPEIDFILIAL'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsReciboL_SIGLAUFIDFILIAL: TStringField
      FieldName = 'L_SIGLAUFIDFILIAL'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsReciboL_CPFCNPJFILIAL: TStringField
      FieldName = 'L_CPFCNPJFILIAL'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsReciboDATACALCULO: TSQLTimeStampField
      FieldName = 'DATACALCULO'
    end
    object sqldtsReciboDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsReciboPRESTADORID: TBCDField
      FieldName = 'PRESTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsReciboL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsReciboL_CEPID: TBCDField
      FieldName = 'L_CEPID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsReciboL_NUMERO: TStringField
      FieldName = 'L_NUMERO'
      ProviderFlags = []
    end
    object sqldtsReciboL_COMPLEMENTO: TStringField
      FieldName = 'L_COMPLEMENTO'
      ProviderFlags = []
    end
    object sqldtsReciboL_ENDERECO: TStringField
      FieldName = 'L_ENDERECO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsReciboL_BAIRRO: TStringField
      FieldName = 'L_BAIRRO'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsReciboL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsReciboL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsReciboL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsReciboL_INSCRPREFMUNICIPAL: TStringField
      FieldName = 'L_INSCRPREFMUNICIPAL'
      ProviderFlags = []
    end
    object sqldtsReciboL_INSCRORGAOCLASSE: TStringField
      FieldName = 'L_INSCRORGAOCLASSE'
      ProviderFlags = []
    end
    object sqldtsReciboL_INSCRINSS: TStringField
      FieldName = 'L_INSCRINSS'
      ProviderFlags = []
    end
    object sqldtsReciboL_INSCRPIS: TStringField
      FieldName = 'L_INSCRPIS'
      ProviderFlags = []
    end
    object sqldtsReciboL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object sqldtsReciboFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 1
      Size = 0
    end
    object sqldtsReciboIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsReciboVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRINSS: TBCDField
      FieldName = 'VLRINSS'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRBASEINSSEMPRESA: TBCDField
      FieldName = 'VLRBASEINSSEMPRESA'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboVLRINSSEMPRESA: TBCDField
      FieldName = 'VLRINSSEMPRESA'
      Precision = 14
      Size = 2
    end
    object sqldtsReciboDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsReciboOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsReciboUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPrestadorLink: TDataSource
    DataSet = sqldtsPrestador
    Left = 168
    Top = 184
  end
end
