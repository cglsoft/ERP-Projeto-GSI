object SrvAppRD: TSrvAppRD
  OldCreateOrder = False
  Height = 524
  Width = 654
  object sqldtsOperacao: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT OPERACAOID,'#13#10'       FINALIDADE,'#13#10'       DESCRICAO,'#13#10'     ' +
      '  CONTACONTABILID,'#13#10'       OPERACAO,'#13#10'       BLOQUEADO,'#13#10'       ' +
      'HORASDEDUZIR,'#13#10'       LANCEXCLUSIVO,'#13#10'       IDENTIFSOLIC,'#13#10'    ' +
      '   USUARIO'#13#10'  FROM RD_OPERACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 8
    object sqldtsOperacaoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOperacaoFINALIDADE: TStringField
      FieldName = 'FINALIDADE'
      Size = 1
    end
    object sqldtsOperacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsOperacaoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsOperacaoOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object sqldtsOperacaoBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object sqldtsOperacaoHORASDEDUZIR: TFMTBCDField
      FieldName = 'HORASDEDUZIR'
      Precision = 14
      Size = 10
    end
    object sqldtsOperacaoLANCEXCLUSIVO: TBCDField
      FieldName = 'LANCEXCLUSIVO'
      Precision = 1
      Size = 0
    end
    object sqldtsOperacaoIDENTIFSOLIC: TBCDField
      FieldName = 'IDENTIFSOLIC'
      Precision = 1
      Size = 0
    end
    object sqldtsOperacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAdiantamento: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT DISTINCT'#13#10'       RD_ADIANTAMENTO.ADIANTAMENTOID,'#13#10'       ' +
      'RD_ADIANTAMENTO.DATASOLICITACAO,'#13#10'       RD_ADIANTAMENTO.DATADEP' +
      'OSITO,'#13#10'       RD_ADIANTAMENTO.FUNCIONARIOID,'#13#10'       EF_ENTIDAD' +
      'E.NOME L_NOMEFUNCIONARIO,'#13#10'       RD_ADIANTAMENTO.TIPOMOEDA,'#13#10'  ' +
      '     RD_ADIANTAMENTO.TIPODESPESAOS,'#13#10'       RD_ADIANTAMENTO.OSID' +
      ','#13#10'       RD_ADIANTAMENTO.OPERACAOID,'#13#10'       RD_OPERACAO.DESCRI' +
      'CAO L_DESCRICAOOPERACAO,'#13#10'       RD_OPERACAO.OPERACAO L_OPERACAO' +
      ','#13#10'       RD_OPERACAO.IDENTIFSOLIC L_IDENTIFSOLIC,'#13#10'       RD_RD' +
      'V.VLRSALDO L_VLRSALDO,'#13#10'       RD_RDV.DATAFECHAMENTO AS L_DATAFE' +
      'CHAMENTO,'#13#10'       RD_ADIANTAMENTO.VLROPERACAO,'#13#10'       RD_ADIANT' +
      'AMENTO.HORASOLICITADA,'#13#10'       RD_ADIANTAMENTO.HISTORICO,'#13#10'     ' +
      '  RD_ADIANTAMENTO.LIBCHEFIA,'#13#10'       RD_ADIANTAMENTO.NOMELIBCHEF' +
      'IA,'#13#10'       RD_ADIANTAMENTO.DATALIBCHEFIA,'#13#10'       RD_ADIANTAMEN' +
      'TO.LIBERADO,'#13#10'       RD_ADIANTAMENTO.KMSAIDA,'#13#10'       RD_ADIANTA' +
      'MENTO.KMCHEGADA,'#13#10'       RD_ADIANTAMENTO.IMPRESSO,'#13#10'       RD_AD' +
      'IANTAMENTO.IDENTIFSOLIC,'#13#10'       RD_ADIANTAMENTO.USUARIO'#13#10'  FROM' +
      ' RD_ADIANTAMENTO,'#13#10'       RD_OPERACAO,'#13#10'       EF_ENTIDADE,'#13#10'   ' +
      '    RD_RDV'#13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD_ADIANTAMENTO.' +
      'OPERACAOID'#13#10'       AND EF_ENTIDADE.ENTIDADEID (+) = RD_ADIANTAME' +
      'NTO.FUNCIONARIOID'#13#10'       AND RD_RDV.RDVID (+) = RD_ADIANTAMENTO' +
      '.FUNCIONARIOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 112
    object sqldtsAdiantamentoADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object sqldtsAdiantamentoDATADEPOSITO: TSQLTimeStampField
      FieldName = 'DATADEPOSITO'
    end
    object sqldtsAdiantamentoFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAdiantamentoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsAdiantamentoTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsAdiantamentoOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsAdiantamentoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoL_VLRSALDO: TBCDField
      FieldName = 'L_VLRSALDO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsAdiantamentoL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
      ProviderFlags = []
    end
    object sqldtsAdiantamentoL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAdiantamentoL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsAdiantamentoL_IDENTIFSOLIC: TBCDField
      FieldName = 'L_IDENTIFSOLIC'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsAdiantamentoVLROPERACAO: TBCDField
      FieldName = 'VLROPERACAO'
      Precision = 14
      Size = 2
    end
    object sqldtsAdiantamentoHORASOLICITADA: TSQLTimeStampField
      FieldName = 'HORASOLICITADA'
    end
    object sqldtsAdiantamentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsAdiantamentoLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsAdiantamentoNOMELIBCHEFIA: TStringField
      FieldName = 'NOMELIBCHEFIA'
    end
    object sqldtsAdiantamentoDATALIBCHEFIA: TSQLTimeStampField
      FieldName = 'DATALIBCHEFIA'
    end
    object sqldtsAdiantamentoLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqldtsAdiantamentoKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object sqldtsAdiantamentoIDENTIFSOLIC: TStringField
      FieldName = 'IDENTIFSOLIC'
      Size = 10
    end
    object sqldtsAdiantamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAdiantamentoItem: TSQLDataSet
    CommandText = 
      'SELECT RD_ADIANTAMENTOITEM.ADIANTAMENTOID,'#13#10'       RD_ADIANTAMEN' +
      'TOITEM.ITEMID,'#13#10'       RD_ADIANTAMENTOITEM.DATASOLICITACAO,'#13#10'   ' +
      '    RD_ADIANTAMENTOITEM.OPERACAOID,'#13#10'       RD_OPERACAO.DESCRICA' +
      'O L_DESCRICAOOPERACAO,'#13#10'       RD_ADIANTAMENTOITEM.VLROPERACAO,'#13 +
      #10'       RD_ADIANTAMENTOITEM.HISTORICO,'#13#10'       RD_ADIANTAMENTOIT' +
      'EM.KMSAIDA,'#13#10'       RD_ADIANTAMENTOITEM.KMCHEGADA,'#13#10'       RD_AD' +
      'IANTAMENTOITEM.USUARIO'#13#10'  FROM RD_ADIANTAMENTOITEM,'#13#10'       RD_O' +
      'PERACAO'#13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD_ADIANTAMENTOITEM' +
      '.OPERACAOID'#13#10' AND RD_ADIANTAMENTOITEM.ADIANTAMENTOID = :ADIANTAM' +
      'ENTOID'
    DataSource = dsAdiantamentoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ADIANTAMENTOID'
        ParamType = ptInput
        Value = Null
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 168
    object sqldtsAdiantamentoItemADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoItemDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object sqldtsAdiantamentoItemOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoItemL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAdiantamentoItemVLROPERACAO: TBCDField
      FieldName = 'VLROPERACAO'
      Precision = 14
      Size = 2
    end
    object sqldtsAdiantamentoItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsAdiantamentoItemKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoItemKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsAdiantamentoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsAdiantamentoLink: TDataSource
    DataSet = sqldtsAdiantamento
    Left = 168
    Top = 168
  end
  object dsprvOperacao: TDataSetProvider
    DataSet = sqldtsOperacao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 8
  end
  object dsprvAdiantamento: TDataSetProvider
    DataSet = sqldtsAdiantamento
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 168
    Top = 112
  end
  object sqldtsFeriado: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'       RD_FERIADO.FERIADOID,'#13#10'       RD_FERIADO.DATAFER' +
      'IADO,'#13#10'       RD_FERIADO.FILIALID,'#13#10'       RD_FERIADO.FERIADOREG' +
      'IONAL,'#13#10'       RD_FERIADO.DESCRICAOFERIADO,'#13#10'       RD_FERIADO.U' +
      'SUARIO,'#13#10'       EF_FILIAL.NOMEFANTASIA L_NOMEFANTASIAFILIAL'#13#10'  F' +
      'ROM RD_FERIADO,'#13#10'       EF_FILIAL'#13#10' WHERE EF_FILIAL.FILIALID (+)' +
      ' = RD_FERIADO.FILIALID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 268
    object sqldtsFeriadoFERIADOID: TBCDField
      FieldName = 'FERIADOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFeriadoDATAFERIADO: TSQLTimeStampField
      FieldName = 'DATAFERIADO'
    end
    object sqldtsFeriadoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsFeriadoL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsFeriadoFERIADOREGIONAL: TBCDField
      FieldName = 'FERIADOREGIONAL'
      Precision = 1
      Size = 0
    end
    object sqldtsFeriadoDESCRICAOFERIADO: TStringField
      FieldName = 'DESCRICAOFERIADO'
      Size = 100
    end
    object sqldtsFeriadoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvFeriado: TDataSetProvider
    DataSet = sqldtsFeriado
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 172
    Top = 268
  end
  object sqldtsRdv: TSQLDataSet
    CommandText = 
      'SELECT RD_RDV.RDVID,'#13#10'       RD_RDV.DATAABERTURA,'#13#10'       RD_RDV' +
      '.VLRSALDO,'#13#10'       RD_RDV.VLRSALDOUS,'#13#10'       RD_RDV.DATAFECHAME' +
      'NTO,'#13#10'       RD_RDV.DATAFECHAMENTOUS,'#13#10'       RD_RDV.DATAMESABER' +
      'TO,'#13#10'       RD_RDV.BLOQUEADO,'#13#10'       EF_ENTIDADE.NOME L_NOMEFUN' +
      'CIONARIO,'#13#10'       EF_ENTIDADE.CONTACONTABILID L_CONTACONTABIL,'#13#10 +
      '       EF_DEPARTAMENTO.SIGLA L_DEPARTAMENTO'#13#10'  FROM RD_RDV,'#13#10'   ' +
      '    EF_ENTIDADE,'#13#10'       EF_DEPARTAMENTO'#13#10' WHERE EF_ENTIDADE.ENT' +
      'IDADEID(+) = RD_RDV.RDVID'#13#10'       AND EF_DEPARTAMENTO.DEPARTAMEN' +
      'TOID(+) = EF_ENTIDADE.DEPARTAMENTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 8
    object sqldtsRdvRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRdvDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
    end
    object sqldtsRdvVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsRdvVLRSALDOUS: TFMTBCDField
      FieldName = 'VLRSALDOUS'
      Precision = 20
    end
    object sqldtsRdvDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsRdvDATAFECHAMENTOUS: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTOUS'
    end
    object sqldtsRdvDATAMESABERTO: TSQLTimeStampField
      FieldName = 'DATAMESABERTO'
    end
    object sqldtsRdvBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object sqldtsRdvL_CONTACONTABIL: TStringField
      FieldName = 'L_CONTACONTABIL'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsRdvL_DEPARTAMENTO: TStringField
      FieldName = 'L_DEPARTAMENTO'
      ProviderFlags = []
      Size = 10
    end
  end
  object sqldtsRdvItem: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT RD_RDVITEM.RDVID,'#13#10'       RD_RDVITEM.DATAMOVIMENTOID,'#13#10'  ' +
      '     RD_RDVITEM.ITEMID,'#13#10'       RD_RDVITEM.DATADOC,'#13#10'       RD_R' +
      'DVITEM.TIPOMOEDA,'#13#10'       RD_RDVITEM.TIPODESPESAOS,'#13#10'       RD_R' +
      'DVITEM.OSID,'#13#10'       RD_RDVITEM.OPERACAOID,'#13#10'       RD_RDVITEM.V' +
      'LRDESPESA,'#13#10'       RD_RDVITEM.VLRSALDO,'#13#10'       RD_RDVITEM.HISTO' +
      'RICO,'#13#10'       RD_RDVITEM.KMSAIDA,'#13#10'       RD_RDVITEM.KMCHEGADA,'#13 +
      #10'       RD_RDVITEM.DATAFECHAMENTO,'#13#10'       RD_RDVITEM.DATACONTAB' +
      'ILIZACAO,'#13#10'       RD_RDVITEM.ADIANTAMENTOID,'#13#10'       RD_RDVITEM.' +
      'USUARIO,'#13#10'       RD_OPERACAO.DESCRICAO L_DESCRICAOOPERACAO,'#13#10'   ' +
      '    RD_OPERACAO.OPERACAO L_OPERACAO,'#13#10'       RD_ADIANTAMENTO.IDE' +
      'NTIFSOLIC L_IDENTIFSOLIC,'#13#10'       RD_OPERACAO.CONTACONTABILID L_' +
      'CONTACONTABIL'#13#10'  FROM RD_RDVITEM,'#13#10'       RD_OPERACAO,'#13#10'       R' +
      'D_ADIANTAMENTO'#13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD_RDVITEM.O' +
      'PERACAOID'#13#10'       AND RD_RDVITEM.ADIANTAMENTOID = RD_ADIANTAMENT' +
      'O.ADIANTAMENTOID(+)'#13#10'       AND ( RD_RDVITEM.TIPOMOEDA = '#39'R'#39' OR ' +
      'RD_RDVITEM.TIPOMOEDA IS NULL )      '#13#10'       AND RD_RDVITEM.RDVI' +
      'D = :RDVID'
    DataSource = dsRdvLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'RDVID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 60
    object sqldtsRdvItemRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemDATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsRdvItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemDATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object sqldtsRdvItemTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsRdvItemTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsRdvItemOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsRdvItemOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRdvItemL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsRdvItemL_CONTACONTABIL: TStringField
      FieldName = 'L_CONTACONTABIL'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsRdvItemVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object sqldtsRdvItemVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsRdvItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsRdvItemKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsRdvItemDATACONTABILIZACAO: TSQLTimeStampField
      FieldName = 'DATACONTABILIZACAO'
    end
    object sqldtsRdvItemADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemL_IDENTIFSOLIC: TStringField
      FieldName = 'L_IDENTIFSOLIC'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsRdvItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsRdvLink: TDataSource
    DataSet = sqldtsRdv
    Left = 380
    Top = 60
  end
  object dsprvRdv: TDataSetProvider
    DataSet = sqldtsRdv
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 380
    Top = 8
  end
  object sqldtsRdvEspelho: TSQLDataSet
    CommandText = 
      'SELECT RD_RDVESPELHO.RDVID,'#13#10'       RD_RDVESPELHO.DATADOCID,'#13#10'  ' +
      '     RD_RDVESPELHO.ITEMID,'#13#10'       RD_RDVESPELHO.TIPOMOEDA,'#13#10'   ' +
      '    RD_RDVESPELHO.TIPODESPESAOS,'#13#10'       RD_RDVESPELHO.OSID,'#13#10'  ' +
      '     RD_RDVESPELHO.OPERACAOID,'#13#10'       RD_OPERACAO.DESCRICAO L_D' +
      'ESCRICAOOPERACAO,'#13#10'       RD_RDVESPELHO.VLRDESPESA,'#13#10'       RD_R' +
      'DVESPELHO.VLRSALDO,'#13#10'       RD_RDVESPELHO.HISTORICO,'#13#10'       RD_' +
      'RDVESPELHO.KMSAIDA,'#13#10'       RD_RDVESPELHO.KMCHEGADA,'#13#10'       RD_' +
      'RDVESPELHO.ADIANTAMENTOID,'#13#10'       RD_RDVESPELHO.USUARIO'#13#10'  FROM' +
      ' RD_RDVESPELHO,'#13#10'       RD_OPERACAO'#13#10' WHERE RD_OPERACAO.OPERACAO' +
      'ID (+) = RD_RDVESPELHO.OPERACAOID'#13#10'       AND RD_RDVESPELHO.RDVI' +
      'D = :RDVID'
    DataSource = dsRdvLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'RDVID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 168
    object sqldtsRdvEspelhoRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvEspelhoDATADOCID: TSQLTimeStampField
      FieldName = 'DATADOCID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsRdvEspelhoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvEspelhoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsRdvEspelhoTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsRdvEspelhoOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsRdvEspelhoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvEspelhoL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRdvEspelhoVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 8
      Size = 2
    end
    object sqldtsRdvEspelhoVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 8
      Size = 2
    end
    object sqldtsRdvEspelhoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsRdvEspelhoKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvEspelhoKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvEspelhoADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvEspelhoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsHora: TSQLDataSet
    CommandText = 
      'SELECT RD_HORA.HORAID,'#13#10'       RD_HORA.DATAABERTURA,'#13#10'       RD_' +
      'HORA.VLRSALDO,'#13#10'       RD_HORA.DATAFECHAMENTO,'#13#10'       RD_HORA.B' +
      'LOQUEADO,'#13#10'       EF_ENTIDADE.NOME L_NOMEFUNCIONARIO,'#13#10'       EF' +
      '_ENTIDADE.FILIALID L_FILIALID,'#13#10'       EF_ENTIDADE.HORASCFGTRABI' +
      'D L_HORASCFGTRABID'#13#10'  FROM RD_HORA, EF_ENTIDADE'#13#10' WHERE EF_ENTID' +
      'ADE.ENTIDADEID(+) = RD_HORA.HORAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 324
    object sqldtsHoraHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsHoraL_HORASCFGTRABID: TBCDField
      FieldName = 'L_HORASCFGTRABID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsHoraDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
    end
    object sqldtsHoraVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsHoraDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsHoraBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
  end
  object sqldtsHoraItem: TSQLDataSet
    CommandText = 
      'SELECT RD_HORAITEM.HORAID,'#13#10'       RD_HORAITEM.DATASERVICOID,'#13#10' ' +
      '      RD_HORAITEM.ITEMID,'#13#10'       RD_HORAITEM.OSID,'#13#10'       RD_H' +
      'ORAITEM.OPERACAOID,'#13#10'       RD_OPERACAO.DESCRICAO L_DESCRICAOOPE' +
      'RACAO,'#13#10'       RD_OPERACAO.OPERACAO L_OPERACAO,'#13#10'       RD_HORAI' +
      'TEM.HORAINI,'#13#10'       RD_HORAITEM.HORAFIM,'#13#10'       RD_HORAITEM.DI' +
      'FERENCAHORATRAB,'#13#10'       RD_HORAITEM.DIFERENCAMINTRAB,   '#13#10'     ' +
      '  RD_HORAITEM.VLRSALDOMINUTOS,    '#13#10'       RD_HORAITEM.VLRSALDO,' +
      #13#10'       RD_HORAITEM.HISTORICO,'#13#10'       RD_HORAITEM.BANCOHORAID,' +
      #13#10'       RD_HORAITEM.USUARIO'#13#10'  FROM RD_HORAITEM,'#13#10'       RD_OPE' +
      'RACAO'#13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD_HORAITEM.OPERACAOI' +
      'D'#13#10'       AND RD_HORAITEM.HORAID = :HORAID'
    DataSource = dsHoraLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'HORAID'
        ParamType = ptInput
        Size = 34
      end>
    SortFieldNames = 'HORAID, HORAINI, ITEMID'
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 376
    object sqldtsHoraItemHORAID: TBCDField
      FieldName = 'HORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsHoraItemHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sqldtsHoraItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsHoraItemOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsHoraItemOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsHoraItemL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsHoraItemL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsHoraItemHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object sqldtsHoraItemDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object sqldtsHoraItemDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object sqldtsHoraItemVLRSALDOMINUTOS: TFMTBCDField
      FieldName = 'VLRSALDOMINUTOS'
      Precision = 14
      Size = 10
    end
    object sqldtsHoraItemVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsHoraItemHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsHoraItemBANCOHORAID: TBCDField
      FieldName = 'BANCOHORAID'
      Precision = 8
      Size = 0
    end
    object sqldtsHoraItemDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      Required = True
    end
    object sqldtsHoraItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsHoraLink: TDataSource
    DataSet = sqldtsHora
    Left = 380
    Top = 376
  end
  object dsprvHora: TDataSetProvider
    DataSet = sqldtsHora
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 380
    Top = 324
  end
  object sqldtsRelRdv: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT '#13#10'       RD_RDVITEM.RDVID, '#13#10'       RD_RDVITEM.D' +
      'ATAMOVIMENTOID, '#13#10'       RD_RDVITEM.ITEMID, '#13#10'       RD_RDVITEM.' +
      'DATADOC, '#13#10'       RD_RDVITEM.OSID, '#13#10'       RD_RDVITEM.OPERACAOI' +
      'D, '#13#10'       RD_RDVITEM.VLRDESPESA, '#13#10'       RD_RDVITEM.VLRSALDO,' +
      ' '#13#10'       RD_RDVITEM.HISTORICO, '#13#10'       RD_RDVITEM.KMSAIDA, '#13#10' ' +
      '      RD_RDVITEM.KMCHEGADA, '#13#10'       RD_OPERACAO.CONTACONTABILID' +
      ','#13#10'       RD_OPERACAO.OPERACAO,'#13#10'       RD_OPERACAO.DESCRICAO,'#13#10 +
      '       RD_ADIANTAMENTO.IDENTIFSOLIC L_IDENTIFSOLIC,'#13#10'       RD_R' +
      'DVITEM.USUARIO '#13#10'  FROM RD_RDVITEM, '#13#10'       RD_OPERACAO,'#13#10'     ' +
      '  RD_ADIANTAMENTO'#13#10' WHERE '#13#10'       RD_OPERACAO.OPERACAOID(+) = R' +
      'D_RDVITEM.OPERACAOID'#13#10'       AND RD_RDVITEM.ADIANTAMENTOID = RD_' +
      'ADIANTAMENTO.ADIANTAMENTOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 320
    object sqldtsRelRdvRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRelRdvDATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsRelRdvITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRelRdvDATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object sqldtsRelRdvOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsRelRdvOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRelRdvVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object sqldtsRelRdvVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsRelRdvHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsRelRdvKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsRelRdvKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsRelRdvCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsRelRdvOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object sqldtsRelRdvDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsRelRdvL_IDENTIFSOLIC: TStringField
      FieldName = 'L_IDENTIFSOLIC'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsRelRdvUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvRelRdv: TDataSetProvider
    DataSet = sqldtsRelRdv
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 172
    Top = 320
  end
  object sqldtsRDVLog: TSQLDataSet
    CommandText = 
      'SELECT RD_RDVLOG.RDVID,'#13#10'       RD_RDVLOG.ITEMID,'#13#10'       RD_RDV' +
      'LOG.DATAEXCLUSAO,'#13#10'       RD_RDVLOG.ITEMRDVID,'#13#10'       RD_RDVLOG' +
      '.LOGRDVID,'#13#10'       RD_LOGRDV.DESCRICAO L_LOGRDVDESCRICAO,'#13#10'     ' +
      '  RD_RDVLOG.DATAMOVIMENTOID,'#13#10'       RD_RDVLOG.DATADOC,'#13#10'       ' +
      'RD_RDVLOG.TIPOMOEDA,'#13#10'       RD_RDVLOG.TIPODESPESAOS,'#13#10'       RD' +
      '_RDVLOG.OSID,'#13#10'       RD_RDVLOG.OPERACAOID,'#13#10'       RD_OPERACAO.' +
      'DESCRICAO L_DESCRICAOOPERACAO,'#13#10'       RD_OPERACAO.OPERACAO L_OP' +
      'ERACAO,'#13#10'       RD_RDVLOG.VLRDESPESA,'#13#10'       RD_RDVLOG.VLRSALDO' +
      ','#13#10'       RD_RDVLOG.HISTORICO,'#13#10'       RD_RDVLOG.KMSAIDA,'#13#10'     ' +
      '  RD_RDVLOG.KMCHEGADA,'#13#10'       RD_RDVLOG.DATAFECHAMENTO,'#13#10'      ' +
      ' RD_RDVLOG.OBSERVACAO,'#13#10'       RD_RDVLOG.ADIANTAMENTOID,'#13#10'      ' +
      ' RD_RDVLOG.USUARIO'#13#10'  FROM RD_RDVLOG,'#13#10'       RD_OPERACAO,'#13#10'    ' +
      '   RD_LOGRDV RD_LOGRDV'#13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD_R' +
      'DVLOG.OPERACAOID'#13#10'       AND RD_LOGRDV.LOGRDVID(+) = RD_RDVLOG.L' +
      'OGRDVID'#13#10'       AND RD_RDVLOG.RDVID = :RDVID'
    DataSource = dsRdvLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'RDVID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 223
    object sqldtsRDVLogRDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogDATAEXCLUSAO: TSQLTimeStampField
      FieldName = 'DATAEXCLUSAO'
    end
    object sqldtsRDVLogITEMRDVID: TBCDField
      FieldName = 'ITEMRDVID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogLOGRDVID: TBCDField
      FieldName = 'LOGRDVID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogL_LOGRDVDESCRICAO: TStringField
      FieldName = 'L_LOGRDVDESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRDVLogDATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      Required = True
    end
    object sqldtsRDVLogDATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object sqldtsRDVLogTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsRDVLogTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsRDVLogOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsRDVLogOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRDVLogL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsRDVLogVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object sqldtsRDVLogVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsRDVLogHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsRDVLogKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsRDVLogOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsRDVLogADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLogUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsLogRDV: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RD_LOGRDV.LOGRDVID,'#13#10'  RD_LOGRDV.DESCRICAO,'#13#10'  RD_LOGR' +
      'DV.USUARIO'#13#10'  FROM'#13#10'  RD_LOGRDV RD_LOGRDV'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 64
    object sqldtsLogRDVLOGRDVID: TBCDField
      FieldName = 'LOGRDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsLogRDVDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsLogRDVUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvLogRDV: TDataSetProvider
    DataSet = sqldtsLogRDV
    Options = [poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 63
  end
  object sqldtsRDVLog2: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  RD_RDVLOG.RDVID,'#13#10'  RD_RDVLOG.ITEMID,'#13#10'  RD_RDVLOG.DAT' +
      'AEXCLUSAO,'#13#10'  RD_RDVLOG.ITEMRDVID,'#13#10'  RD_RDVLOG.LOGRDVID,'#13#10'  RD_' +
      'LOGRDV.DESCRICAO L_LOGRDVDESCRICAO,'#13#10'  RD_RDVLOG.DATAMOVIMENTOID' +
      ','#13#10'  RD_RDVLOG.DATADOC,'#13#10'  RD_RDVLOG.TIPOMOEDA,'#13#10'  RD_RDVLOG.TIP' +
      'ODESPESAOS,'#13#10'  RD_RDVLOG.OSID,'#13#10'  RD_RDVLOG.OPERACAOID,'#13#10'  RD_OP' +
      'ERACAO.DESCRICAO L_DESCRICAOOPERACAO,'#13#10'  RD_OPERACAO.OPERACAO L_' +
      'OPERACAO,'#13#10'  RD_RDVLOG.VLRDESPESA,'#13#10'  RD_RDVLOG.VLRSALDO,'#13#10'  RD_' +
      'RDVLOG.HISTORICO,'#13#10'  RD_RDVLOG.KMSAIDA,'#13#10'  RD_RDVLOG.KMCHEGADA,'#13 +
      #10'  RD_RDVLOG.DATAFECHAMENTO,'#13#10'  RD_RDVLOG.OBSERVACAO,'#13#10'  RD_RDVL' +
      'OG.ADIANTAMENTOID,'#13#10'  RD_RDVLOG.USUARIO'#13#10'  FROM'#13#10'  RD_RDVLOG,'#13#10' ' +
      ' RD_OPERACAO,'#13#10'  RD_LOGRDV RD_LOGRDV'#13#10' WHERE'#13#10'  RD_OPERACAO.OPER' +
      'ACAOID (+) = RD_RDVLOG.OPERACAOID'#13#10'  AND RD_LOGRDV.LOGRDVID(+) =' +
      ' RD_RDVLOG.LOGRDVID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 423
    object sqldtsRDVLog2RDVID: TBCDField
      FieldName = 'RDVID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2ITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2DATAEXCLUSAO: TSQLTimeStampField
      FieldName = 'DATAEXCLUSAO'
    end
    object sqldtsRDVLog2LOGRDVID: TBCDField
      FieldName = 'LOGRDVID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2L_LOGRDVDESCRICAO: TStringField
      FieldName = 'L_LOGRDVDESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRDVLog2DATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      Required = True
    end
    object sqldtsRDVLog2DATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object sqldtsRDVLog2TIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsRDVLog2OSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsRDVLog2OPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2L_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRDVLog2L_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsRDVLog2VLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object sqldtsRDVLog2VLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsRDVLog2HISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsRDVLog2KMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2KMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsRDVLog2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsRDVLog2ADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2ITEMRDVID: TBCDField
      FieldName = 'ITEMRDVID'
      Precision = 8
      Size = 0
    end
    object sqldtsRDVLog2TIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsRDVLog2USUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvRDVLog2: TDataSetProvider
    DataSet = sqldtsRDVLog2
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 380
    Top = 424
  end
  object sqldtsMemo: TSQLDataSet
    CommandText = 
      'SELECT RD_MEMO.MEMOID,'#13#10'       RD_MEMO.DATASOLICITACAO,'#13#10'       ' +
      'RD_MEMO.DATADEPOSITO,'#13#10'       RD_MEMO.DATACONTABILIZACAO,'#13#10'     ' +
      '  RD_MEMO.TIPOMOEDA,'#13#10'       RD_MEMO.FUNCIONARIOID,'#13#10'       RD_M' +
      'EMO.OPERACAOID,'#13#10'       RD_MEMO.VLRMEMO,'#13#10'       RD_MEMO.HISTORI' +
      'CO,'#13#10'       RD_MEMO.SOLICITANTE,'#13#10'       RD_MEMO.LIBERADO,'#13#10'    ' +
      '   RD_MEMO.TRANSFERIDO,'#13#10'       RD_OPERACAO.DESCRICAO L_DESCRICA' +
      'OOPERACAO,'#13#10'       RD_OPERACAO.OPERACAO L_OPERACAO,'#13#10'       EF_E' +
      'NTIDADE.NOME L_NOMEFUNCIONARIO'#13#10'  FROM RD_MEMO,'#13#10'       RD_OPERA' +
      'CAO,'#13#10'       EF_ENTIDADE'#13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD' +
      '_MEMO.OPERACAOID'#13#10'       AND EF_ENTIDADE.ENTIDADEID (+) = RD_MEM' +
      'O.FUNCIONARIOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 216
    object sqldtsMemoMEMOID: TBCDField
      FieldName = 'MEMOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsMemoDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object sqldtsMemoDATADEPOSITO: TSQLTimeStampField
      FieldName = 'DATADEPOSITO'
    end
    object sqldtsMemoDATACONTABILIZACAO: TSQLTimeStampField
      FieldName = 'DATACONTABILIZACAO'
    end
    object sqldtsMemoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsMemoFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object sqldtsMemoL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsMemoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsMemoL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsMemoL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsMemoVLRMEMO: TBCDField
      FieldName = 'VLRMEMO'
      Precision = 14
      Size = 2
    end
    object sqldtsMemoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsMemoSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
    end
    object sqldtsMemoLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqldtsMemoTRANSFERIDO: TBCDField
      FieldName = 'TRANSFERIDO'
      Precision = 1
      Size = 0
    end
  end
  object dsprvMemo: TDataSetProvider
    DataSet = sqldtsMemo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 172
    Top = 216
  end
  object sqldtsBancoHora: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'  RD_BANCOHORA.BANCOHORAID,'#13#10'  RD_BANCOHORA.DATASOLICIT' +
      'ACAO,'#13#10'  RD_BANCOHORA.MULTILANCAMENTO,'#13#10'  RD_BANCOHORA.FILIALID,' +
      #13#10'  EF_FILIAL.NOMEFANTASIA L_NOMEFANTASIAFILIAL,  '#13#10'  RD_BANCOHO' +
      'RA.FUNCIONARIOID,'#13#10'  EF_ENTIDADE.NOME L_NOMEFUNCIONARIO,'#13#10'  EF_E' +
      'NTIDADE.FILIALID L_FILIALID,'#13#10'  EF_ENTIDADE.HORASCFGTRABID L_HOR' +
      'ASCFGTRABID,  '#13#10'  RD_HORA.DATAFECHAMENTO L_DATAFECHAMENTO,'#13#10'  RD' +
      '_HORA.DATAABERTURA L_DATAMESABERTO,'#13#10'  RD_BANCOHORA.TIPODESPESAO' +
      'S,'#13#10'  RD_BANCOHORA.OSID,  '#13#10'  RD_BANCOHORA.OPERACAOID,'#13#10'  RD_OPE' +
      'RACAO.DESCRICAO L_DESCRICAOOPERACAO,'#13#10'  RD_OPERACAO.OPERACAO L_O' +
      'PERACAO,'#13#10'  RD_BANCOHORA.HORAINI,'#13#10'  RD_BANCOHORA.HORAFIM,'#13#10'  RD' +
      '_BANCOHORA.DIFERENCAHORATRAB,'#13#10'  RD_BANCOHORA.DIFERENCAMINTRAB,'#13 +
      #10'  RD_BANCOHORA.HISTORICO,'#13#10'  RD_BANCOHORA.LIBCHEFIA,'#13#10'  RD_BANC' +
      'OHORA.NOMELIBCHEFIA,'#13#10'  RD_BANCOHORA.DATALIBCHEFIA,  '#13#10'  RD_BANC' +
      'OHORA.LIBERADO,'#13#10'  RD_BANCOHORA.IMPRESSO,'#13#10'  RD_BANCOHORA.USUARI' +
      'O'#13#10'  FROM'#13#10'  RD_BANCOHORA,'#13#10'  RD_OPERACAO,'#13#10'  EF_ENTIDADE,'#13#10'  RD' +
      '_HORA,'#13#10'  EF_FILIAL'#13#10' WHERE'#13#10'  RD_BANCOHORA.OPERACAOID = RD_OPER' +
      'ACAO.OPERACAOID(+) '#13#10'  AND RD_BANCOHORA.FUNCIONARIOID = EF_ENTID' +
      'ADE.ENTIDADEID(+) '#13#10'  AND RD_BANCOHORA.FUNCIONARIOID = RD_HORA.H' +
      'ORAID(+) '#13#10'  AND RD_BANCOHORA.FILIALID = EF_FILIAL.FILIALID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 272
    object sqldtsBancoHoraBANCOHORAID: TBCDField
      FieldName = 'BANCOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsBancoHoraDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object sqldtsBancoHoraMULTILANCAMENTO: TBCDField
      FieldName = 'MULTILANCAMENTO'
      Precision = 1
      Size = 0
    end
    object sqldtsBancoHoraFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsBancoHoraL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsBancoHoraFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object sqldtsBancoHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBancoHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBancoHoraTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsBancoHoraOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsBancoHoraOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsBancoHoraL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBancoHoraL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
      ProviderFlags = []
    end
    object sqldtsBancoHoraL_DATAMESABERTO: TSQLTimeStampField
      FieldName = 'L_DATAMESABERTO'
      ProviderFlags = []
    end
    object sqldtsBancoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object sqldtsBancoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object sqldtsBancoHoraDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object sqldtsBancoHoraDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object sqldtsBancoHoraHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsBancoHoraL_HORASCFGTRABID: TBCDField
      FieldName = 'L_HORASCFGTRABID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBancoHoraLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsBancoHoraNOMELIBCHEFIA: TStringField
      FieldName = 'NOMELIBCHEFIA'
    end
    object sqldtsBancoHoraDATALIBCHEFIA: TSQLTimeStampField
      FieldName = 'DATALIBCHEFIA'
    end
    object sqldtsBancoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqldtsBancoHoraIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object sqldtsBancoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvBancoHora: TDataSetProvider
    DataSet = sqldtsBancoHora
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 384
    Top = 272
  end
  object sqldtsRdvItemUS: TSQLDataSet
    CommandText = 
      'SELECT RD_RDVITEM.RDVID,'#13#10'       RD_RDVITEM.DATAMOVIMENTOID,'#13#10'  ' +
      '     RD_RDVITEM.ITEMID,'#13#10'       RD_RDVITEM.DATADOC,'#13#10'       RD_R' +
      'DVITEM.TIPOMOEDA,'#13#10'       RD_RDVITEM.TIPODESPESAOS,'#13#10'       RD_R' +
      'DVITEM.OSID,'#13#10'       RD_RDVITEM.OPERACAOID,'#13#10'       RD_RDVITEM.V' +
      'LRDESPESA,'#13#10'       RD_RDVITEM.VLRSALDO,'#13#10'       RD_RDVITEM.HISTO' +
      'RICO,'#13#10'       RD_RDVITEM.KMSAIDA,'#13#10'       RD_RDVITEM.KMCHEGADA,'#13 +
      #10'       RD_RDVITEM.DATAFECHAMENTO,'#13#10'       RD_RDVITEM.DATACONTAB' +
      'ILIZACAO,'#13#10'       RD_RDVITEM.ADIANTAMENTOID,'#13#10'       RD_RDVITEM.' +
      'USUARIO,'#13#10'       RD_OPERACAO.DESCRICAO L_DESCRICAOOPERACAO,'#13#10'   ' +
      '    RD_OPERACAO.OPERACAO L_OPERACAO,'#13#10'       RD_OPERACAO.CONTACO' +
      'NTABILID L_CONTACONTABIL'#13#10'  FROM RD_RDVITEM,'#13#10'       RD_OPERACAO' +
      #13#10' WHERE RD_OPERACAO.OPERACAOID (+) = RD_RDVITEM.OPERACAOID'#13#10'   ' +
      '    AND RD_RDVITEM.TIPOMOEDA = '#39'D'#39'      '#13#10'       AND RD_RDVITEM.' +
      'RDVID = :RDVID'
    DataSource = dsRdvLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'RDVID'
        ParamType = ptInput
        Size = 34
      end>
    SortFieldNames = 'RDVID, DATAMOVIMENTOID, ITEMID'
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 264
    Top = 108
    object sqldtsRdvItemUSRDVID: TBCDField
      FieldName = 'RDVID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemUSDATAMOVIMENTOID: TSQLTimeStampField
      FieldName = 'DATAMOVIMENTOID'
      Required = True
    end
    object sqldtsRdvItemUSITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemUSDATADOC: TSQLTimeStampField
      FieldName = 'DATADOC'
    end
    object sqldtsRdvItemUSTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object sqldtsRdvItemUSTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object sqldtsRdvItemUSOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsRdvItemUSOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemUSL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRdvItemUSL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsRdvItemUSL_CONTACONTABIL: TStringField
      FieldName = 'L_CONTACONTABIL'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsRdvItemUSVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object sqldtsRdvItemUSVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsRdvItemUSHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsRdvItemUSKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemUSKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemUSDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsRdvItemUSDATACONTABILIZACAO: TSQLTimeStampField
      FieldName = 'DATACONTABILIZACAO'
    end
    object sqldtsRdvItemUSADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsRdvItemUSUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsHoraCFG: TSQLDataSet
    CommandText = 
      'SELECT RD_HORACFG.ANOMES,'#13#10'       RD_HORACFG.DATACADASTRO,'#13#10'    ' +
      '   RD_HORACFG.DATALIMITEFECH,'#13#10'       RD_HORACFG.DATALIMITELIB,'#13 +
      #10'       RD_HORACFG.USUARIO'#13#10'  FROM RD_HORACFG RD_HORACFG'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 372
    object sqldtsHoraCFGANOMES: TBCDField
      FieldName = 'ANOMES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsHoraCFGDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object sqldtsHoraCFGDATALIMITEFECH: TSQLTimeStampField
      FieldName = 'DATALIMITEFECH'
    end
    object sqldtsHoraCFGDATALIMITELIB: TSQLTimeStampField
      FieldName = 'DATALIMITELIB'
    end
    object sqldtsHoraCFGUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvHoraCFG: TDataSetProvider
    DataSet = sqldtsHoraCFG
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 172
    Top = 372
  end
  object sqldtsHorasCfgTrab: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT RD_HORASCFGTRAB.HORASCFGTRABID,'#13#10'       RD_HORASCFGTRAB.D' +
      'ESCRICAO,'#13#10'       RD_HORASCFGTRAB.BLOQUEADO,'#13#10'       RD_HORASCFG' +
      'TRAB.HORAINICIOTRABALHO,'#13#10'       RD_HORASCFGTRAB.HORAFINALTRABAL' +
      'HO,'#13#10'       RD_HORASCFGTRAB.HORASALMOCO,'#13#10'       RD_HORASCFGTRAB' +
      '.LIMITEBCOHORAS,'#13#10'       RD_HORASCFGTRAB.TRABSABADO,'#13#10'       RD_' +
      'HORASCFGTRAB.TRABDOMINGO,'#13#10'       RD_HORASCFGTRAB.USUARIO'#13#10'  FRO' +
      'M RD_HORASCFGTRAB RD_HORASCFGTRAB'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 420
    object sqldtsHorasCfgTrabHORASCFGTRABID: TBCDField
      FieldName = 'HORASCFGTRABID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsHorasCfgTrabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsHorasCfgTrabBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object sqldtsHorasCfgTrabHORAINICIOTRABALHO: TSQLTimeStampField
      FieldName = 'HORAINICIOTRABALHO'
    end
    object sqldtsHorasCfgTrabHORAFINALTRABALHO: TSQLTimeStampField
      FieldName = 'HORAFINALTRABALHO'
    end
    object sqldtsHorasCfgTrabHORASALMOCO: TFMTBCDField
      FieldName = 'HORASALMOCO'
      Precision = 14
      Size = 10
    end
    object sqldtsHorasCfgTrabLIMITEBCOHORAS: TFMTBCDField
      FieldName = 'LIMITEBCOHORAS'
      Precision = 14
      Size = 10
    end
    object sqldtsHorasCfgTrabTRABSABADO: TBCDField
      FieldName = 'TRABSABADO'
      Precision = 1
      Size = 0
    end
    object sqldtsHorasCfgTrabTRABDOMINGO: TBCDField
      FieldName = 'TRABDOMINGO'
      Precision = 1
      Size = 0
    end
    object sqldtsHorasCfgTrabUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvHorasCfgTrab: TDataSetProvider
    DataSet = sqldtsHorasCfgTrab
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 172
    Top = 420
  end
end
