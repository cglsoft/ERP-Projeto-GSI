object SrvAppGR: TSrvAppGR
  OldCreateOrder = False
  Height = 373
  Width = 326
  object sqldtsConfigEleicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  GR_CONFIGELEICAO.TIPOELEICAOATUALD,'#13#10'  GR_TIPOELEICAO.' +
      'DESCRICAO L_DESCRICAOTIPOELEICAO,'#13#10'  GR_CONFIGELEICAO.BLOQUEARVO' +
      'TACAO,'#13#10'  GR_CONFIGELEICAO.DTINICIOVIGENCIA,'#13#10'  GR_CONFIGELEICAO' +
      '.DTFINALVIGENCIA,'#13#10'  GR_CONFIGELEICAO.USUARIO'#13#10'  FROM'#13#10'  GR_CONF' +
      'IGELEICAO GR_CONFIGELEICAO,'#13#10'  GR_TIPOELEICAO GR_TIPOELEICAO'#13#10' W' +
      'HERE'#13#10'  GR_TIPOELEICAO.TIPOELEICAOID(+) = GR_CONFIGELEICAO.TIPOE' +
      'LEICAOATUALD'
    MaxBlobSize = -1
    Params = <>
    SortFieldNames = 'TIPOELEICAOATUALD'
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    object sqldtsConfigEleicaoTIPOELEICAOATUALD: TBCDField
      FieldName = 'TIPOELEICAOATUALD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsConfigEleicaoL_DESCRICAOTIPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOTIPOELEICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigEleicaoBLOQUEARVOTACAO: TBCDField
      FieldName = 'BLOQUEARVOTACAO'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigEleicaoDTINICIOVIGENCIA: TSQLTimeStampField
      FieldName = 'DTINICIOVIGENCIA'
    end
    object sqldtsConfigEleicaoDTFINALVIGENCIA: TSQLTimeStampField
      FieldName = 'DTFINALVIGENCIA'
    end
    object sqldtsConfigEleicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvConfigEleicao: TDataSetProvider
    DataSet = sqldtsConfigEleicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
  end
  object sqldtsGrupoEleicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  GR_GRUPOELEICAO.GRUPOELEICAOID,'#13#10'  GR_GRUPOELEICAO.DES' +
      'CRICAO,'#13#10'  GR_GRUPOELEICAO.USUARIO'#13#10'  FROM'#13#10'  GR_GRUPOELEICAO GR' +
      '_GRUPOELEICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 56
    object sqldtsGrupoEleicaoGRUPOELEICAOID: TBCDField
      FieldName = 'GRUPOELEICAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsGrupoEleicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsGrupoEleicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvGrupoEleicao: TDataSetProvider
    DataSet = sqldtsGrupoEleicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 56
  end
  object sqldtsEleitor: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  GR_ELEITOR.ELEITORID,'#13#10'  EF_ENTIDADE.CPFCNPJ L_CPFCNPJ' +
      ','#13#10'  EF_ENTIDADE.NOME L_NOMEELEITOR,'#13#10'  GR_ELEITOR.GRUPOELEICAOI' +
      'D,'#13#10'  GR_GRUPOELEICAO.DESCRICAO L_DESCRICAOGRUPOELEICAO,'#13#10'  GR_E' +
      'LEITOR.ELEGIVEL,'#13#10'  GR_ELEITOR.USUARIO'#13#10'  FROM'#13#10'  GR_ELEITOR GR_' +
      'ELEITOR,'#13#10'  EF_ENTIDADE EF_ENTIDADE,'#13#10'  GR_GRUPOELEICAO GR_GRUPO' +
      'ELEICAO'#13#10' WHERE'#13#10'  EF_ENTIDADE.ENTIDADEID(+) = GR_ELEITOR.ELEITO' +
      'RID'#13#10'  AND GR_GRUPOELEICAO.GRUPOELEICAOID(+) = GR_ELEITOR.GRUPOE' +
      'LEICAOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 104
    object sqldtsEleitorELEITORID: TBCDField
      FieldName = 'ELEITORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEleitorL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsEleitorL_NOMEELEITOR: TStringField
      FieldName = 'L_NOMEELEITOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEleitorGRUPOELEICAOID: TBCDField
      FieldName = 'GRUPOELEICAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsEleitorL_DESCRICAOGRUPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOGRUPOELEICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEleitorELEGIVEL: TBCDField
      FieldName = 'ELEGIVEL'
      Precision = 1
      Size = 0
    end
    object sqldtsEleitorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvEleitor: TDataSetProvider
    DataSet = sqldtsEleitor
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 104
  end
  object sqldtsTipoEleicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  GR_TIPOELEICAO.TIPOELEICAOID,'#13#10'  GR_TIPOELEICAO.DESCRI' +
      'CAO,'#13#10'  GR_TIPOELEICAO.DTINICIOVIGENCIA,'#13#10'  GR_TIPOELEICAO.DTFIN' +
      'ALVIGENCIA,'#13#10'  GR_TIPOELEICAO.USUARIO'#13#10'  FROM'#13#10'  GR_TIPOELEICAO ' +
      'GR_TIPOELEICAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 152
    object sqldtsTipoEleicaoTIPOELEICAOID: TBCDField
      FieldName = 'TIPOELEICAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoEleicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoEleicaoDTINICIOVIGENCIA: TSQLTimeStampField
      FieldName = 'DTINICIOVIGENCIA'
    end
    object sqldtsTipoEleicaoDTFINALVIGENCIA: TSQLTimeStampField
      FieldName = 'DTFINALVIGENCIA'
    end
    object sqldtsTipoEleicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTipoEleicao: TDataSetProvider
    DataSet = sqldtsTipoEleicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 152
  end
  object sqldtsVoto: TSQLDataSet
    CommandText = 
      'SELECT GR_VOTO.TIPOELEICAOID,'#13#10'       GR_TIPOELEICAO.DESCRICAO L' +
      '_DESCRICAOTIPOELEICAO,'#13#10'       GR_VOTO.ELEITORID,'#13#10'       EF_ENT' +
      '_ELEITOR.CPFCNPJ L_CPFCNPJELEITOR,'#13#10'       EF_ENT_ELEITOR.NOME L' +
      '_NOMEELEITOR,'#13#10'       GR_VOTO.GRUPOELEICAOID,'#13#10'       GR_GRUPOEL' +
      'EICAO.DESCRICAO L_DESCRICAOGRUPOELEICAO,'#13#10'       GR_VOTO.CANDIDA' +
      'TOID,'#13#10'       EF_ENT_CANDIDATO.CPFCNPJ L_CPFCNPJCANDIDATO,'#13#10'    ' +
      '   EF_ENT_CANDIDATO.NOME L_NOMECANDIDATO,'#13#10'       GR_VOTO.NOMEPR' +
      'OGID,'#13#10'       GR_NOMEPROG.DESCRICAO L_DESCRICAONOMEPROG,'#13#10'      ' +
      ' GR_VOTO.DATAVOTO,'#13#10'       GR_VOTO.USUARIO'#13#10'  FROM GR_VOTO GR_VO' +
      'TO,'#13#10'       GR_TIPOELEICAO GR_TIPOELEICAO,'#13#10'       EF_ENTIDADE E' +
      'F_ENT_ELEITOR,'#13#10'       EF_ENTIDADE EF_ENT_CANDIDATO,'#13#10'       GR_' +
      'GRUPOELEICAO GR_GRUPOELEICAO,'#13#10'       GR_NOMEPROG'#13#10' WHERE GR_VOT' +
      'O.TIPOELEICAOID = GR_TIPOELEICAO.TIPOELEICAOID(+)'#13#10'       AND GR' +
      '_VOTO.ELEITORID = EF_ENT_ELEITOR.ENTIDADEID(+) '#13#10'       AND GR_V' +
      'OTO.CANDIDATOID = EF_ENT_CANDIDATO.ENTIDADEID(+)'#13#10'       AND GR_' +
      'VOTO.GRUPOELEICAOID = GR_GRUPOELEICAO.GRUPOELEICAOID(+)'#13#10'       ' +
      'AND GR_VOTO.NOMEPROGID = GR_NOMEPROG.NOMEPROGID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 200
    object sqldtsVotoTIPOELEICAOID: TBCDField
      FieldName = 'TIPOELEICAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsVotoL_DESCRICAOTIPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOTIPOELEICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVotoELEITORID: TBCDField
      FieldName = 'ELEITORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsVotoL_CPFCNPJELEITOR: TStringField
      FieldName = 'L_CPFCNPJELEITOR'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsVotoL_NOMEELEITOR: TStringField
      FieldName = 'L_NOMEELEITOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVotoL_DESCRICAOGRUPOELEICAO: TStringField
      FieldName = 'L_DESCRICAOGRUPOELEICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVotoCANDIDATOID: TBCDField
      FieldName = 'CANDIDATOID'
      Precision = 8
      Size = 0
    end
    object sqldtsVotoL_CPFCNPJCANDIDATO: TStringField
      FieldName = 'L_CPFCNPJCANDIDATO'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsVotoL_NOMECANDIDATO: TStringField
      FieldName = 'L_NOMECANDIDATO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVotoGRUPOELEICAOID: TBCDField
      FieldName = 'GRUPOELEICAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsVotoDATAVOTO: TSQLTimeStampField
      FieldName = 'DATAVOTO'
    end
    object sqldtsVotoNOMEPROGID: TBCDField
      FieldName = 'NOMEPROGID'
      Precision = 8
      Size = 0
    end
    object sqldtsVotoL_DESCRICAONOMEPROG: TStringField
      FieldName = 'L_DESCRICAONOMEPROG'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVotoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvVoto: TDataSetProvider
    DataSet = sqldtsVoto
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 200
  end
  object sqldtsNomeProg: TSQLDataSet
    CommandText = 'SELECT NOMEPROGID, DESCRICAO, USUARIO FROM GR_NOMEPROG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 248
    object sqldtsNomeProgNOMEPROGID: TBCDField
      FieldName = 'NOMEPROGID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNomeProgDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsNomeProgUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNomeProg: TDataSetProvider
    DataSet = sqldtsNomeProg
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
    Top = 248
  end
end
