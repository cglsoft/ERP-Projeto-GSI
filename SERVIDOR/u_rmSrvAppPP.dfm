object SrvAppPP: TSrvAppPP
  OldCreateOrder = False
  Height = 674
  Width = 826
  object sqldtsCatalogo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_CATALOGO.MODELOID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUE' +
      'S,'#13#10'  PP_CATALOGO.DESCRICAOINGLES,'#13#10'  PP_CATALOGO.COMENTARIO,'#13#10' ' +
      ' PP_CATALOGO.GRUPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF' +
      '_GRUPO.DESCRICAO AS L_DESCRICAOGRUPO,'#13#10'  PP_CATALOGO.TIPO,'#13#10'  PP' +
      '_CATALOGO.FORNECEDORID,'#13#10'  EF_ENTIDADE.NOME L_NOME_FORNECEDOR,'#13#10 +
      '  PP_CATALOGO.CUSTOHORAID,'#13#10'  OS_CUSTOHORA.DESCRICAO L_DESCRICAO' +
      'CUSTOHORA,'#13#10'  OS_CUSTOHORA.VLRHORATRAB L_VLRHORATRAB,'#13#10'  OS_CUST' +
      'OHORA.VLRHORATRANSP L_VLRHORATRANSP,'#13#10'  OS_CUSTOHORA.VLRHORAESPE' +
      'RA L_VLRHORAESPERA,'#13#10'  OS_CUSTOHORA.VLRHORAOUTROS L_VLRHORAOUTRO' +
      'S,  '#13#10'  PP_CATALOGO.REGANVISAID,'#13#10'  PP_CATALOGO.DESCRICAOANVISA,' +
      #13#10'  PP_CATALOGO.IMAGEM,'#13#10'  PP_CATALOGO.USUARIO'#13#10'  FROM'#13#10'  PP_CAT' +
      'ALOGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO,'#13#10'  EF_ENTIDADE EF_ENTID' +
      'ADE,'#13#10'  OS_CUSTOHORA OS_CUSTOHORA'#13#10' WHERE'#13#10'  EF_GRUPO.GRUPOID(+)' +
      ' = PP_CATALOGO.GRUPOID'#13#10'  AND EF_ENTIDADE.ENTIDADEID(+) = PP_CAT' +
      'ALOGO.FORNECEDORID'#13#10'  AND OS_CUSTOHORA.CUSTOHORAID(+) = PP_CATAL' +
      'OGO.CUSTOHORAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 65535
    object sqldtsCatalogoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsCatalogoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object sqldtsCatalogoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object sqldtsCatalogoCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object sqldtsCatalogoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsCatalogoL_NOME_FORNECEDOR: TStringField
      FieldName = 'L_NOME_FORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsCatalogoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsCatalogoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsCatalogoL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsCatalogoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqldtsCatalogoCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      Precision = 8
      Size = 0
    end
    object sqldtsCatalogoL_DESCRICAOCUSTOHORA: TStringField
      FieldName = 'L_DESCRICAOCUSTOHORA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsCatalogoL_VLRHORATRAB: TBCDField
      FieldName = 'L_VLRHORATRAB'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsCatalogoL_VLRHORATRANSP: TBCDField
      FieldName = 'L_VLRHORATRANSP'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsCatalogoL_VLRHORAESPERA: TBCDField
      FieldName = 'L_VLRHORAESPERA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsCatalogoL_VLRHORAOUTROS: TBCDField
      FieldName = 'L_VLRHORAOUTROS'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsCatalogoREGANVISAID: TStringField
      FieldName = 'REGANVISAID'
      Size = 40
    end
    object sqldtsCatalogoDESCRICAOANVISA: TStringField
      FieldName = 'DESCRICAOANVISA'
      Size = 100
    end
    object sqldtsCatalogoIMAGEM: TBlobField
      FieldName = 'IMAGEM'
      BlobType = ftOraBlob
      Size = 1
    end
    object sqldtsCatalogoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvCatalogo: TDataSetProvider
    DataSet = sqldtsCatalogo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 65535
  end
  object sqldtsEquipamento: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_EQUIPAMENTO.MODELOEQUIPAMENTOID,'#13#10'  PP_CATALOGO.DES' +
      'CRICAOPORTUGUES AS L_DESCRICAOPORTUGUES,'#13#10'  PP_CATALOGO.DESCRICA' +
      'OINGLES AS L_DESCRICAOINGLES,'#13#10'  PP_CATALOGO.COMENTARIO AS L_COM' +
      'ENTARIO,'#13#10'  PP_CATALOGO.GRUPOID AS L_GRUPOID,'#13#10'  EF_GRUPO.SIGLAG' +
      'RUPO AS L_SIGLAGRUPO,'#13#10'  EF_GRUPO.DESCRICAO AS L_DESCR_GRUPO,'#13#10' ' +
      ' PP_CATALOGO.IMAGEM AS L_IMAGEM,'#13#10'  PP_EQUIPAMENTO.DESCRICAO,'#13#10' ' +
      ' PP_EQUIPAMENTO.REVISAOID,'#13#10'  PP_EQUIPAMENTO.DATAINCLUSAO,'#13#10'  PP' +
      '_EQUIPAMENTO.DATAALTERACAO,'#13#10'  PP_EQUIPAMENTO.DOC,'#13#10'  PP_EQUIPAM' +
      'ENTO.PRAZO,'#13#10'  PP_EQUIPAMENTO.DISPONIVEL,'#13#10'  PP_EQUIPAMENTO.VLRF' +
      'OB,'#13#10'  PP_EQUIPAMENTO.VLRREVENDA,'#13#10'  PP_EQUIPAMENTO.VLRNET,'#13#10'  P' +
      'P_EQUIPAMENTO.USUARIO'#13#10'  FROM'#13#10'  PP_EQUIPAMENTO PP_EQUIPAMENTO,'#13 +
      #10'  PP_CATALOGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO'#13#10' WHERE'#13#10'  PP_C' +
      'ATALOGO.MODELOID = PP_EQUIPAMENTO.MODELOEQUIPAMENTOID'#13#10'  AND EF_' +
      'GRUPO.GRUPOID(+) = PP_CATALOGO.GRUPOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 41
    object sqldtsEquipamentoMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsEquipamentoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEquipamentoL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEquipamentoL_COMENTARIO: TStringField
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEquipamentoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsEquipamentoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsEquipamentoL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEquipamentoL_IMAGEM: TBlobField
      FieldName = 'L_IMAGEM'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsEquipamentoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsEquipamentoREVISAOID: TBCDField
      FieldName = 'REVISAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsEquipamentoDATAINCLUSAO: TSQLTimeStampField
      FieldName = 'DATAINCLUSAO'
    end
    object sqldtsEquipamentoDATAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAALTERACAO'
    end
    object sqldtsEquipamentoDOC: TStringField
      FieldName = 'DOC'
      Size = 250
    end
    object sqldtsEquipamentoPRAZO: TSQLTimeStampField
      FieldName = 'PRAZO'
    end
    object sqldtsEquipamentoDISPONIVEL: TBCDField
      FieldName = 'DISPONIVEL'
      Precision = 1
      Size = 0
    end
    object sqldtsEquipamentoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsEquipamentoVLRREVENDA: TBCDField
      FieldName = 'VLRREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsEquipamentoVLRNET: TBCDField
      FieldName = 'VLRNET'
      Precision = 14
      Size = 2
    end
    object sqldtsEquipamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOpcional: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_OPCIONAL.MODELOEQUIPAMENTOID,'#13#10'  PP_OPCIONAL.MODELO' +
      'COMPONENTEID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAOPORTU' +
      'GUES,'#13#10'  PP_CATALOGO.DESCRICAOINGLES L_DESCRICAOINGLES,'#13#10'  PP_CA' +
      'TALOGO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10 +
      '  EF_GRUPO.DESCRICAO L_DESCR_GRUPO,'#13#10'  PP_CATALOGO.IMAGEM L_IMAG' +
      'EM,'#13#10'  PP_OPCIONAL.EMPRESAID,'#13#10'  PP_OPCIONAL.PRODUTOID,'#13#10'  EF_PR' +
      'ODUTO.DESCRICAOPORTUGUES L_DESCRICAO_PORT,'#13#10'  EF_PRODUTO.DESCRIC' +
      'AOINGLES L_DESCRICAO_INGLES,'#13#10'  EF_PRODUTO.ESTOQUEFISICO L_ESTOQ' +
      'UEFISICO,'#13#10'  PP_OPCIONAL.QUANTIDADE,'#13#10'  PP_OPCIONAL.VLRUNITARIOF' +
      'OB,'#13#10'  PP_OPCIONAL.VLRTOTALFOB,'#13#10'  PP_OPCIONAL.VLRUNITARIOREVEND' +
      'A,'#13#10'  PP_OPCIONAL.VLRTOTALREVENDA,'#13#10'  PP_OPCIONAL.VLRUNITARIONET' +
      ','#13#10'  PP_OPCIONAL.VLRTOTALNET,'#13#10'  PP_OPCIONAL.USUARIO'#13#10'  FROM'#13#10'  ' +
      'PP_OPCIONAL PP_OPCIONAL,'#13#10'  PP_CATALOGO PP_CATALOGO,'#13#10'  EF_GRUPO' +
      ' EF_GRUPO,'#13#10'  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13#10'  PP_CATALOGO.MODEL' +
      'OID = PP_OPCIONAL.MODELOCOMPONENTEID'#13#10'  AND EF_GRUPO.GRUPOID = P' +
      'P_CATALOGO.GRUPOID'#13#10'  AND PP_OPCIONAL.MODELOEQUIPAMENTOID = :MOD' +
      'ELOEQUIPAMENTOID'#13#10'  AND EF_PRODUTO.PRODUTOID(+) = PP_OPCIONAL.PR' +
      'ODUTOID'
    DataSource = dsEquipamentoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 126
    object sqldtsOpcionalMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsOpcionalMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsOpcionalL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOpcionalL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOpcionalL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsOpcionalL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsOpcionalL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOpcionalEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOpcionalPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOpcionalL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOpcionalL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOpcionalL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsOpcionalQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsOpcionalVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsOpcionalVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsOpcionalVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsOpcionalVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsOpcionalVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsOpcionalVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsOpcionalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsComposicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_COMPOSICAO.MODELOEQUIPAMENTOID,'#13#10'  PP_COMPOSICAO.MO' +
      'DELOCOMPONENTEID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAOP' +
      'ORTUGUES,'#13#10'  PP_CATALOGO.DESCRICAOINGLES L_DESCRICAOINGLES,'#13#10'  P' +
      'P_CATALOGO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUP' +
      'O,'#13#10'  EF_GRUPO.DESCRICAO L_DESCR_GRUPO,'#13#10'  PP_CATALOGO.IMAGEM L_' +
      'IMAGEM,'#13#10'  PP_COMPOSICAO.EMPRESAID,'#13#10'  PP_COMPOSICAO.PRODUTOID,'#13 +
      #10'  EF_PRODUTO.DESCRICAOPORTUGUES L_DESCRICAO_PORT,'#13#10'  EF_PRODUTO' +
      '.DESCRICAOINGLES L_DESCRICAO_INGLES,'#13#10'  EF_PRODUTO.ESTOQUEFISICO' +
      ' L_ESTOQUEFISICO,'#13#10'  PP_COMPOSICAO.QUANTIDADE,'#13#10'  PP_COMPOSICAO.' +
      'VLRUNITARIOFOB,'#13#10'  PP_COMPOSICAO.VLRTOTALFOB,'#13#10'  PP_COMPOSICAO.V' +
      'LRUNITARIOREVENDA,'#13#10'  PP_COMPOSICAO.VLRTOTALREVENDA,'#13#10'  PP_COMPO' +
      'SICAO.VLRUNITARIONET,'#13#10'  PP_COMPOSICAO.VLRTOTALNET,'#13#10'  PP_COMPOS' +
      'ICAO.USUARIO'#13#10'  FROM'#13#10'  PP_COMPOSICAO PP_COMPOSICAO,'#13#10'  PP_CATAL' +
      'OGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO,'#13#10'  EF_PRODUTO EF_PRODUTO'#13 +
      #10' WHERE'#13#10'  PP_CATALOGO.MODELOID = PP_COMPOSICAO.MODELOCOMPONENTE' +
      'ID'#13#10'  AND EF_GRUPO.GRUPOID = PP_CATALOGO.GRUPOID'#13#10'  AND PP_COMPO' +
      'SICAO.MODELOEQUIPAMENTOID = :MODELOEQUIPAMENTOID '#13#10'  AND EF_PROD' +
      'UTO.PRODUTOID(+) = PP_COMPOSICAO.PRODUTOID'
    DataSource = dsEquipamentoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 84
    object sqldtsComposicaoMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsComposicaoMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsComposicaoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsComposicaoL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsComposicaoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsComposicaoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsComposicaoL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsComposicaoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsComposicaoL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsComposicaoL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsComposicaoL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsComposicaoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsComposicaoVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsComposicaoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsComposicaoVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsComposicaoVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsComposicaoVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsComposicaoVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsComposicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sqldtsComposicaoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
  end
  object sqldtsCartaApresent: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_CARTAAPRESENT.CARTAAPRESENTID,'#13#10'  PP_CARTAAPRESENT.' +
      'DESCRRESUMIDA,'#13#10'  PP_CARTAAPRESENT.CARTA,'#13#10'  PP_CARTAAPRESENT.US' +
      'UARIO'#13#10'  FROM'#13#10'  PP_CARTAAPRESENT PP_CARTAAPRESENT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 31
    Top = 339
    object sqldtsCartaApresentCARTAAPRESENTID: TBCDField
      FieldName = 'CARTAAPRESENTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCartaApresentDESCRRESUMIDA: TStringField
      FieldName = 'DESCRRESUMIDA'
      Size = 100
    end
    object sqldtsCartaApresentCARTA: TMemoField
      FieldName = 'CARTA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsCartaApresentUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPrazo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PRAZO.PRAZOID,'#13#10'  PP_PRAZO.DESCRICAO,'#13#10'  PP_PRAZO.U' +
      'SUARIO'#13#10'  FROM'#13#10'  PP_PRAZO PP_PRAZO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 84
    object sqldtsPrazoPRAZOID: TBCDField
      FieldName = 'PRAZOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPrazoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsPrazoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsBonificacao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_BONIFICACAO.BONIFICACAOID,'#13#10'  PP_BONIFICACAO.DESCRI' +
      'CAO,'#13#10'  PP_BONIFICACAO.USUARIO'#13#10'  FROM'#13#10'  PP_BONIFICACAO PP_BONI' +
      'FICACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 298
    object sqldtsBonificacaoBONIFICACAOID: TBCDField
      FieldName = 'BONIFICACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsBonificacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsBonificacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvEquipamento: TDataSetProvider
    DataSet = sqldtsEquipamento
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 120
    Top = 41
  end
  object dsprvCartaApresent: TDataSetProvider
    DataSet = sqldtsCartaApresent
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 339
  end
  object dsprvBonificacao: TDataSetProvider
    DataSet = sqldtsBonificacao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 298
  end
  object dsprvPrazo: TDataSetProvider
    DataSet = sqldtsPrazo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 84
  end
  object sqldtsCondPagtoProp: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_CONDPAGTOPROP.CONDPAGTOPROPID,'#13#10'  PP_CONDPAGTOPROP.' +
      'DESCRICAOPAGTO,'#13#10'  PP_CONDPAGTOPROP.DESCRICAO,'#13#10'  PP_CONDPAGTOPR' +
      'OP.CONDPAGTOID,'#13#10'  EF_CONDPAGTO.DESCRICAO L_DESC_PAGTO,'#13#10'  PP_CO' +
      'NDPAGTOPROP.TABFINANCEIRAID,'#13#10'  PP_CONDPAGTOPROP.SPREAD,'#13#10'  PP_C' +
      'ONDPAGTOPROP.JUROS,'#13#10'  PP_CONDPAGTOPROP.NUMPARCELA,'#13#10'  PP_CONDPA' +
      'GTOPROP.NUMPARCJUROS,'#13#10'  PP_CONDPAGTOPROP.PORCPAGTOAVISTA,'#13#10'  PP' +
      '_CONDPAGTOPROP.LEASING,'#13#10'  PP_CONDPAGTOPROP.RESIDUALPORC,'#13#10'  PP_' +
      'CONDPAGTOPROP.RESIDUALNUM,'#13#10'  PP_CONDPAGTOPROP.TIPOPAGTO,'#13#10'  PP_' +
      'CONDPAGTOPROP.COMISSAOFINANCEIRA,'#13#10'  PP_CONDPAGTOPROP.DEDUZIRCOM' +
      'ISSAO,'#13#10'  PP_CONDPAGTOPROP.USUARIO'#13#10'  FROM '#13#10'  PP_CONDPAGTOPROP ' +
      'PP_CONDPAGTOPROP,'#13#10'  EF_CONDPAGTO EF_CONDPAGTO'#13#10' WHERE'#13#10'  EF_CON' +
      'DPAGTO.CONDPAGTOID(+) =   PP_CONDPAGTOPROP.CONDPAGTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 31
    Top = 380
    object sqldtsCondPagtoPropCONDPAGTOPROPID: TBCDField
      FieldName = 'CONDPAGTOPROPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoPropDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsCondPagtoPropCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoPropL_DESC_PAGTO: TStringField
      FieldName = 'L_DESC_PAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsCondPagtoPropDESCRICAOPAGTO: TStringField
      FieldName = 'DESCRICAOPAGTO'
      Size = 100
    end
    object sqldtsCondPagtoPropTABFINANCEIRAID: TBCDField
      FieldName = 'TABFINANCEIRAID'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoPropSPREAD: TFMTBCDField
      FieldName = 'SPREAD'
      Precision = 14
      Size = 6
    end
    object sqldtsCondPagtoPropJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 14
      Size = 6
    end
    object sqldtsCondPagtoPropNUMPARCELA: TBCDField
      FieldName = 'NUMPARCELA'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoPropNUMPARCJUROS: TBCDField
      FieldName = 'NUMPARCJUROS'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoPropPORCPAGTOAVISTA: TFMTBCDField
      FieldName = 'PORCPAGTOAVISTA'
      Precision = 14
      Size = 6
    end
    object sqldtsCondPagtoPropLEASING: TBCDField
      FieldName = 'LEASING'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoPropRESIDUALPORC: TFMTBCDField
      FieldName = 'RESIDUALPORC'
      Precision = 14
      Size = 6
    end
    object sqldtsCondPagtoPropRESIDUALNUM: TFMTBCDField
      FieldName = 'RESIDUALNUM'
      Precision = 14
      Size = 6
    end
    object sqldtsCondPagtoPropTIPOPAGTO: TStringField
      FieldName = 'TIPOPAGTO'
      Size = 1
    end
    object sqldtsCondPagtoPropCOMISSAOFINANCEIRA: TFMTBCDField
      FieldName = 'COMISSAOFINANCEIRA'
      Precision = 14
      Size = 6
    end
    object sqldtsCondPagtoPropDEDUZIRCOMISSAO: TBCDField
      FieldName = 'DEDUZIRCOMISSAO'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoPropUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvCondPagtoProp: TDataSetProvider
    DataSet = sqldtsCondPagtoProp
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 380
  end
  object sqldtsValidade: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_VALIDADE.VALIDADEID,'#13#10'  PP_VALIDADE.DESCRICAO,'#13#10'  P' +
      'P_VALIDADE.USUARIO'#13#10'  FROM'#13#10'  PP_VALIDADE PP_VALIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 126
    object sqldtsValidadeVALIDADEID: TBCDField
      FieldName = 'VALIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsValidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object sqldtsValidadeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvValidade: TDataSetProvider
    DataSet = sqldtsValidade
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 126
  end
  object sqldtsProposta: TSQLDataSet
    CommandText = 
      'SELECT PP_PROPOSTA.PROPOSTAID,'#13#10'       PP_PROPOSTA.FILIALID,'#13#10'  ' +
      '     EF_FILIAL.NOMEFANTASIA L_FILIAL,'#13#10'       PP_PROPOSTA.DATAPR' +
      'OPOSTA,'#13#10'       PP_PROPOSTA.DATAVALIDADE,'#13#10'       PP_PROPOSTA.OR' +
      'IGEMVENDAID,'#13#10'       PP_ORIGEMVENDA.DESCRICAO L_DESCR_ORIGEMVEND' +
      'A,'#13#10'       PP_PROPOSTA.TIPOVENDAID,'#13#10'       PP_TIPOVENDA.DESCRIC' +
      'AO L_DESCR_TIPOVENDA,       '#13#10'       PP_PROPOSTA.LIBERACAO,'#13#10'   ' +
      '    PP_PROPOSTA.LIBNOME,'#13#10'       PP_PROPOSTA.LIBDATAHORA,'#13#10'     ' +
      '  PP_PROPOSTA.TRADEIN,'#13#10'       PP_PROPOSTA.ANDAMENTOPROPOSTA,'#13#10' ' +
      '      PP_PROPOSTA.CPFCNPJ,'#13#10'       PP_PROPOSTA.NOMECLIENTE,'#13#10'   ' +
      '    PP_PROPOSTA.REPRESENTSOCIO,'#13#10'       PP_PROPOSTA.OBSERVACAO,'#13 +
      #10'       PP_PROPOSTA.CARTAAPRESENTID,'#13#10'       PP_CARTAAPRESENT.DE' +
      'SCRRESUMIDA L_CARTA_APRESENT,'#13#10'       PP_CARTAAPRESENT.CARTA L_C' +
      'ARTA,'#13#10'       PP_PROPOSTA.CONDPAGTOPROPID,'#13#10'       PP_PROPOSTA.D' +
      'ESCRICAOCONDPAGTO,'#13#10'       PP_CONDPAGTOPROP.CONDPAGTOID L_CONDPA' +
      'GTOID,'#13#10'       EF_CONDPAGTO.DESCRICAO L_DESCR_CONDPGTO,'#13#10'       ' +
      'PP_PROPOSTA.OBSPROPID,'#13#10'       PP_OBSPROP.DESCRICAO L_DESCR_OBS,' +
      #13#10'       PP_PROPOSTA.GARANTIAID,'#13#10'       PP_GARANTIA.DESCRICAO L' +
      '_DESCR_GARANTIA,'#13#10'       PP_PROPOSTA.ASSISTTECID,'#13#10'       PP_ASS' +
      'ISTTEC.DESCRICAO L_DESCR_ASSISTTEC,'#13#10'       PP_PROPOSTA.INSTALAC' +
      'AOID,'#13#10'       PP_INSTALACAO.DESCRICAO L_DESCR_INSTALACAO,'#13#10'     ' +
      '  PP_PROPOSTA.PRAZOID,'#13#10'       PP_PRAZO.DESCRICAO L_DESCR_PRAZO,' +
      #13#10'       PP_PROPOSTA.VALIDADEID,'#13#10'       PP_VALIDADE.DESCRICAO L' +
      '_DESCR_VALID,'#13#10'       PP_PROPOSTA.CEPID,'#13#10'       PP_PROPOSTA.NUM' +
      'ERO,'#13#10'       PP_PROPOSTA.COMPLEMENTO,'#13#10'       PP_PROPOSTA.ENDERE' +
      'CO,'#13#10'       PP_PROPOSTA.BAIRRO,'#13#10'       PP_PROPOSTA.CIDADE,'#13#10'   ' +
      '    PP_PROPOSTA.SIGLAUFID,'#13#10'       PP_PROPOSTA.PAIS,'#13#10'       PP_' +
      'PROPOSTA.CONTATO,'#13#10'       PP_PROPOSTA.TELEFONE,'#13#10'       PP_PROPO' +
      'STA.TELEFONE2,'#13#10'       PP_PROPOSTA.CELULAR,'#13#10'       PP_PROPOSTA.' +
      'CELULAR2,'#13#10'       PP_PROPOSTA.FAX,'#13#10'       PP_PROPOSTA.EMAIL,'#13#10' ' +
      '      PP_PROPOSTA.PAGINA,'#13#10'       PP_PROPOSTA.VLRTOTALFOB,'#13#10'    ' +
      '   PP_PROPOSTA.VLRTOTALREVENDA,'#13#10'       PP_PROPOSTA.VLRTOTALNET,' +
      #13#10'       PP_PROPOSTA.VLRTOTALDESCONTO,'#13#10'       PP_PROPOSTA.VLRTO' +
      'TALTRADEIN,'#13#10'       PP_PROPOSTA.VLRLIQUIDOPROPOSTA,'#13#10'       PP_P' +
      'ROPOSTA.USUARIO'#13#10'  FROM PP_PROPOSTA PP_PROPOSTA,'#13#10'       EF_FILI' +
      'AL EF_FILIAL,'#13#10'       PP_CONDPAGTOPROP PP_CONDPAGTOPROP,'#13#10'      ' +
      ' EF_CONDPAGTO EF_CONDPAGTO,'#13#10'       PP_PRAZO PP_PRAZO,'#13#10'       P' +
      'P_VALIDADE PP_VALIDADE,'#13#10'       PP_OBSPROP PP_OBSPROP,'#13#10'       P' +
      'P_GARANTIA PP_GARANTIA,'#13#10'       PP_ASSISTTEC PP_ASSISTTEC,'#13#10'    ' +
      '   PP_INSTALACAO PP_INSTALACAO,'#13#10'       PP_CARTAAPRESENT PP_CART' +
      'AAPRESENT,'#13#10'       PP_ORIGEMVENDA PP_ORIGEMVENDA,'#13#10'       PP_TIP' +
      'OVENDA PP_TIPOVENDA'#13#10' WHERE EF_FILIAL.FILIALID(+) = PP_PROPOSTA.' +
      'FILIALID'#13#10'       AND PP_CONDPAGTOPROP.CONDPAGTOPROPID(+) = PP_PR' +
      'OPOSTA.CONDPAGTOPROPID'#13#10'       AND EF_CONDPAGTO.CONDPAGTOID(+) =' +
      ' PP_CONDPAGTOPROP.CONDPAGTOID'#13#10'       AND PP_PRAZO.PRAZOID(+) = ' +
      'PP_PROPOSTA.PRAZOID'#13#10'       AND PP_VALIDADE.VALIDADEID(+) = PP_P' +
      'ROPOSTA.VALIDADEID'#13#10'       AND PP_OBSPROP.OBSPROPID(+) = PP_PROP' +
      'OSTA.OBSPROPID'#13#10'       AND PP_GARANTIA.GARANTIAID(+) = PP_PROPOS' +
      'TA.GARANTIAID'#13#10'       AND PP_ASSISTTEC.ASSISTTECID(+) = PP_PROPO' +
      'STA.ASSISTTECID'#13#10'       AND PP_INSTALACAO.INSTALACAOID(+) = PP_P' +
      'ROPOSTA.INSTALACAOID'#13#10'       AND PP_CARTAAPRESENT.CARTAAPRESENTI' +
      'D(+) = PP_PROPOSTA.CARTAAPRESENTID'#13#10'       AND PP_ORIGEMVENDA.OR' +
      'IGEMVENDAID(+) = PP_PROPOSTA.ORIGEMVENDAID'#13#10'       AND PP_TIPOVE' +
      'NDA.TIPOVENDAID(+) = PP_PROPOSTA.TIPOVENDAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 169
    object sqldtsPropostaPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPropostaDATAPROPOSTA: TSQLTimeStampField
      FieldName = 'DATAPROPOSTA'
    end
    object sqldtsPropostaDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
    end
    object sqldtsPropostaORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_ORIGEMVENDA: TStringField
      FieldName = 'L_DESCR_ORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropostaTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_TIPOVENDA: TStringField
      FieldName = 'L_DESCR_TIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropostaLIBERACAO: TBCDField
      FieldName = 'LIBERACAO'
      Precision = 1
      Size = 0
    end
    object sqldtsPropostaLIBNOME: TStringField
      FieldName = 'LIBNOME'
    end
    object sqldtsPropostaLIBDATAHORA: TSQLTimeStampField
      FieldName = 'LIBDATAHORA'
    end
    object sqldtsPropostaTRADEIN: TBCDField
      FieldName = 'TRADEIN'
      Precision = 1
      Size = 0
    end
    object sqldtsPropostaANDAMENTOPROPOSTA: TStringField
      FieldName = 'ANDAMENTOPROPOSTA'
      Size = 1
    end
    object sqldtsPropostaCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object sqldtsPropostaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object sqldtsPropostaREPRESENTSOCIO: TStringField
      FieldName = 'REPRESENTSOCIO'
      Size = 100
    end
    object sqldtsPropostaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object sqldtsPropostaCARTAAPRESENTID: TBCDField
      FieldName = 'CARTAAPRESENTID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_CARTA_APRESENT: TStringField
      FieldName = 'L_CARTA_APRESENT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropostaL_CARTA: TMemoField
      FieldName = 'L_CARTA'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsPropostaCONDPAGTOPROPID: TBCDField
      FieldName = 'CONDPAGTOPROPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPropostaL_CONDPAGTOID: TBCDField
      FieldName = 'L_CONDPAGTOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_CONDPGTO: TStringField
      FieldName = 'L_DESCR_CONDPGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropostaOBSPROPID: TBCDField
      FieldName = 'OBSPROPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_OBS: TMemoField
      FieldName = 'L_DESCR_OBS'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsPropostaGARANTIAID: TBCDField
      FieldName = 'GARANTIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_GARANTIA: TMemoField
      FieldName = 'L_DESCR_GARANTIA'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsPropostaASSISTTECID: TBCDField
      FieldName = 'ASSISTTECID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_ASSISTTEC: TMemoField
      FieldName = 'L_DESCR_ASSISTTEC'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsPropostaINSTALACAOID: TBCDField
      FieldName = 'INSTALACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_INSTALACAO: TMemoField
      FieldName = 'L_DESCR_INSTALACAO'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsPropostaPRAZOID: TBCDField
      FieldName = 'PRAZOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_PRAZO: TStringField
      FieldName = 'L_DESCR_PRAZO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropostaVALIDADEID: TBCDField
      FieldName = 'VALIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaL_DESCR_VALID: TStringField
      FieldName = 'L_DESCR_VALID'
      ProviderFlags = []
      Size = 300
    end
    object sqldtsPropostaCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropostaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsPropostaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsPropostaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsPropostaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsPropostaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsPropostaSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsPropostaPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsPropostaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object sqldtsPropostaTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object sqldtsPropostaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object sqldtsPropostaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object sqldtsPropostaCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object sqldtsPropostaFAX: TStringField
      FieldName = 'FAX'
    end
    object sqldtsPropostaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sqldtsPropostaPAGINA: TStringField
      FieldName = 'PAGINA'
      Size = 100
    end
    object sqldtsPropostaVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropostaVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropostaVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropostaVLRTOTALDESCONTO: TBCDField
      FieldName = 'VLRTOTALDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsPropostaVLRTOTALTRADEIN: TBCDField
      FieldName = 'VLRTOTALTRADEIN'
      Precision = 14
      Size = 2
    end
    object sqldtsPropostaVLRLIQUIDOPROPOSTA: TBCDField
      FieldName = 'VLRLIQUIDOPROPOSTA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropostaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPropEquipamento: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPEQUIPAMENTO.PROPOSTAID,'#13#10'  PP_PROPEQUIPAMENTO.M' +
      'ODELOEQUIPAMENTOID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCR_PO' +
      'RT,'#13#10'  PP_CATALOGO.DESCRICAOINGLES L_DESCR_INGLES,'#13#10'  PP_CATALOG' +
      'O.GRUPOID L_GRUPOID,'#13#10'  PP_EQUIPAMENTO.DESCRICAO L_DESCRICAO_EQU' +
      'IPAMENTO,'#13#10'  PP_PROPEQUIPAMENTO.ITEMID,'#13#10'  PP_PROPEQUIPAMENTO.QU' +
      'ANTIDADE,'#13#10'  PP_PROPEQUIPAMENTO.VLRUNITARIOREVENDA,'#13#10'  PP_PROPEQ' +
      'UIPAMENTO.VLRTOTALREVENDA,'#13#10'  PP_PROPEQUIPAMENTO.PORCDESCONTO,'#13#10 +
      '  PP_PROPEQUIPAMENTO.VLRDESCONTO,'#13#10'  PP_PROPEQUIPAMENTO.VLRLIQUI' +
      'DOREVENDA,'#13#10'  PP_PROPEQUIPAMENTO.VLRUNITARIOFOB,'#13#10'  PP_PROPEQUIP' +
      'AMENTO.VLRTOTALFOB,'#13#10'  PP_PROPEQUIPAMENTO.VLRUNITARIONET,'#13#10'  PP_' +
      'PROPEQUIPAMENTO.VLRTOTALNET,'#13#10'  PP_PROPEQUIPAMENTO.OBSERVACAO,'#13#10 +
      '  PP_PROPEQUIPAMENTO.REVISAOID,'#13#10'  PP_PROPEQUIPAMENTO.USUARIO'#13#10' ' +
      ' FROM'#13#10'  PP_PROPEQUIPAMENTO PP_PROPEQUIPAMENTO,'#13#10'  PP_CATALOGO P' +
      'P_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO,'#13#10'  PP_EQUIPAMENTO PP_EQUIPAMEN' +
      'TO'#13#10' WHERE'#13#10'  PP_PROPEQUIPAMENTO.MODELOEQUIPAMENTOID = PP_CATALO' +
      'GO.MODELOID(+)'#13#10'  AND PP_PROPEQUIPAMENTO.MODELOEQUIPAMENTOID = P' +
      'P_EQUIPAMENTO.MODELOEQUIPAMENTOID(+)'#13#10'  AND EF_GRUPO.GRUPOID(+) ' +
      '= PP_CATALOGO.GRUPOID'#13#10'  AND PP_PROPEQUIPAMENTO.PROPOSTAID = :PR' +
      'OPOSTAID'
    DataSource = dsPropostaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 211
    object sqldtsPropEquipamentoPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropEquipamentoMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropEquipamentoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropEquipamentoL_DESCR_PORT: TStringField
      FieldName = 'L_DESCR_PORT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropEquipamentoL_DESCR_INGLES: TStringField
      FieldName = 'L_DESCR_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropEquipamentoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPropEquipamentoL_DESCRICAO_EQUIPAMENTO: TMemoField
      FieldName = 'L_DESCRICAO_EQUIPAMENTO'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsPropEquipamentoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsPropEquipamentoVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoPORCDESCONTO: TBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRLIQUIDOREVENDA: TBCDField
      FieldName = 'VLRLIQUIDOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropEquipamentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object sqldtsPropEquipamentoREVISAOID: TBCDField
      FieldName = 'REVISAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropEquipamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsObsProp: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_OBSPROP.OBSPROPID,'#13#10'  PP_OBSPROP.DESCRICAO,'#13#10'  PP_O' +
      'BSPROP.USUARIO'#13#10'  FROM'#13#10'  PP_OBSPROP PP_OBSPROP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 31
    Top = 422
    object sqldtsObsPropOBSPROPID: TBCDField
      FieldName = 'OBSPROPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsObsPropDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsObsPropUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvObsProp: TDataSetProvider
    DataSet = sqldtsObsProp
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 422
  end
  object dsprvGarantia: TDataSetProvider
    DataSet = sqldtsGarantia
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 119
    Top = 467
  end
  object dsprvAssistTec: TDataSetProvider
    DataSet = sqldtsAssistTec
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 65535
  end
  object dsprvInstalacao: TDataSetProvider
    DataSet = sqldtsInstalacao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 41
  end
  object sqldtsGarantia: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_GARANTIA.GARANTIAID,'#13#10'  PP_GARANTIA.DESCRICAO,'#13#10'  P' +
      'P_GARANTIA.USUARIO'#13#10'  FROM'#13#10'  PP_GARANTIA PP_GARANTIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 31
    Top = 467
    object sqldtsGarantiaGARANTIAID: TBCDField
      FieldName = 'GARANTIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsGarantiaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsGarantiaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPropComposicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPCOMPOSICAO.PROPOSTAID,'#13#10'  PP_PROPCOMPOSICAO.MOD' +
      'ELOEQUIPAMENTOID,'#13#10'  PP_PROPCOMPOSICAO.ITEMID,'#13#10'  PP_PROPCOMPOSI' +
      'CAO.MODELOCOMPONENTEID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESC' +
      'RPORTUGUES,'#13#10'  PP_CATALOGO.DESCRICAOINGLES L_DESCRINGLES,'#13#10'  PP_' +
      'CATALOGO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.DESCRICAO L_DESCR_GRUPO,' +
      #13#10'  PP_PROPCOMPOSICAO.QUANTIDADE,'#13#10'  PP_PROPCOMPOSICAO.VLRUNITAR' +
      'IOREVENDA,'#13#10'  PP_PROPCOMPOSICAO.VLRTOTALREVENDA,'#13#10'  PP_PROPCOMPO' +
      'SICAO.VLRUNITARIOFOB,'#13#10'  PP_PROPCOMPOSICAO.VLRTOTALFOB,'#13#10'  PP_PR' +
      'OPCOMPOSICAO.VLRUNITARIONET,'#13#10'  PP_PROPCOMPOSICAO.VLRTOTALNET,'#13#10 +
      '  PP_PROPCOMPOSICAO.USUARIO'#13#10'  FROM'#13#10'  PP_PROPCOMPOSICAO PP_PROP' +
      'COMPOSICAO,'#13#10'  PP_CATALOGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO'#13#10' W' +
      'HERE'#13#10'  PP_CATALOGO.MODELOID(+) = PP_PROPCOMPOSICAO.MODELOCOMPON' +
      'ENTEID'#13#10'  AND EF_GRUPO.GRUPOID (+) = PP_CATALOGO.GRUPOID'#13#10'  AND ' +
      'PP_PROPCOMPOSICAO.PROPOSTAID = :PROPOSTAID '#13#10'  AND PP_PROPCOMPOS' +
      'ICAO.MODELOEQUIPAMENTOID = :MODELOEQUIPAMENTOID '#13#10'  AND PP_PROPC' +
      'OMPOSICAO.ITEMID = :ITEMID'
    DataSource = dsPropEquipamentoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 253
    object sqldtsPropComposicaoPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropComposicaoMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropComposicaoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropComposicaoMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropComposicaoL_DESCRPORTUGUES: TStringField
      FieldName = 'L_DESCRPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropComposicaoL_DESCRINGLES: TStringField
      FieldName = 'L_DESCRINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropComposicaoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPropComposicaoL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropComposicaoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsPropComposicaoVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropComposicaoVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropComposicaoVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropComposicaoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropComposicaoVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropComposicaoVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropComposicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAssistTec: TSQLDataSet
    CommandText = 
      'SELECT PP_ASSISTTEC.ASSISTTECID,'#13#10'       PP_ASSISTTEC.DESCRICAO,' +
      #13#10'       PP_ASSISTTEC.USUARIO'#13#10'  FROM PP_ASSISTTEC PP_ASSISTTEC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 65535
    object sqldtsAssistTecASSISTTECID: TBCDField
      FieldName = 'ASSISTTECID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAssistTecDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsAssistTecUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPropBonificacao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPBONIFICACAO.PROPOSTAID,'#13#10'  PP_PROPBONIFICACAO.I' +
      'TEMID,'#13#10'  PP_PROPBONIFICACAO.BONIFICACAOID,'#13#10'  PP_BONIFICACAO.DE' +
      'SCRICAO L_DESCR_BONIF,'#13#10'  PP_PROPBONIFICACAO.DESCRICAO,'#13#10'  PP_PR' +
      'OPBONIFICACAO.VLRBONIFICACAO,'#13#10'  PP_PROPBONIFICACAO.USUARIO'#13#10'  F' +
      'ROM'#13#10'  PP_PROPBONIFICACAO PP_PROPBONIFICACAO,'#13#10'  PP_BONIFICACAO ' +
      'PP_BONIFICACAO'#13#10' WHERE'#13#10'  PP_BONIFICACAO.BONIFICACAOID(+) = PP_P' +
      'ROPBONIFICACAO.BONIFICACAOID'#13#10'  AND PP_PROPBONIFICACAO.PROPOSTAI' +
      'D = :PROPOSTAID'
    DataSource = dsPropostaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 380
    object sqldtsPropBonificacaoPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropBonificacaoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropBonificacaoBONIFICACAOID: TBCDField
      FieldName = 'BONIFICACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropBonificacaoL_DESCR_BONIF: TStringField
      FieldName = 'L_DESCR_BONIF'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropBonificacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsPropBonificacaoVLRBONIFICACAO: TBCDField
      FieldName = 'VLRBONIFICACAO'
      Precision = 14
      Size = 2
    end
    object sqldtsPropBonificacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsInstalacao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_INSTALACAO.INSTALACAOID,'#13#10'  PP_INSTALACAO.DESCRICAO' +
      ','#13#10'  PP_INSTALACAO.USUARIO'#13#10'  FROM'#13#10'  PP_INSTALACAO PP_INSTALACA' +
      'O'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 41
    object sqldtsInstalacaoINSTALACAOID: TBCDField
      FieldName = 'INSTALACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInstalacaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsInstalacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPropostaLink: TDataSource
    DataSet = sqldtsProposta
    Left = 319
    Top = 211
  end
  object dsprvProposta: TDataSetProvider
    DataSet = sqldtsProposta
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 319
    Top = 169
  end
  object sqldtsPropTradeIn: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPTRADEIN.PROPOSTAID,'#13#10'  PP_PROPTRADEIN.ITEMID,'#13#10 +
      '  PP_PROPTRADEIN.DESCRICAO,'#13#10'  PP_PROPTRADEIN.DESCRICAOIMPRESSA,' +
      ' '#13#10'  PP_PROPTRADEIN.VLRTRADEIN,'#13#10'  PP_PROPTRADEIN.USUARIO'#13#10'  FRO' +
      'M'#13#10'  PP_PROPTRADEIN PP_PROPTRADEIN'#13#10'WHERE'#13#10'   PP_PROPTRADEIN.PRO' +
      'POSTAID = :PROPOSTAID'
    DataSource = dsPropostaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 224
    Top = 422
    object sqldtsPropTradeInPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropTradeInITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropTradeInDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPropTradeInDESCRICAOIMPRESSA: TMemoField
      FieldName = 'DESCRICAOIMPRESSA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPropTradeInVLRTRADEIN: TBCDField
      FieldName = 'VLRTRADEIN'
      Precision = 14
      Size = 2
    end
    object sqldtsPropTradeInUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPropVendedor: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPVENDEDOR.PROPOSTAID,'#13#10'  PP_PROPVENDEDOR.ITEMID,' +
      #13#10'  PP_PROPVENDEDOR.VENDEDORID,'#13#10'  EF_ENTIDADE.NOME L_NOME_VENDE' +
      'DOR,'#13#10'  EF_ENTIDADE.NOMEFANTASIA L_NOME_FANTASIA,'#13#10'  PP_PROPVEND' +
      'EDOR.FUNCAOVENDAID,'#13#10'  EF_CATEGORIA.DESCRICAO L_FUNCAOVENDA,'#13#10'  ' +
      'PP_PROPVENDEDOR.USUARIO'#13#10'  FROM'#13#10'  PP_PROPVENDEDOR PP_PROPVENDED' +
      'OR,'#13#10'  EF_ENTIDADE EF_ENTIDADE,'#13#10'  EF_CATEGORIA EF_CATEGORIA'#13#10' W' +
      'HERE'#13#10'  EF_ENTIDADE.ENTIDADEID(+) = PP_PROPVENDEDOR.VENDEDORID'#13#10 +
      '  AND EF_CATEGORIA.CATEGORIAID(+) = PP_PROPVENDEDOR.FUNCAOVENDAI' +
      'D'#13#10'  AND PP_PROPVENDEDOR.PROPOSTAID = :PROPOSTAID'
    DataSource = dsPropostaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 475
    object sqldtsPropVendedorPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropVendedorITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropVendedorVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropVendedorL_NOME_VENDEDOR: TStringField
      FieldName = 'L_NOME_VENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropVendedorL_NOME_FANTASIA: TStringField
      FieldName = 'L_NOME_FANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPropVendedorFUNCAOVENDAID: TBCDField
      FieldName = 'FUNCAOVENDAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPropVendedorL_FUNCAOVENDA: TStringField
      FieldName = 'L_FUNCAOVENDA'
      Size = 100
    end
    object sqldtsPropVendedorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsEquipamentoLink: TDataSource
    DataSet = sqldtsEquipamento
    Left = 120
    Top = 84
  end
  object dsOpcionalLink: TDataSource
    DataSet = sqldtsOpcional
    Left = 120
    Top = 169
  end
  object sqldtsPropDependencia: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPDEPENDENCIA.PROPOSTAID,'#13#10'  PP_PROPDEPENDENCIA.M' +
      'ODELOEQUIPAMENTOID,'#13#10'  PP_PROPDEPENDENCIA.ITEMID,'#13#10'  PP_PROPDEPE' +
      'NDENCIA.MODELOCOMPONENTEID,'#13#10'  PP_PROPDEPENDENCIA.MODELODEPENDEN' +
      'CIAID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRPORTUGUES,'#13#10'  PP' +
      '_CATALOGO.DESCRICAOINGLES L_DESCRINGLES,'#13#10'  PP_CATALOGO.GRUPOID ' +
      'L_GRUPOID,'#13#10'  EF_GRUPO.DESCRICAO L_DESCR_GRUPO,'#13#10'  PP_PROPDEPEND' +
      'ENCIA.QUANTIDADE,'#13#10'  PP_PROPDEPENDENCIA.VLRUNITARIOREVENDA,'#13#10'  P' +
      'P_PROPDEPENDENCIA.VLRTOTALREVENDA,'#13#10'  PP_PROPDEPENDENCIA.VLRUNIT' +
      'ARIOFOB,'#13#10'  PP_PROPDEPENDENCIA.VLRTOTALFOB,'#13#10'  PP_PROPDEPENDENCI' +
      'A.VLRUNITARIONET,'#13#10'  PP_PROPDEPENDENCIA.VLRTOTALNET,'#13#10'  PP_PROPD' +
      'EPENDENCIA.USUARIO'#13#10'  FROM'#13#10'  PP_PROPDEPENDENCIA PP_PROPDEPENDEN' +
      'CIA,'#13#10'  PP_CATALOGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO'#13#10' WHERE'#13#10' ' +
      ' PP_CATALOGO.MODELOID (+) = PP_PROPDEPENDENCIA.MODELODEPENDENCIA' +
      'ID'#13#10'  AND EF_GRUPO.GRUPOID (+) = PP_CATALOGO.GRUPOID'#13#10'  AND PP_P' +
      'ROPDEPENDENCIA.PROPOSTAID = :PROPOSTAID    '#13#10'  AND PP_PROPDEPEND' +
      'ENCIA.MODELOEQUIPAMENTOID = :MODELOEQUIPAMENTOID'#13#10'  AND PP_PROPD' +
      'EPENDENCIA.ITEMID = :ITEMID'#13#10'  AND PP_PROPDEPENDENCIA.MODELOCOMP' +
      'ONENTEID = :MODELOCOMPONENTEID'
    DataSource = dsPropOpcionalLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftString
        Name = 'MODELOCOMPONENTEID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 339
    object sqldtsPropDependenciaPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropDependenciaMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropDependenciaITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropDependenciaMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropDependenciaMODELODEPENDENCIAID: TStringField
      FieldName = 'MODELODEPENDENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropDependenciaL_DESCRPORTUGUES: TStringField
      FieldName = 'L_DESCRPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropDependenciaL_DESCRINGLES: TStringField
      FieldName = 'L_DESCRINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropDependenciaL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPropDependenciaL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropDependenciaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsPropDependenciaVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropDependenciaVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropDependenciaVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropDependenciaVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropDependenciaVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropDependenciaVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropDependenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPropOpcionalLink: TDataSource
    AutoEdit = False
    DataSet = sqldtsPropOpcional
    Left = 319
    Top = 298
  end
  object sqldtsPropOpcional: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROPOPCIONAL.PROPOSTAID,'#13#10'  PP_PROPOPCIONAL.MODELOE' +
      'QUIPAMENTOID,'#13#10'  PP_PROPOPCIONAL.ITEMID,'#13#10'  PP_PROPOPCIONAL.MODE' +
      'LOCOMPONENTEID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRPORTUGU' +
      'ES,'#13#10'  PP_CATALOGO.DESCRICAOINGLES L_DESCRINGLES,'#13#10'  PP_CATALOGO' +
      '.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.DESCRICAO L_DESCR_GRUPO,'#13#10'  PP_P' +
      'ROPOPCIONAL.QUANTIDADE,'#13#10'  PP_PROPOPCIONAL.VLRUNITARIOREVENDA,'#13#10 +
      '  PP_PROPOPCIONAL.VLRTOTALREVENDA,'#13#10'  PP_PROPOPCIONAL.VLRUNITARI' +
      'OFOB,'#13#10'  PP_PROPOPCIONAL.VLRTOTALFOB,'#13#10'  PP_PROPOPCIONAL.VLRUNIT' +
      'ARIONET,'#13#10'  PP_PROPOPCIONAL.VLRTOTALNET,'#13#10'  PP_PROPOPCIONAL.USUA' +
      'RIO'#13#10'  FROM'#13#10'  PP_PROPOPCIONAL PP_PROPOPCIONAL,'#13#10'  PP_CATALOGO P' +
      'P_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO'#13#10' WHERE'#13#10'  PP_CATALOGO.MODELOID' +
      '(+) = PP_PROPOPCIONAL.MODELOCOMPONENTEID'#13#10'  AND EF_GRUPO.GRUPOID' +
      ' = PP_CATALOGO.GRUPOID'#13#10'  AND PP_PROPOPCIONAL.PROPOSTAID = :PROP' +
      'OSTAID'#13#10'  AND PP_PROPOPCIONAL.MODELOEQUIPAMENTOID = :MODELOEQUIP' +
      'AMENTOID '#13#10'  AND PP_PROPOPCIONAL.ITEMID = :ITEMID'
    DataSource = dsPropEquipamentoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROPOSTAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 223
    Top = 298
    object sqldtsPropOpcionalPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropOpcionalMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropOpcionalITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPropOpcionalMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsPropOpcionalL_DESCRPORTUGUES: TStringField
      FieldName = 'L_DESCRPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropOpcionalL_DESCRINGLES: TStringField
      FieldName = 'L_DESCRINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropOpcionalL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPropOpcionalL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPropOpcionalQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsPropOpcionalVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropOpcionalVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPropOpcionalVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropOpcionalVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPropOpcionalVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropOpcionalVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsPropOpcionalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPropEquipamentoLink: TDataSource
    DataSet = sqldtsPropEquipamento
    Left = 319
    Top = 253
  end
  object sqldtsDependencia: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_DEPENDENCIA.MODELOEQUIPAMENTOID,'#13#10'  PP_DEPENDENCIA.' +
      'MODELOCOMPONENTEID,'#13#10'  PP_DEPENDENCIA.MODELODEPENDENCIAID,'#13#10'  PP' +
      '_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,'#13#10'  PP_CATALOG' +
      'O.DESCRICAOINGLES L_DESCRICAOINGLES,'#13#10'  PP_CATALOGO.COMENTARIO L' +
      '_COMENTARIO,'#13#10'  PP_CATALOGO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.DESCR' +
      'ICAO L_DESCR_GRUPO,'#13#10'  PP_CATALOGO.IMAGEM L_IMAGEM,'#13#10'  PP_DEPEND' +
      'ENCIA.EMPRESAID,'#13#10'  PP_DEPENDENCIA.PRODUTOID,'#13#10'  EF_PRODUTO.DESC' +
      'RICAOPORTUGUES L_DESCRICAO_PORT,'#13#10'  EF_PRODUTO.DESCRICAOINGLES L' +
      '_DESCRICAO_INGLES,'#13#10'  EF_PRODUTO.ESTOQUEFISICO L_ESTOQUEFISICO,'#13 +
      #10'  PP_DEPENDENCIA.QUANTIDADE,'#13#10'  PP_DEPENDENCIA.VLRUNITARIOFOB,'#13 +
      #10'  PP_DEPENDENCIA.VLRTOTALFOB,'#13#10'  PP_DEPENDENCIA.VLRUNITARIOREVE' +
      'NDA,'#13#10'  PP_DEPENDENCIA.VLRTOTALREVENDA,'#13#10'  PP_DEPENDENCIA.VLRUNI' +
      'TARIONET,'#13#10'  PP_DEPENDENCIA.VLRTOTALNET,'#13#10'  PP_DEPENDENCIA.USUAR' +
      'IO'#13#10'  FROM'#13#10'  PP_DEPENDENCIA PP_DEPENDENCIA,'#13#10'  PP_CATALOGO PP_C' +
      'ATALOGO,'#13#10'  EF_GRUPO EF_GRUPO,'#13#10'  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13 +
      #10'  PP_CATALOGO.MODELOID = PP_DEPENDENCIA.MODELODEPENDENCIAID'#13#10'  ' +
      'AND EF_GRUPO.GRUPOID = PP_CATALOGO.GRUPOID'#13#10'  AND PP_DEPENDENCIA' +
      '.MODELOEQUIPAMENTOID =  :MODELOEQUIPAMENTOID'#13#10'  AND PP_DEPENDENC' +
      'IA.MODELOCOMPONENTEID = :MODELOCOMPONENTEID'#13#10'  AND EF_PRODUTO.EM' +
      'PRESAID(+) = PP_DEPENDENCIA.EMPRESAID  '#13#10'  AND EF_PRODUTO.PRODUT' +
      'OID(+) = PP_DEPENDENCIA.PRODUTOID'
    DataSource = dsOpcionalLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftString
        Name = 'MODELOCOMPONENTEID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 169
    object sqldtsDependenciaMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsDependenciaMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsDependenciaMODELODEPENDENCIAID: TStringField
      FieldName = 'MODELODEPENDENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsDependenciaL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDependenciaL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDependenciaL_COMENTARIO: TStringField
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDependenciaL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsDependenciaL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDependenciaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsDependenciaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsDependenciaL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDependenciaL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDependenciaL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsDependenciaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsDependenciaVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsDependenciaVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsDependenciaVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsDependenciaVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsDependenciaVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsDependenciaVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsDependenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAcessorio: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_ACESSORIO.MODELOEQUIPAMENTOID,'#13#10'  PP_ACESSORIO.MODE' +
      'LOCOMPONENTEID,'#13#10'  PP_ACESSORIO.MODELOACESSORIOID,'#13#10'  PP_CATALOG' +
      'O.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,'#13#10'  PP_CATALOGO.DESCRI' +
      'CAOINGLES L_DESCRICAOINGLES,'#13#10'  PP_CATALOGO.COMENTARIO L_COMENTA' +
      'RIO,'#13#10'  PP_CATALOGO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.DESCRICAO L_D' +
      'ESCR_GRUPO,'#13#10'  PP_CATALOGO.IMAGEM L_IMAGEM,'#13#10'  PP_ACESSORIO.EMPR' +
      'ESAID,'#13#10'  PP_ACESSORIO.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGU' +
      'ES L_DESCRICAO_PORT,'#13#10'  EF_PRODUTO.DESCRICAOINGLES L_DESCRICAO_I' +
      'NGLES,'#13#10'  EF_PRODUTO.ESTOQUEFISICO L_ESTOQUEFISICO,'#13#10'  PP_ACESSO' +
      'RIO.QUANTIDADE,'#13#10'  PP_ACESSORIO.VLRUNITARIOFOB,'#13#10'  PP_ACESSORIO.' +
      'VLRTOTALFOB,'#13#10'  PP_ACESSORIO.VLRUNITARIOREVENDA,'#13#10'  PP_ACESSORIO' +
      '.VLRTOTALREVENDA,'#13#10'  PP_ACESSORIO.VLRUNITARIONET,'#13#10'  PP_ACESSORI' +
      'O.VLRTOTALNET,'#13#10'  PP_ACESSORIO.USUARIO'#13#10'  FROM'#13#10'  PP_ACESSORIO P' +
      'P_ACESSORIO,'#13#10'  PP_CATALOGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO,'#13#10 +
      '  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13#10'  PP_CATALOGO.MODELOID = PP_ACE' +
      'SSORIO.MODELOACESSORIOID'#13#10'  AND EF_GRUPO.GRUPOID = PP_CATALOGO.G' +
      'RUPOID'#13#10'  AND PP_ACESSORIO.MODELOEQUIPAMENTOID =  :MODELOEQUIPAM' +
      'ENTOID'#13#10'  AND PP_ACESSORIO.MODELOCOMPONENTEID = :MODELOCOMPONENT' +
      'EID'#13#10'  AND EF_PRODUTO.EMPRESAID(+) = PP_ACESSORIO.EMPRESAID  '#13#10' ' +
      ' AND EF_PRODUTO.PRODUTOID(+) = PP_ACESSORIO.PRODUTOID'
    DataSource = dsOpcionalLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftString
        Name = 'MODELOCOMPONENTEID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 211
    object sqldtsAcessorioMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsAcessorioMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsAcessorioMODELOACESSORIOID: TStringField
      FieldName = 'MODELOACESSORIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsAcessorioL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcessorioL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcessorioL_COMENTARIO: TStringField
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcessorioL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcessorioL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcessorioEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcessorioPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcessorioL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcessorioL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcessorioL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsAcessorioQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsAcessorioVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsAcessorioVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsAcessorioVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsAcessorioVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsAcessorioVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsAcessorioVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsAcessorioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsIncompativel: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_INCOMPATIVEL.MODELOEQUIPAMENTOID,'#13#10'  PP_INCOMPATIVE' +
      'L.MODELOCOMPONENTEID,'#13#10'  PP_INCOMPATIVEL.MODELOINCOMPATIVELID,'#13#10 +
      '  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,'#13#10'  PP_CAT' +
      'ALOGO.DESCRICAOINGLES L_DESCRICAOINGLES,'#13#10'  PP_CATALOGO.COMENTAR' +
      'IO L_COMENTARIO,'#13#10'  PP_CATALOGO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.D' +
      'ESCRICAO L_DESCR_GRUPO,'#13#10'  PP_CATALOGO.IMAGEM L_IMAGEM,'#13#10'  PP_IN' +
      'COMPATIVEL.EMPRESAID,'#13#10'  PP_INCOMPATIVEL.PRODUTOID,'#13#10'  EF_PRODUT' +
      'O.DESCRICAOPORTUGUES L_DESCRICAO_PORT,'#13#10'  EF_PRODUTO.DESCRICAOIN' +
      'GLES L_DESCRICAO_INGLES,'#13#10'  EF_PRODUTO.ESTOQUEFISICO L_ESTOQUEFI' +
      'SICO,'#13#10'  PP_INCOMPATIVEL.QUANTIDADE,'#13#10'  PP_INCOMPATIVEL.VLRUNITA' +
      'RIOFOB,'#13#10'  PP_INCOMPATIVEL.VLRTOTALFOB,'#13#10'  PP_INCOMPATIVEL.VLRUN' +
      'ITARIOREVENDA,'#13#10'  PP_INCOMPATIVEL.VLRTOTALREVENDA,'#13#10'  PP_INCOMPA' +
      'TIVEL.VLRUNITARIONET,'#13#10'  PP_INCOMPATIVEL.VLRTOTALNET,'#13#10'  PP_INCO' +
      'MPATIVEL.USUARIO'#13#10'  FROM'#13#10'  PP_INCOMPATIVEL PP_INCOMPATIVEL,'#13#10'  ' +
      'PP_CATALOGO PP_CATALOGO,'#13#10'  EF_GRUPO EF_GRUPO,'#13#10'  EF_PRODUTO EF_' +
      'PRODUTO'#13#10' WHERE'#13#10'  PP_CATALOGO.MODELOID = PP_INCOMPATIVEL.MODELO' +
      'INCOMPATIVELID'#13#10'  AND EF_GRUPO.GRUPOID = PP_CATALOGO.GRUPOID'#13#10'  ' +
      'AND PP_INCOMPATIVEL.MODELOEQUIPAMENTOID =  :MODELOEQUIPAMENTOID'#13 +
      #10'  AND PP_INCOMPATIVEL.MODELOCOMPONENTEID = :MODELOCOMPONENTEID'#13 +
      #10'  AND EF_PRODUTO.EMPRESAID(+) = PP_INCOMPATIVEL.EMPRESAID  '#13#10'  ' +
      'AND EF_PRODUTO.PRODUTOID(+) = PP_INCOMPATIVEL.PRODUTOID'
    DataSource = dsOpcionalLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'MODELOEQUIPAMENTOID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftString
        Name = 'MODELOCOMPONENTEID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 253
    object sqldtsIncompativelMODELOEQUIPAMENTOID: TStringField
      FieldName = 'MODELOEQUIPAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsIncompativelMODELOCOMPONENTEID: TStringField
      FieldName = 'MODELOCOMPONENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsIncompativelMODELOINCOMPATIVELID: TStringField
      FieldName = 'MODELOINCOMPATIVELID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsIncompativelL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsIncompativelL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsIncompativelL_COMENTARIO: TStringField
      FieldName = 'L_COMENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsIncompativelL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsIncompativelL_DESCR_GRUPO: TStringField
      FieldName = 'L_DESCR_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsIncompativelEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsIncompativelPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsIncompativelL_DESCRICAO_PORT: TStringField
      FieldName = 'L_DESCRICAO_PORT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsIncompativelL_DESCRICAO_INGLES: TStringField
      FieldName = 'L_DESCRICAO_INGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsIncompativelL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsIncompativelQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsIncompativelVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsIncompativelVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsIncompativelVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsIncompativelVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsIncompativelVLRUNITARIONET: TBCDField
      FieldName = 'VLRUNITARIONET'
      Precision = 14
      Size = 2
    end
    object sqldtsIncompativelVLRTOTALNET: TBCDField
      FieldName = 'VLRTOTALNET'
      Precision = 14
      Size = 2
    end
    object sqldtsIncompativelUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOrigemVenda: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_ORIGEMVENDA.ORIGEMVENDAID,'#13#10'  PP_ORIGEMVENDA.DESCRI' +
      'CAO,'#13#10'  PP_ORIGEMVENDA.USUARIO'#13#10'  FROM'#13#10'  PP_ORIGEMVENDA PP_ORIG' +
      'EMVENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 65535
    object sqldtsOrigemVendaORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOrigemVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsOrigemVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvOrigemVenda: TDataSetProvider
    DataSet = sqldtsOrigemVenda
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 531
    Top = 65535
  end
  object dsprvTipoVenda: TDataSetProvider
    DataSet = sqldtsTipoVenda
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 531
    Top = 41
  end
  object sqldtsTipoVenda: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_TIPOVENDA.TIPOVENDAID,'#13#10'  PP_TIPOVENDA.DESCRICAO,'#13#10 +
      '  PP_TIPOVENDA.USUARIO'#13#10'  FROM'#13#10'  PP_TIPOVENDA PP_TIPOVENDA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 41
    object sqldtsTipoVendaTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsClasseVendedor: TSQLDataSet
    CommandText = 
      'SELECT PP_CLASSEVENDEDOR.CLASSEVENDEDORID,'#13#10'       PP_CLASSEVEND' +
      'EDOR.DESCRICAO,'#13#10'       PP_CLASSEVENDEDOR.EXIBIRNIVELVENDA,'#13#10'   ' +
      '    PP_CLASSEVENDEDOR.NIVELVENDEDORID,       '#13#10'       PP_CLASSEV' +
      'ENDEDOR.USUARIO'#13#10'  FROM PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 84
    object sqldtsClasseVendedorCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsClasseVendedorDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsClasseVendedorEXIBIRNIVELVENDA: TBCDField
      FieldName = 'EXIBIRNIVELVENDA'
      Precision = 1
      Size = 0
    end
    object sqldtsClasseVendedorNIVELVENDEDORID: TBCDField
      FieldName = 'NIVELVENDEDORID'
      Precision = 1
      Size = 0
    end
    object sqldtsClasseVendedorUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvClasseVendedor: TDataSetProvider
    DataSet = sqldtsClasseVendedor
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 531
    Top = 84
  end
  object sqldtsClasseVendTipoVenda: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_CLASSEVENDTIPOVENDA.CLASSEVENDEDORID,'#13#10'  PP_CLASSEV' +
      'ENDTIPOVENDA.TIPOVENDAID,'#13#10'  PP_CLASSEVENDTIPOVENDA.PERCENTUAL,'#13 +
      #10'  PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVENDA,'#13#10'  PP_CLASSEVEND' +
      'TIPOVENDA.USUARIO'#13#10'  FROM'#13#10'  PP_CLASSEVENDTIPOVENDA PP_CLASSEVEN' +
      'DTIPOVENDA,'#13#10'  PP_TIPOVENDA PP_TIPOVENDA'#13#10' WHERE'#13#10'  PP_TIPOVENDA' +
      '.TIPOVENDAID(+) = PP_CLASSEVENDTIPOVENDA.TIPOVENDAID'#13#10'  AND PP_C' +
      'LASSEVENDTIPOVENDA.CLASSEVENDEDORID = :CLASSEVENDEDORID'
    DataSource = dsClasseVendedorLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'CLASSEVENDEDORID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 126
    object sqldtsClasseVendTipoVendaCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsClasseVendTipoVendaTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsClasseVendTipoVendaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 14
      Size = 2
    end
    object sqldtsClasseVendTipoVendaL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseVendTipoVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsClasseVendaRegiao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_CLASSEVENDREGIAO.CLASSEVENDEDORID,'#13#10'  PP_CLASSEVEND' +
      'REGIAO.CEPID,'#13#10'  CP_BAIRROS.NOMELOCALIDADE L_NOMECIDADE,'#13#10'  CP_B' +
      'AIRROS.BAIRROCEPID L_BAIRROCEP,'#13#10'  CP_BAIRROS.NOMEBAIRRO L_NOMEB' +
      'AIRRO,'#13#10'  CP_BAIRROS.SIGLAUFID L_SIGLAUFID,'#13#10'  CP_LOCALIDADES.SI' +
      'GLAPAISID L_SIGLAPAISID,  '#13#10'  PP_CLASSEVENDREGIAO.USUARIO'#13#10'  FRO' +
      'M'#13#10'  PP_CLASSEVENDREGIAO PP_CLASSEVENDREGIAO,'#13#10'  CP_LOCALIDADES ' +
      'CP_LOCALIDADES,'#13#10'  CP_BAIRROS CP_BAIRROS'#13#10' WHERE'#13#10'  CP_BAIRROS.S' +
      'IGLAUFID = CP_LOCALIDADES.SIGLAUFID'#13#10'  AND PP_CLASSEVENDREGIAO.C' +
      'EPID = CP_BAIRROS.LOCALIDADECEPID'#13#10'  AND PP_CLASSEVENDREGIAO.CLA' +
      'SSEVENDEDORID = :CLASSEVENDEDORID'
    DataSource = dsClasseVendedorLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'CLASSEVENDEDORID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 169
    object sqldtsClasseVendaRegiaoCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsClasseVendaRegiaoCEPID: TBCDField
      FieldName = 'CEPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsClasseVendaRegiaoL_NOMECIDADE: TStringField
      FieldName = 'L_NOMECIDADE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsClasseVendaRegiaoL_BAIRROCEP: TBCDField
      FieldName = 'L_BAIRROCEP'
      ProviderFlags = []
      Precision = 5
      Size = 0
    end
    object sqldtsClasseVendaRegiaoL_NOMEBAIRRO: TStringField
      FieldName = 'L_NOMEBAIRRO'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsClasseVendaRegiaoL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsClasseVendaRegiaoL_SIGLAPAISID: TStringField
      FieldName = 'L_SIGLAPAISID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsClasseVendaRegiaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsClasseVendedorLink: TDataSource
    DataSet = sqldtsClasseVendedor
    Left = 531
    Top = 126
  end
  object sqldtsTabFinanceira: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_TABFINANCEIRA.TABFINANCEIRAID,'#13#10'  PP_TABFINANCEIRA.' +
      'DESCRICAO,'#13#10'  PP_TABFINANCEIRA.USUARIO'#13#10'  FROM'#13#10'  PP_TABFINANCEI' +
      'RA PP_TABFINANCEIRA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 573
    object sqldtsTabFinanceiraTABFINANCEIRAID: TBCDField
      FieldName = 'TABFINANCEIRAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTabFinanceiraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTabFinanceiraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTabFinanceira: TDataSetProvider
    DataSet = sqldtsTabFinanceira
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 123
    Top = 573
  end
  object sqldtsPedVend: TSQLDataSet
    CommandText = 
      'SELECT PP_PEDVEND.PEDVENDID,'#13#10'       PP_PEDVEND.DATAPEDIDO,'#13#10'   ' +
      '    PP_PEDVEND.DATACHEGADA,'#13#10'       PP_PEDVEND.PEDVENDREFID,'#13#10'  ' +
      '     PP_PEDVEND.PROPOSTAID,'#13#10'       PP_PEDVEND.NUMPEDVENDEDORID,' +
      #13#10'       PP_PEDVEND.CONTRATOID,'#13#10'       PP_PEDVEND.PROPPEDVENDED' +
      'ORID,'#13#10'       PP_PEDVEND.ORIGEMVENDAID,'#13#10'       PP_ORIGEMVENDA.D' +
      'ESCRICAO L_DESCR_ORIGEMVENDA,'#13#10'       PP_PEDVEND.TIPOVENDAID,'#13#10' ' +
      '      PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVENDA,'#13#10'       PP_PE' +
      'DVEND.EMPRESAID,'#13#10'       PP_PEDVEND.CANCELADO,'#13#10'       PP_PEDVEN' +
      'D.PAGAMENTOCOMISSAO,       '#13#10'       PP_PEDVEND.CLIENTEID,'#13#10'     ' +
      '  EF_EMPRESA.NOMEFANTASIA L_NOMEEMPRESA,'#13#10'       EF_ENTIDADE.NOM' +
      'E L_NOMECLIENTE,'#13#10'       EF_ENTIDADE.CPFCNPJ L_CPFCNPJ,'#13#10'       ' +
      'EF_ENTIDADE.INSCRESTADUAL L_INSCRESTADUAL,'#13#10'       PP_PEDVEND.DE' +
      'STINATARIOID,'#13#10'       EF_ENT_DEST.NOME L_NOMEDESTINATARIO,'#13#10'    ' +
      '   EF_ENT_DEST.CPFCNPJ L_CPFCNPJDESTINATARIO,'#13#10'       PP_PEDVEND' +
      '.CEPORIGID,'#13#10'       PP_PEDVEND.NUMEROORIG,'#13#10'       PP_PEDVEND.CO' +
      'MPLEMENTOORIG,'#13#10'       PP_PEDVEND.ENDERECOORIG,'#13#10'       PP_PEDVE' +
      'ND.BAIRROORIG,'#13#10'       PP_PEDVEND.CIDADEORIG,'#13#10'       PP_PEDVEND' +
      '.SIGLAUFORIGID,'#13#10'       PP_PEDVEND.PAISORIG,'#13#10'       PP_PEDVEND.' +
      'TELEFONEORIG,'#13#10'       PP_PEDVEND.CONTATOORIG,'#13#10'       PP_PEDVEND' +
      '.LIBCHEFIA,'#13#10'       PP_PEDVEND.LIBCHEFIANOME,'#13#10'       PP_PEDVEND' +
      '.LIBCHEFIADATA,  '#13#10'       PP_PEDVEND.CONDPAGTOPROPID,'#13#10'       PP' +
      '_CONDPAGTOPROP.DESCRICAOPAGTO L_DESCR_FOB,'#13#10'       PP_PEDVEND.VL' +
      'RFOB,'#13#10'       PP_PEDVEND.CONDINTERVID,'#13#10'       PP_CONDPAGTOINTER' +
      'V.DESCRICAOPAGTO L_DESCR_INTERV,'#13#10'       PP_PEDVEND.DESCRICAOINT' +
      'ERV,'#13#10'       PP_PEDVEND.VLRINTERVENIENCIA,'#13#10'       PP_PEDVEND.CO' +
      'NDEMPRSUPLID,'#13#10'       PP_CONDPAGTOSUPL.DESCRICAOPAGTO L_DESCR_SU' +
      'PL,'#13#10'       PP_PEDVEND.VLREMPRSUPLEMENTAR,'#13#10'       PP_PEDVEND.BO' +
      'NIFICACAO,'#13#10'       PP_PEDVEND.VLRBONIFICACAO,'#13#10'       PP_PEDVEND' +
      '.OBSERVACAO,'#13#10'       PP_PEDVEND.TIPODESPESA,'#13#10'       PP_PEDVEND.' +
      'VLRDESPESA,'#13#10'       PP_PEDVEND.PORCDESPESA,'#13#10'       PP_PEDVEND.P' +
      'ORCVENDA,'#13#10'       PP_PEDVEND.PORCFOB,'#13#10'       PP_PEDVEND.NOMEAPA' +
      'RELHOINTERV,'#13#10'       PP_PEDVEND.VLRAPARELHOINTERV,'#13#10'       PP_PE' +
      'DVEND.VLRFRETEINTERNACIONAL,'#13#10'       PP_PEDVEND.CONDPAGTOID,'#13#10'  ' +
      '     EF_CONDPAGTO.DESCRICAO L_DESCRICAOCONDPAGTO,'#13#10'       PP_PED' +
      'VEND.NATUREZAOPID,'#13#10'       EF_NATUREZAOP.CFOP L_CFOP,'#13#10'       EF' +
      '_NATUREZAOP.DESCRICAOOPERACAOUSUARIO L_DESCRICAOUSUARIO,'#13#10'      ' +
      ' PP_PEDVEND.PDSID,'#13#10'       PP_PEDVEND.DATAPEDIDOPDSID,'#13#10'       E' +
      'F_NFS.NFSID L_NFSID,'#13#10'       EF_NFS.DATAEMISSAOID L_DATAEMISSAOI' +
      'D,'#13#10'       PP_PEDVEND.VLRTOTALINTERVCRED,'#13#10'       PP_PEDVEND.VLR' +
      'TOTALINTERVDEB,'#13#10'       PP_PEDVEND.VLRTOTALVENDA,'#13#10'       PP_PED' +
      'VEND.VLRTOTALGERAL,'#13#10'       PP_PEDVEND.USUARIO'#13#10'  FROM PP_PEDVEN' +
      'D PP_PEDVEND,'#13#10'       PP_ORIGEMVENDA PP_ORIGEMVENDA,'#13#10'       PP_' +
      'TIPOVENDA PP_TIPOVENDA,'#13#10'       EF_EMPRESA EF_EMPRESA,'#13#10'       E' +
      'F_ENTIDADE EF_ENTIDADE,'#13#10'       EF_ENTIDADE EF_ENT_DEST,'#13#10'      ' +
      ' PP_CONDPAGTOPROP PP_CONDPAGTOPROP,'#13#10'       PP_CONDPAGTOPROP PP_' +
      'CONDPAGTOINTERV,'#13#10'       PP_CONDPAGTOPROP PP_CONDPAGTOSUPL,'#13#10'   ' +
      '    EF_CONDPAGTO EF_CONDPAGTO,'#13#10'       EF_NATUREZAOP,'#13#10'       EF' +
      '_NFS EF_NFS'#13#10' WHERE PP_ORIGEMVENDA.ORIGEMVENDAID(+) = PP_PEDVEND' +
      '.ORIGEMVENDAID'#13#10'       AND PP_TIPOVENDA.TIPOVENDAID(+) = PP_PEDV' +
      'END.TIPOVENDAID'#13#10'       AND EF_EMPRESA.EMPRESAID = PP_PEDVEND.EM' +
      'PRESAID'#13#10'       AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEND.CLIEN' +
      'TEID'#13#10'       AND EF_ENT_DEST.ENTIDADEID(+) = PP_PEDVEND.DESTINAT' +
      'ARIOID'#13#10'       AND PP_CONDPAGTOPROP.CONDPAGTOPROPID(+) = PP_PEDV' +
      'END.CONDPAGTOPROPID'#13#10'       AND PP_CONDPAGTOINTERV.CONDPAGTOPROP' +
      'ID(+) = PP_PEDVEND.CONDINTERVID'#13#10'       AND PP_CONDPAGTOSUPL.CON' +
      'DPAGTOPROPID(+) = PP_PEDVEND.CONDEMPRSUPLID'#13#10'       AND EF_CONDP' +
      'AGTO.CONDPAGTOID(+) = PP_PEDVEND.CONDPAGTOID'#13#10'       AND EF_NATU' +
      'REZAOP.NATUREZAOPID(+) = PP_PEDVEND.NATUREZAOPID'#13#10'       AND PP_' +
      'PEDVEND.EMPRESAID = EF_NFS.EMPRESAID(+)'#13#10'       AND PP_PEDVEND.P' +
      'DSID = EF_NFS.PDSID(+)'#13#10'       AND PP_PEDVEND.DATAPEDIDOPDSID = ' +
      'EF_NFS.DATAPEDIDO(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 255
    object sqldtsPedVendPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsPedVendDATACHEGADA: TSQLTimeStampField
      FieldName = 'DATACHEGADA'
    end
    object sqldtsPedVendPEDVENDREFID: TStringField
      FieldName = 'PEDVENDREFID'
      Size = 9
    end
    object sqldtsPedVendPROPOSTAID: TBCDField
      FieldName = 'PROPOSTAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
    end
    object sqldtsPedVendORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendPROPPEDVENDEDORID: TStringField
      FieldName = 'PROPPEDVENDEDORID'
      Size = 25
    end
    object sqldtsPedVendCONTRATOID: TStringField
      FieldName = 'CONTRATOID'
      Size = 25
    end
    object sqldtsPedVendL_DESCR_ORIGEMVENDA: TStringField
      FieldName = 'L_DESCR_ORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_NOMEEMPRESA: TStringField
      FieldName = 'L_NOMEEMPRESA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsPedVendCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object sqldtsPedVendPAGAMENTOCOMISSAO: TBCDField
      FieldName = 'PAGAMENTOCOMISSAO'
      Precision = 1
      Size = 0
    end
    object sqldtsPedVendCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsPedVendL_INSCRESTADUAL: TStringField
      FieldName = 'L_INSCRESTADUAL'
      ProviderFlags = []
    end
    object sqldtsPedVendDESTINATARIOID: TBCDField
      FieldName = 'DESTINATARIOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_NOMEDESTINATARIO: TStringField
      FieldName = 'L_NOMEDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendL_CPFCNPJDESTINATARIO: TStringField
      FieldName = 'L_CPFCNPJDESTINATARIO'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsPedVendCEPORIGID: TBCDField
      FieldName = 'CEPORIGID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendNUMEROORIG: TStringField
      FieldName = 'NUMEROORIG'
    end
    object sqldtsPedVendCOMPLEMENTOORIG: TStringField
      FieldName = 'COMPLEMENTOORIG'
    end
    object sqldtsPedVendENDERECOORIG: TStringField
      FieldName = 'ENDERECOORIG'
      Size = 100
    end
    object sqldtsPedVendBAIRROORIG: TStringField
      FieldName = 'BAIRROORIG'
      Size = 72
    end
    object sqldtsPedVendCIDADEORIG: TStringField
      FieldName = 'CIDADEORIG'
      Size = 72
    end
    object sqldtsPedVendSIGLAUFORIGID: TStringField
      FieldName = 'SIGLAUFORIGID'
      Size = 2
    end
    object sqldtsPedVendPAISORIG: TStringField
      FieldName = 'PAISORIG'
      Size = 72
    end
    object sqldtsPedVendTELEFONEORIG: TStringField
      FieldName = 'TELEFONEORIG'
      Size = 70
    end
    object sqldtsPedVendCONTATOORIG: TStringField
      FieldName = 'CONTATOORIG'
      Size = 40
    end
    object sqldtsPedVendLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsPedVendLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsPedVendLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsPedVendCONDPAGTOPROPID: TBCDField
      FieldName = 'CONDPAGTOPROPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_DESCR_FOB: TStringField
      FieldName = 'L_DESCR_FOB'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCONDINTERVID: TBCDField
      FieldName = 'CONDINTERVID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_DESCR_INTERV: TStringField
      FieldName = 'L_DESCR_INTERV'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendDESCRICAOINTERV: TStringField
      FieldName = 'DESCRICAOINTERV'
      Size = 100
    end
    object sqldtsPedVendVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCONDEMPRSUPLID: TBCDField
      FieldName = 'CONDEMPRSUPLID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_DESCR_SUPL: TStringField
      FieldName = 'L_DESCR_SUPL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendVLREMPRSUPLEMENTAR: TBCDField
      FieldName = 'VLREMPRSUPLEMENTAR'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendBONIFICACAO: TMemoField
      FieldName = 'BONIFICACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPedVendVLRBONIFICACAO: TBCDField
      FieldName = 'VLRBONIFICACAO'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPedVendTIPODESPESA: TStringField
      FieldName = 'TIPODESPESA'
      Size = 1
    end
    object sqldtsPedVendVLRDESPESA: TBCDField
      FieldName = 'VLRDESPESA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendPORCDESPESA: TFMTBCDField
      FieldName = 'PORCDESPESA'
      Precision = 14
      Size = 6
    end
    object sqldtsPedVendPORCVENDA: TFMTBCDField
      FieldName = 'PORCVENDA'
      Precision = 14
      Size = 6
    end
    object sqldtsPedVendPORCFOB: TFMTBCDField
      FieldName = 'PORCFOB'
      Precision = 14
      Size = 6
    end
    object sqldtsPedVendNOMEAPARELHOINTERV: TStringField
      FieldName = 'NOMEAPARELHOINTERV'
      Size = 100
    end
    object sqldtsPedVendVLRAPARELHOINTERV: TBCDField
      FieldName = 'VLRAPARELHOINTERV'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendVLRFRETEINTERNACIONAL: TBCDField
      FieldName = 'VLRFRETEINTERNACIONAL'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_DESCRICAOCONDPAGTO: TStringField
      FieldName = 'L_DESCRICAOCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsPedVendL_DESCRICAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendDATAPEDIDOPDSID: TSQLTimeStampField
      FieldName = 'DATAPEDIDOPDSID'
    end
    object sqldtsPedVendL_NFSID: TBCDField
      FieldName = 'L_NFSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendL_DATAEMISSAOID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAOID'
      ProviderFlags = []
    end
    object sqldtsPedVendVLRTOTALINTERVCRED: TBCDField
      FieldName = 'VLRTOTALINTERVCRED'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendVLRTOTALINTERVDEB: TBCDField
      FieldName = 'VLRTOTALINTERVDEB'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendVLRTOTALVENDA: TBCDField
      FieldName = 'VLRTOTALVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendVLRTOTALGERAL: TBCDField
      FieldName = 'VLRTOTALGERAL'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvPedVend: TDataSetProvider
    DataSet = sqldtsPedVend
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 531
    Top = 255
  end
  object dsPedVendLink: TDataSource
    DataSet = sqldtsPedVend
    Left = 531
    Top = 297
  end
  object sqldtsPedVendItem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PEDVENDITEM.PEDVENDID,'#13#10'  PP_PEDVENDITEM.ITEMID,'#13#10' ' +
      ' PP_PEDVENDITEM.SERIEID,'#13#10'  PP_PEDVENDITEM.MODELOID,'#13#10'  PP_PEDVE' +
      'NDITEM.VOLTAGEM,'#13#10'  PP_PEDVENDITEM.QUANTIDADE,'#13#10'  PP_PEDVENDITEM' +
      '.VLRFOB,'#13#10'  PP_PEDVENDITEM.VLRFOBREVENDA,'#13#10'  PP_PEDVENDITEM.VLRI' +
      'NTERVENIENCIA,'#13#10'  PP_PEDVENDITEM.VLRCOMISSAO,'#13#10'  PP_PEDVENDITEM.' +
      'EMPRESAID,'#13#10'  PP_PEDVENDITEM.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOP' +
      'ORTUGUES L_DESCRICAOPORTUGUES,'#13#10'  EF_PRODUTO.PARTNUMBERID L_PART' +
      'NUMBERID,'#13#10'  EF_PRODUTO.GRUPOID L_GRUPOID,'#13#10'  PP_PEDVENDITEM.EST' +
      'OQUEUTILIZADO,'#13#10'  PP_PEDVENDITEM.VLRPRECOUNITARIO,'#13#10'  PP_PEDVEND' +
      'ITEM.VLRPRECOTOTAL,'#13#10'  PP_PEDVENDITEM.NXID,'#13#10'  PP_PEDVENDITEM.IN' +
      'VOICEID,'#13#10'  PP_PEDVENDITEM.CEPINSTID,'#13#10'  PP_PEDVENDITEM.NUMEROIN' +
      'ST,'#13#10'  PP_PEDVENDITEM.COMPLEMENTOINST,'#13#10'  PP_PEDVENDITEM.ENDEREC' +
      'OINST,'#13#10'  PP_PEDVENDITEM.BAIRROINST,'#13#10'  PP_PEDVENDITEM.CIDADEINS' +
      'T,'#13#10'  PP_PEDVENDITEM.SIGLAUFINSTID,'#13#10'  PP_PEDVENDITEM.TELEFONEIN' +
      'ST,'#13#10'  PP_PEDVENDITEM.CONTATOINST,'#13#10'  PP_PEDVENDITEM.EMBJAPAOID,' +
      #13#10'  PP_PEDVENDITEM.LIDISPENSA,'#13#10'  PP_PEDVENDITEM.LIDATATRANSMISS' +
      'AO,'#13#10'  PP_PEDVENDITEM.LIDATAAPROVACAO,'#13#10'  PP_PEDVENDITEM.LINUMER' +
      'O,'#13#10'  PP_PEDVENDITEM.LIDATAVALIDADE,'#13#10'  PP_PEDVENDITEM.LIVLRCOMI' +
      'SSAO,'#13#10'  PP_PEDVENDITEM.LIADITIVO1,'#13#10'  PP_PEDVENDITEM.LIDATAVALI' +
      'DADE1,'#13#10'  PP_PEDVENDITEM.LIADITIVO2,'#13#10'  PP_PEDVENDITEM.LIDATAVAL' +
      'IDADE2,'#13#10'  PP_PEDVENDITEM.LIADITIVO3,'#13#10'  PP_PEDVENDITEM.LIDATAVA' +
      'LIDADE3,'#13#10'  PP_PEDVENDITEM.LIADITIVO4,'#13#10'  PP_PEDVENDITEM.LIDATAV' +
      'ALIDADE4,'#13#10'  PP_PEDVENDITEM.RTINVOICEID,'#13#10'  PP_PEDVENDITEM.RTCLI' +
      'ENTEID,'#13#10'  PP_PEDVENDITEM.RTDATAEMBARQUE,  '#13#10'  PP_PEDVENDITEM.RT' +
      'OBSERVACAO,'#13#10'  PP_PEDVENDITEM.RTCABOK7,'#13#10'  PP_PEDVENDITEM.RTCABO' +
      'VIDEOPRINTER,'#13#10'  PP_PEDVENDITEM.RTCABOMONITORAUXILIAR,'#13#10'  PP_PED' +
      'VENDITEM.RTMULTIFORMATO,'#13#10'  PP_PEDVENDITEM.RTESTABILIZADOR,'#13#10'  P' +
      'P_PEDVENDITEM.RTDATASAIDA,'#13#10'  PP_PEDVENDITEM.RTTRANSPORTADORID,'#13 +
      #10'  EF_ENTIDADE.NOME L_NOMETRANSPORTADOR,'#13#10'  PP_PEDVENDITEM.RTOSI' +
      'D,'#13#10'  PP_PEDVENDITEM.RTIMPRESSO,'#13#10'  PP_PEDVENDITEM.RTDATAPREVCHE' +
      'GADA,'#13#10'  PP_PEDVENDITEM.RTUSUARIO,'#13#10'  PP_PEDVENDITEM.RTLIBERADO,' +
      #13#10'  PP_PEDVENDITEM.USUARIO'#13#10'  FROM'#13#10'  PP_PEDVENDITEM PP_PEDVENDI' +
      'TEM,'#13#10'  EF_PRODUTO EF_PRODUTO,'#13#10'  EF_ENTIDADE'#13#10' WHERE'#13#10'  EF_PROD' +
      'UTO.EMPRESAID(+) = PP_PEDVENDITEM.EMPRESAID'#13#10'  AND EF_PRODUTO.PR' +
      'ODUTOID(+) = PP_PEDVENDITEM.PRODUTOID'#13#10'  AND EF_ENTIDADE.ENTIDAD' +
      'EID(+) = PP_PEDVENDITEM.RTTRANSPORTADORID'#13#10'AND PP_PEDVENDITEM.PE' +
      'DVENDID = :PEDVENDID'
    DataSource = dsPedVendLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 300
    object sqldtsPedVendItemPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsPedVendItemMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsPedVendItemVOLTAGEM: TStringField
      FieldName = 'VOLTAGEM'
      Size = 3
    end
    object sqldtsPedVendItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemVLRFOBREVENDA: TBCDField
      FieldName = 'VLRFOBREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemVLRCOMISSAO: TBCDField
      FieldName = 'VLRCOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendItemL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsPedVendItemL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsPedVendItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemNXID: TStringField
      FieldName = 'NXID'
      Size = 6
    end
    object sqldtsPedVendItemINVOICEID: TStringField
      FieldName = 'INVOICEID'
      Size = 30
    end
    object sqldtsPedVendItemCEPINSTID: TBCDField
      FieldName = 'CEPINSTID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemNUMEROINST: TStringField
      FieldName = 'NUMEROINST'
    end
    object sqldtsPedVendItemCOMPLEMENTOINST: TStringField
      FieldName = 'COMPLEMENTOINST'
    end
    object sqldtsPedVendItemENDERECOINST: TStringField
      FieldName = 'ENDERECOINST'
      Size = 100
    end
    object sqldtsPedVendItemBAIRROINST: TStringField
      FieldName = 'BAIRROINST'
      Size = 72
    end
    object sqldtsPedVendItemCIDADEINST: TStringField
      FieldName = 'CIDADEINST'
      Size = 72
    end
    object sqldtsPedVendItemSIGLAUFINSTID: TStringField
      FieldName = 'SIGLAUFINSTID'
      Size = 2
    end
    object sqldtsPedVendItemTELEFONEINST: TStringField
      FieldName = 'TELEFONEINST'
      Size = 70
    end
    object sqldtsPedVendItemCONTATOINST: TStringField
      FieldName = 'CONTATOINST'
      Size = 100
    end
    object sqldtsPedVendItemEMBJAPAOID: TStringField
      FieldName = 'EMBJAPAOID'
      Size = 30
    end
    object sqldtsPedVendItemLIDISPENSA: TBCDField
      FieldName = 'LIDISPENSA'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemLIDATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'LIDATATRANSMISSAO'
    end
    object sqldtsPedVendItemLIDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'LIDATAAPROVACAO'
    end
    object sqldtsPedVendItemLINUMERO: TStringField
      FieldName = 'LINUMERO'
      Size = 12
    end
    object sqldtsPedVendItemLIDATAVALIDADE: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE'
    end
    object sqldtsPedVendItemLIVLRCOMISSAO: TBCDField
      FieldName = 'LIVLRCOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendItemLIADITIVO1: TStringField
      FieldName = 'LIADITIVO1'
      Size = 12
    end
    object sqldtsPedVendItemLIDATAVALIDADE1: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE1'
    end
    object sqldtsPedVendItemLIADITIVO2: TStringField
      FieldName = 'LIADITIVO2'
      Size = 12
    end
    object sqldtsPedVendItemLIDATAVALIDADE2: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE2'
    end
    object sqldtsPedVendItemLIADITIVO3: TStringField
      FieldName = 'LIADITIVO3'
      Size = 12
    end
    object sqldtsPedVendItemLIDATAVALIDADE3: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE3'
    end
    object sqldtsPedVendItemLIADITIVO4: TStringField
      FieldName = 'LIADITIVO4'
      Size = 12
    end
    object sqldtsPedVendItemLIDATAVALIDADE4: TSQLTimeStampField
      FieldName = 'LIDATAVALIDADE4'
    end
    object sqldtsPedVendItemRTINVOICEID: TStringField
      FieldName = 'RTINVOICEID'
      Size = 12
    end
    object sqldtsPedVendItemRTCLIENTEID: TBCDField
      FieldName = 'RTCLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemRTOBSERVACAO: TMemoField
      FieldName = 'RTOBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPedVendItemRTCABOK7: TStringField
      FieldName = 'RTCABOK7'
      Size = 40
    end
    object sqldtsPedVendItemRTCABOVIDEOPRINTER: TStringField
      FieldName = 'RTCABOVIDEOPRINTER'
      Size = 40
    end
    object sqldtsPedVendItemRTCABOMONITORAUXILIAR: TStringField
      FieldName = 'RTCABOMONITORAUXILIAR'
      Size = 40
    end
    object sqldtsPedVendItemRTMULTIFORMATO: TStringField
      FieldName = 'RTMULTIFORMATO'
      Size = 40
    end
    object sqldtsPedVendItemRTESTABILIZADOR: TStringField
      FieldName = 'RTESTABILIZADOR'
      Size = 40
    end
    object sqldtsPedVendItemRTDATASAIDA: TSQLTimeStampField
      FieldName = 'RTDATASAIDA'
    end
    object sqldtsPedVendItemRTTRANSPORTADORID: TBCDField
      FieldName = 'RTTRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendItemRTOSID: TStringField
      FieldName = 'RTOSID'
      Size = 13
    end
    object sqldtsPedVendItemRTIMPRESSO: TBCDField
      FieldName = 'RTIMPRESSO'
      Precision = 1
      Size = 0
    end
    object sqldtsPedVendItemRTDATAPREVCHEGADA: TSQLTimeStampField
      FieldName = 'RTDATAPREVCHEGADA'
    end
    object sqldtsPedVendItemRTDATAEMBARQUE: TSQLTimeStampField
      FieldName = 'RTDATAEMBARQUE'
    end
    object sqldtsPedVendItemRTUSUARIO: TStringField
      FieldName = 'RTUSUARIO'
    end
    object sqldtsPedVendItemRTLIBERADO: TBCDField
      FieldName = 'RTLIBERADO'
      Precision = 1
      Size = 0
    end
    object sqldtsPedVendItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPedVendVend: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PEDVENDVEND.PEDVENDID,'#13#10'  PP_PEDVENDVEND.ITEMID,'#13#10' ' +
      ' PP_PEDVENDVEND.VENDEDORID,'#13#10'  EF_ENTIDADE.NOME L_NOMEVENDEDOR,'#13 +
      #10'  PP_CLASSEVENDEDOR.DESCRICAO L_DESCR_CLASSEVENDEDOR,'#13#10'  PP_PED' +
      'VENDVEND.CLASSEVENDEDORID,'#13#10'  PP_PEDVENDVEND.PORCENTAGEM,'#13#10'  PP_' +
      'PEDVENDVEND.USUARIO'#13#10'  FROM'#13#10'  PP_PEDVENDVEND PP_PEDVENDVEND,'#13#10' ' +
      ' PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR,'#13#10'  EF_ENTIDADE EF_ENTIDADE' +
      #13#10' WHERE'#13#10'  PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) = PP_PEDVENDVE' +
      'ND.CLASSEVENDEDORID'#13#10'  AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEN' +
      'DVEND.VENDEDORID'#13#10'  AND PP_PEDVENDVEND.PEDVENDID = :PEDVENDID'
    DataSource = dsPedVendLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 429
    object sqldtsPedVendVendPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendVendITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendVendVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendVendL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendVendCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendVendL_DESCR_CLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCR_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendVendPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 14
      Size = 6
    end
    object sqldtsPedVendVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPedVendBonif: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PEDVENDBONIF.PEDVENDID,'#13#10'  PP_PEDVENDBONIF.ITEMID,'#13 +
      #10'  PP_PEDVENDBONIF.BONIFICACAOID,'#13#10'  PP_BONIFICACAO.DESCRICAO L_' +
      'DESCR_BONIFICACAO,'#13#10'  PP_PEDVENDBONIF.DESCRICAO,'#13#10'  PP_PEDVENDBO' +
      'NIF.VLRBONIFICACAO,'#13#10'  PP_PEDVENDBONIF.USUARIO'#13#10'  FROM'#13#10'  PP_PED' +
      'VENDBONIF PP_PEDVENDBONIF,'#13#10'  PP_BONIFICACAO PP_BONIFICACAO'#13#10' WH' +
      'ERE'#13#10'  PP_BONIFICACAO.BONIFICACAOID(+) = PP_PEDVENDBONIF.BONIFIC' +
      'ACAOID'#13#10'  AND PP_PEDVENDBONIF.PEDVENDID = :PEDVENDID'
    DataSource = dsPedVendLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 517
    object sqldtsPedVendBonifPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendBonifITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendBonifBONIFICACAOID: TBCDField
      FieldName = 'BONIFICACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendBonifL_DESCR_BONIFICACAO: TStringField
      FieldName = 'L_DESCR_BONIFICACAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendBonifDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sqldtsPedVendBonifVLRBONIFICACAO: TBCDField
      FieldName = 'VLRBONIFICACAO'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendBonifUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPedVendInterv: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PEDVENDINTERV.PEDVENDID,'#13#10'  PP_PEDVENDINTERV.ITEMID' +
      ','#13#10'  PP_PEDVENDINTERV.CONDINTERVID,'#13#10'  PP_CONDPAGTOPROP.DESCRICA' +
      'OPAGTO L_DESCRICAOPAGTO,'#13#10'  PP_CONDPAGTOPROP.DEDUZIRCOMISSAO L_D' +
      'EDUZIRCOMISSAO,'#13#10'  PP_PEDVENDINTERV.DESCRICAO,'#13#10'  PP_PEDVENDINTE' +
      'RV.VLRINTERVENIENCIA,'#13#10'  PP_PEDVENDINTERV.USUARIO'#13#10'  FROM'#13#10'  PP_' +
      'PEDVENDINTERV PP_PEDVENDINTERV,'#13#10'  PP_CONDPAGTOPROP PP_CONDPAGTO' +
      'PROP'#13#10' WHERE'#13#10'  PP_CONDPAGTOPROP.CONDPAGTOPROPID(+) = PP_PEDVEND' +
      'INTERV.CONDINTERVID'#13#10'  AND PP_PEDVENDINTERV.PEDVENDID = :PEDVEND' +
      'ID'
    DataSource = dsPedVendLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 472
    object sqldtsPedVendIntervPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendIntervITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendIntervCONDINTERVID: TBCDField
      FieldName = 'CONDINTERVID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendIntervL_DESCRICAOPAGTO: TStringField
      FieldName = 'L_DESCRICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendIntervL_DEDUZIRCOMISSAO: TBCDField
      FieldName = 'L_DEDUZIRCOMISSAO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsPedVendIntervDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object sqldtsPedVendIntervVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendIntervUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsHistFechComissao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_HISTFECHCOMISSAO.ANOMESID,'#13#10'  PP_HISTFECHCOMISSAO.M' +
      'OTIVO,'#13#10'  PP_HISTFECHCOMISSAO.USUARIO'#13#10'  FROM'#13#10'  PP_HISTFECHCOMI' +
      'SSAO PP_HISTFECHCOMISSAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 65535
    object sqldtsHistFechComissaoANOMESID: TStringField
      FieldName = 'ANOMESID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object sqldtsHistFechComissaoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
    object sqldtsHistFechComissaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvHistFechComissao: TDataSetProvider
    DataSet = sqldtsHistFechComissao
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 715
    Top = 65535
  end
  object sqldtsAnaliseVenda: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_ANALISEVENDA.PEDVENDID,'#13#10'  PP_PEDVEND.DATAPEDIDO L_' +
      'DATAPEDIDO,'#13#10'  PP_PEDVEND.ORIGEMVENDAID L_ORIGEMVENDAID,'#13#10'  PP_O' +
      'RIGEMVENDA.DESCRICAO L_DECRICAOORIGEMVENDA,'#13#10'  PP_PEDVEND.TIPOVE' +
      'NDAID L_TIPOVENDAID,'#13#10'  PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVE' +
      'NDA,'#13#10'  PP_PEDVEND.CLIENTEID L_CLIENTEID,'#13#10'  EF_ENTIDADE.NOME L_' +
      'NOME,'#13#10'  PP_PEDVEND.SIGLAUFORIGID L_SIGLAUFORGID,'#13#10'  PP_PEDVEND.' +
      'CIDADEORIG L_CIDADEORIG,'#13#10'  EF_ENTIDADE.CPFCNPJ L_CPFCNPJ,'#13#10'  EF' +
      '_ENTIDADE.FISICAJURIDICA L_FISICAJURIDICA,'#13#10'  PP_ANALISEVENDA.EM' +
      'PRESAID,'#13#10'  PP_ANALISEVENDA.NFSID,'#13#10'  PP_ANALISEVENDA.DATAEMISSA' +
      'OID,'#13#10'  PP_ANALISEVENDA.DATAFECHAMENTO,'#13#10'  PP_ANALISEVENDA.VLRFO' +
      'B,'#13#10'  PP_ANALISEVENDA.VLRVENDA,'#13#10'  PP_ANALISEVENDA.VLRINTERVENIE' +
      'NCIA,'#13#10'  PP_ANALISEVENDA.VLRIPI,'#13#10'  PP_ANALISEVENDA.VLRCOMISSAO,' +
      #13#10'  PP_ANALISEVENDA.VLRCOMISSAOUS,'#13#10'  PP_ANALISEVENDA.LIBPAGTOFI' +
      'N,'#13#10'  PP_ANALISEVENDA.STATUS,'#13#10'  PP_ANALISEVENDA.USUARIO'#13#10'  FROM' +
      #13#10'  PP_ANALISEVENDA PP_ANALISEVENDA,'#13#10'  PP_PEDVEND PP_PEDVEND,'#13#10 +
      '  PP_ORIGEMVENDA PP_ORIGEMVENDA,'#13#10'  PP_TIPOVENDA PP_TIPOVENDA,'#13#10 +
      '  EF_ENTIDADE EF_ENTIDADE'#13#10' WHERE'#13#10'  PP_PEDVEND.PEDVENDID(+) = P' +
      'P_ANALISEVENDA.PEDVENDID'#13#10'  AND PP_ORIGEMVENDA.ORIGEMVENDAID(+) ' +
      '= PP_PEDVEND.ORIGEMVENDAID'#13#10'  AND PP_TIPOVENDA.TIPOVENDAID(+) = ' +
      'PP_PEDVEND.TIPOVENDAID'#13#10'  AND EF_ENTIDADE.ENTIDADEID(+) = PP_PED' +
      'VEND.CLIENTEID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 41
    object sqldtsAnaliseVendaPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsAnaliseVendaL_DATAPEDIDO: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDO'
      ProviderFlags = []
    end
    object sqldtsAnaliseVendaL_ORIGEMVENDAID: TBCDField
      FieldName = 'L_ORIGEMVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaL_DECRICAOORIGEMVENDA: TStringField
      FieldName = 'L_DECRICAOORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAnaliseVendaL_TIPOVENDAID: TBCDField
      FieldName = 'L_TIPOVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAnaliseVendaL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAnaliseVendaL_SIGLAUFORGID: TStringField
      FieldName = 'L_SIGLAUFORGID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsAnaliseVendaL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsAnaliseVendaL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsAnaliseVendaL_FISICAJURIDICA: TStringField
      FieldName = 'L_FISICAJURIDICA'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsAnaliseVendaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object sqldtsAnaliseVendaDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsAnaliseVendaVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsAnaliseVendaVLRVENDA: TBCDField
      FieldName = 'VLRVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsAnaliseVendaVLRINTERVENIENCIA: TBCDField
      FieldName = 'VLRINTERVENIENCIA'
      Precision = 14
      Size = 2
    end
    object sqldtsAnaliseVendaVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsAnaliseVendaVLRCOMISSAO: TBCDField
      FieldName = 'VLRCOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsAnaliseVendaVLRCOMISSAOUS: TBCDField
      FieldName = 'VLRCOMISSAOUS'
      Precision = 14
      Size = 2
    end
    object sqldtsAnaliseVendaLIBPAGTOFIN: TBCDField
      FieldName = 'LIBPAGTOFIN'
      Precision = 1
      Size = 0
    end
    object sqldtsAnaliseVendaSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object sqldtsAnaliseVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvAnaliseVenda: TDataSetProvider
    DataSet = sqldtsAnaliseVenda
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 715
    Top = 41
  end
  object dsAnaliseVendaLink: TDataSource
    DataSet = sqldtsAnaliseVenda
    Left = 715
    Top = 84
  end
  object sqldtsAnaliseVendaItem: TSQLDataSet
    CommandText = 
      'SELECT PP_PEDVENDITEM.PEDVENDID,'#13#10'       PP_PEDVENDITEM.ITEMID,'#13 +
      #10'       EF_PRODUTO.PARTNUMBERID L_PARTNUMBER,'#13#10'       EF_PRODUTO' +
      '.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,'#13#10'       EF_PRODUTO.GRU' +
      'POID L_GRUPOID,'#13#10'       EF_GRUPO_PRODUTO.SIGLAGRUPO L_SIGLAGRUPO' +
      '_PRODUTO,'#13#10'       PP_PEDVENDITEM.MODELOID,'#13#10'       PP_CATALOGO.G' +
      'RUPOID L_GRUPO_IMP,'#13#10'       EF_GRUPO_CATALOGO.SIGLAGRUPO L_SIGLA' +
      'GRUPO_CATALOGO,'#13#10'       EF_SUBGRUPO.TIPO L_TIPO,'#13#10'       PP_PEDV' +
      'ENDITEM.USUARIO'#13#10'  FROM PP_PEDVENDITEM PP_PEDVENDITEM,'#13#10'       E' +
      'F_PRODUTO EF_PRODUTO,'#13#10'       EF_GRUPO EF_GRUPO_PRODUTO,'#13#10'      ' +
      ' EF_SUBGRUPO EF_SUBGRUPO,'#13#10'       PP_CATALOGO PP_CATALOGO,'#13#10'    ' +
      '   EF_GRUPO EF_GRUPO_CATALOGO'#13#10' WHERE EF_PRODUTO.EMPRESAID(+) = ' +
      'PP_PEDVENDITEM.EMPRESAID'#13#10'       AND EF_PRODUTO.PRODUTOID(+) = P' +
      'P_PEDVENDITEM.PRODUTOID'#13#10'       AND EF_SUBGRUPO.SUBGRUPOID(+) = ' +
      'EF_PRODUTO.SUBGRUPOID'#13#10'       AND PP_CATALOGO.MODELOID(+) = PP_P' +
      'EDVENDITEM.MODELOID'#13#10'       AND EF_PRODUTO.GRUPOID = EF_GRUPO_PR' +
      'ODUTO.GRUPOID(+)'#13#10'       AND PP_CATALOGO.GRUPOID = EF_GRUPO_CATA' +
      'LOGO.GRUPOID(+)'#13#10'       AND PP_PEDVENDITEM.PEDVENDID = :PEDVENDI' +
      'D'
    DataSource = dsAnaliseVendaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 84
    object sqldtsAnaliseVendaItemPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsAnaliseVendaItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaItemL_PARTNUMBER: TStringField
      FieldName = 'L_PARTNUMBER'
      ProviderFlags = []
    end
    object sqldtsAnaliseVendaItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAnaliseVendaItemL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaItemL_SIGLAGRUPO_PRODUTO: TStringField
      FieldName = 'L_SIGLAGRUPO_PRODUTO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsAnaliseVendaItemL_TIPO: TStringField
      FieldName = 'L_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsAnaliseVendaItemMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsAnaliseVendaItemL_GRUPO_IMP: TBCDField
      FieldName = 'L_GRUPO_IMP'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaItemL_SIGLAGRUPO_CATALOGO: TStringField
      FieldName = 'L_SIGLAGRUPO_CATALOGO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsAnaliseVendaItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsBasePagto: TSQLDataSet
    CommandText = 
      'SELECT PP_BASEPAGTO.VENDEDORID,'#13#10'       EF_ENT_VEND.NOMEFANTASIA' +
      ' L_APELIDOVENDEDOR,'#13#10'       EF_ENT_VEND.FILIALID L_FILIALID,'#13#10'  ' +
      '     PP_BASEPAGTO.PEDVENDID,'#13#10'       PP_BASEPAGTO.ITEMID,'#13#10'     ' +
      '  PP_PEDVEND.DATAPEDIDO L_DATAPEDIDO,'#13#10'       PP_PEDVEND.ORIGEMV' +
      'ENDAID L_ORIGEMVENDAID,'#13#10'       PP_ANALISEVENDA.DATAFECHAMENTO L' +
      '_DATAFECHAMENTO,'#13#10'       PP_ANALISEVENDA.EMPRESAID L_EMPRESAID,'#13 +
      #10'       PP_ANALISEVENDA.NFSID L_NFSID,'#13#10'       PP_ANALISEVENDA.D' +
      'ATAEMISSAOID L_DATAEMISSAOID,'#13#10'       PP_ORIGEMVENDA.DESCRICAO L' +
      '_DECRICAOORIGEMVENDA,'#13#10'       PP_PEDVEND.TIPOVENDAID L_TIPOVENDA' +
      'ID,'#13#10'       PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVENDA,'#13#10'      ' +
      ' PP_PEDVEND.CLIENTEID L_CLIENTEID,'#13#10'       EF_ENTIDADE.NOME L_NO' +
      'ME,'#13#10'       PP_PEDVEND.SIGLAUFORIGID L_SIGLAUFORGID,'#13#10'       PP_' +
      'PEDVEND.CIDADEORIG L_CIDADEORIG,'#13#10'       EF_ENTIDADE.CPFCNPJ L_C' +
      'PFCNPJ,'#13#10'       EF_ENTIDADE.FISICAJURIDICA L_FISICAJURIDICA,'#13#10'  ' +
      '     PP_BASEPAGTO.DATACONVFOB,'#13#10'       PP_BASEPAGTO.DATALIBPAGTO' +
      'FIN,'#13#10'       PP_BASEPAGTO.DATAPAGTOCOM,'#13#10'       IT_INDICE.DOLARO' +
      'FICIALC L_DOLAROFICIALC,'#13#10'       PP_BASEPAGTO.CLASSEVENDEDORID,'#13 +
      #10'       PP_CLASSEVENDEDOR.DESCRICAO L_CLASSEVENDEDOR,'#13#10'       PP' +
      '_BASEPAGTO.NIVELVENDA,'#13#10'       PP_BASEPAGTO.VLRCOMISSAO,'#13#10'      ' +
      ' PP_BASEPAGTO.PORCVENDA,'#13#10'       PP_BASEPAGTO.VLRFOB,       '#13#10'  ' +
      '     PP_BASEPAGTO.VLRBASECOMISSAO,'#13#10'       PP_BASEPAGTO.VLRBASEC' +
      'OMISSAOUS,'#13#10'       PP_BASEPAGTO.VLRDSR,'#13#10'       PP_BASEPAGTO.VLR' +
      'LIQUIDO,'#13#10'       PP_ANALISEVENDA.VLRFOB L_VLRFOB,'#13#10'       PP_ANA' +
      'LISEVENDA.VLRVENDA L_VLRVENDA,'#13#10'       PP_ANALISEVENDA.VLRINTERV' +
      'ENIENCIA L_VLRINTERVENIENCIA,'#13#10'       PP_ANALISEVENDA.VLRIPI L_V' +
      'LRIPI,'#13#10'       PP_BASEPAGTO.OBSERVACAO,'#13#10'       PP_BASEPAGTO.USU' +
      'ARIOPAGTO,'#13#10'       PP_BASEPAGTO.DATAUSUARIOPAGTO,'#13#10'       PP_BAS' +
      'EPAGTO.USUARIO'#13#10'  FROM PP_BASEPAGTO PP_BASEPAGTO,'#13#10'       PP_PED' +
      'VEND PP_PEDVEND,'#13#10'       PP_ORIGEMVENDA PP_ORIGEMVENDA,'#13#10'       ' +
      'PP_TIPOVENDA PP_TIPOVENDA,'#13#10'       EF_ENTIDADE EF_ENTIDADE,'#13#10'   ' +
      '    PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR,'#13#10'       EF_ENTIDADE EF_' +
      'ENT_VEND,'#13#10'       PP_ANALISEVENDA,'#13#10'       IT_INDICE IT_INDICE'#13#10 +
      ' WHERE PP_PEDVEND.PEDVENDID(+) = PP_BASEPAGTO.PEDVENDID'#13#10'       ' +
      'AND PP_ORIGEMVENDA.ORIGEMVENDAID(+) = PP_PEDVEND.ORIGEMVENDAID'#13#10 +
      '       AND PP_TIPOVENDA.TIPOVENDAID(+) = PP_PEDVEND.TIPOVENDAID'#13 +
      #10'       AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEND.CLIENTEID'#13#10'  ' +
      '     AND PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) = PP_BASEPAGTO.CL' +
      'ASSEVENDEDORID'#13#10'       AND EF_ENT_VEND.ENTIDADEID = PP_BASEPAGTO' +
      '.VENDEDORID'#13#10'       AND PP_ANALISEVENDA.PEDVENDID(+) = PP_BASEPA' +
      'GTO.PEDVENDID'#13#10'       AND PP_BASEPAGTO.DATACONVFOB = IT_INDICE.D' +
      'ATAID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 297
    object sqldtsBasePagtoVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_APELIDOVENDEDOR: TStringField
      FieldName = 'L_APELIDOVENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsBasePagtoL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsBasePagtoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_DATAPEDIDO: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDO'
      ProviderFlags = []
    end
    object sqldtsBasePagtoL_ORIGEMVENDAID: TBCDField
      FieldName = 'L_ORIGEMVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
      ProviderFlags = []
    end
    object sqldtsBasePagtoL_EMPRESAID: TBCDField
      FieldName = 'L_EMPRESAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_NFSID: TBCDField
      FieldName = 'L_NFSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_DATAEMISSAOID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAOID'
      ProviderFlags = []
    end
    object sqldtsBasePagtoL_DECRICAOORIGEMVENDA: TStringField
      FieldName = 'L_DECRICAOORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBasePagtoL_TIPOVENDAID: TBCDField
      FieldName = 'L_TIPOVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBasePagtoL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBasePagtoL_SIGLAUFORGID: TStringField
      FieldName = 'L_SIGLAUFORGID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsBasePagtoL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsBasePagtoL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsBasePagtoL_FISICAJURIDICA: TStringField
      FieldName = 'L_FISICAJURIDICA'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsBasePagtoDATACONVFOB: TSQLTimeStampField
      FieldName = 'DATACONVFOB'
    end
    object sqldtsBasePagtoL_DOLAROFICIALC: TFMTBCDField
      FieldName = 'L_DOLAROFICIALC'
      ProviderFlags = []
      Precision = 14
    end
    object sqldtsBasePagtoDATALIBPAGTOFIN: TSQLTimeStampField
      FieldName = 'DATALIBPAGTOFIN'
    end
    object sqldtsBasePagtoDATAPAGTOCOM: TSQLTimeStampField
      FieldName = 'DATAPAGTOCOM'
    end
    object sqldtsBasePagtoCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsBasePagtoL_CLASSEVENDEDOR: TStringField
      FieldName = 'L_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBasePagtoNIVELVENDA: TStringField
      FieldName = 'NIVELVENDA'
      Size = 1
    end
    object sqldtsBasePagtoVLRCOMISSAO: TBCDField
      FieldName = 'VLRCOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoPORCVENDA: TFMTBCDField
      FieldName = 'PORCVENDA'
      Precision = 14
      Size = 6
    end
    object sqldtsBasePagtoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoVLRBASECOMISSAO: TBCDField
      FieldName = 'VLRBASECOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoVLRBASECOMISSAOUS: TBCDField
      FieldName = 'VLRBASECOMISSAOUS'
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoVLRDSR: TBCDField
      FieldName = 'VLRDSR'
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoVLRLIQUIDO: TBCDField
      FieldName = 'VLRLIQUIDO'
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoL_VLRFOB: TBCDField
      FieldName = 'L_VLRFOB'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoL_VLRVENDA: TBCDField
      FieldName = 'L_VLRVENDA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoL_VLRINTERVENIENCIA: TBCDField
      FieldName = 'L_VLRINTERVENIENCIA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoL_VLRIPI: TBCDField
      FieldName = 'L_VLRIPI'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsBasePagtoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsBasePagtoUSUARIOPAGTO: TStringField
      FieldName = 'USUARIOPAGTO'
    end
    object sqldtsBasePagtoDATAUSUARIOPAGTO: TSQLTimeStampField
      FieldName = 'DATAUSUARIOPAGTO'
    end
    object sqldtsBasePagtoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvBasePagto: TDataSetProvider
    DataSet = sqldtsBasePagto
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 715
    Top = 297
  end
  object sqldtsProcessoImp: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROCESSOIMP.PEDVENDID,'#13#10'  PP_PROCESSOIMP.DATAPROCES' +
      'SO,'#13#10'  PP_PROCESSOIMP.DATAPDI,'#13#10'  PP_PROCESSOIMP.DATAPEDIDO,  '#13#10 +
      '  PP_PROCESSOIMP.CLIENTEID,'#13#10'  EF_ENTIDADE.CPFCNPJ L_CPFCNPJ,'#13#10' ' +
      ' EF_ENTIDADE.FISICAJURIDICA L_FISICAJURIDICA,'#13#10'  EF_ENTIDADE.NOM' +
      'E L_NOME,'#13#10'  EF_ENTIDADE.CIDADE L_CIDADE,'#13#10'  EF_ENTIDADE.SIGLAUF' +
      'ID L_SIGLAUFID,'#13#10'  PP_PROCESSOIMP.OBSERVACAOVENDA,'#13#10'  PP_PROCESS' +
      'OIMP.OBSERVACAOPROCESSO,'#13#10'  PP_PROCESSOIMP.SOLICESQUEMA,'#13#10'  PP_P' +
      'ROCESSOIMP.SOLICNOTAPROMISSORIA,'#13#10'  PP_PROCESSOIMP.EMBDATAPREVIS' +
      'AO,'#13#10'  PP_PROCESSOIMP.EMBDATA,'#13#10'  PP_PROCESSOIMP.EMBDATABL,'#13#10'  P' +
      'P_PROCESSOIMP.EMBNUMCONHEC,'#13#10'  PP_PROCESSOIMP.EMBPESOLIQUIDO,'#13#10' ' +
      ' PP_PROCESSOIMP.EMBNOMENAVIO,'#13#10'  PP_PROCESSOIMP.EMBPESOBRUTO,'#13#10' ' +
      ' PP_PROCESSOIMP.EMBSINALFOB,'#13#10'  PP_PROCESSOIMP.EMBDATAPAGTOSINAL' +
      ','#13#10'  PP_PROCESSOIMP.EMBFOBAVISTA,'#13#10'  PP_PROCESSOIMP.EMBDATAPAGTO' +
      'FOBV,'#13#10'  PP_PROCESSOIMP.EMBDATASOLSEGINT,'#13#10'  PP_PROCESSOIMP.EMBD' +
      'ATAAPOLICE,'#13#10'  PP_PROCESSOIMP.EMBDATAPAGTOSEGINT,'#13#10'  PP_PROCESSO' +
      'IMP.EMBSEGINT,'#13#10'  PP_PROCESSOIMP.EMBDESPACHANTE,'#13#10'  PP_PROCESSOI' +
      'MP.EMBVLRDESEMBARACO,'#13#10'  PP_PROCESSOIMP.EMBVLRFRETEINTERNAC,'#13#10'  ' +
      'PP_PROCESSOIMP.EMBVLRFRETEINTERNO,'#13#10'  PP_PROCESSOIMP.EMBDATACHEG' +
      'APAR,'#13#10'  PP_PROCESSOIMP.EMBDATALIBALFANDEGA,'#13#10'  PP_PROCESSOIMP.E' +
      'MBDATALIBTMB,'#13#10'  PP_PROCESSOIMP.EMBDATAENTREGACLI,'#13#10'  PP_PROCESS' +
      'OIMP.EMBDATATERMOACEIT,'#13#10'  PP_PROCESSOIMP.EMBOBS,'#13#10'  PP_PROCESSO' +
      'IMP.EMBDIID,'#13#10'  PP_PROCESSOIMP.EMBDATADI,'#13#10'  PP_PROCESSOIMP.EMBF' +
      'ATINVOICEID,'#13#10'  PP_PROCESSOIMP.EMBJAPAOID,'#13#10'  PP_PROCESSOIMP.EMB' +
      'DATAFATURA,'#13#10'  PP_PROCESSOIMP.ROFRESPONSAVEL,'#13#10'  PP_PROCESSOIMP.' +
      'ROFDISPENSA,'#13#10'  PP_PROCESSOIMP.ROFDATATRANSMISSAO,'#13#10'  PP_PROCESS' +
      'OIMP.ROFDATAAPROVACAO,'#13#10'  PP_PROCESSOIMP.ROFID,'#13#10'  PP_PROCESSOIM' +
      'P.ROFOBSEXIGENCIA,'#13#10'  PP_PROCESSOIMP.PPDATASOLICITACAO,'#13#10'  PP_PR' +
      'OCESSOIMP.PPDATAENVIOCLIENTE,'#13#10'  PP_PROCESSOIMP.PPDATAAPROVACAO,' +
      #13#10'  PP_PROCESSOIMP.PPOBS,'#13#10'  PP_PROCESSOIMP.LIRESPONSAVEL,'#13#10'  PP' +
      '_PROCESSOIMP.LIOBSEXIGENCIA,'#13#10'  PP_PROCESSOIMP.PODATATRANSMISSAO' +
      'EMAIL,'#13#10'  PP_PROCESSOIMP.PONXID,'#13#10'  PP_PROCESSOIMP.PODATAENVIOFO' +
      'RM,'#13#10'  PP_PROCESSOIMP.POTRANSMISSAO1,'#13#10'  PP_PROCESSOIMP.POTRANSM' +
      'ISSAO2,'#13#10'  PP_PROCESSOIMP.POTRANSMISSAO3,'#13#10'  PP_PROCESSOIMP.POTR' +
      'ANSMISSAO4,'#13#10'  PP_PROCESSOIMP.POTRANSMISSAO5,'#13#10'  PP_PROCESSOIMP.' +
      'POTRANSMISSAO6,'#13#10'  PP_PROCESSOIMP.PONUMFATPROFORMA,'#13#10'  PP_PROCES' +
      'SOIMP.PODATAFATPROFORMA,'#13#10'  PP_PROCESSOIMP.EPRESPONSAVEL,'#13#10'  PP_' +
      'PROCESSOIMP.EPDISPENSA,'#13#10'  PP_PROCESSOIMP.EPDATATRANSMISSAO,'#13#10'  ' +
      'PP_PROCESSOIMP.EPDATAAPROVACAO,'#13#10'  PP_PROCESSOIMP.EPNUMERO,'#13#10'  P' +
      'P_PROCESSOIMP.EPOBS,'#13#10'  PP_PROCESSOIMP.TIDATA,'#13#10'  PP_PROCESSOIMP' +
      '.TICLIENTEID,'#13#10'  PP_PROCESSOIMP.TIOBS,'#13#10'  PP_PROCESSOIMP.DOCDATA' +
      'RECDOC,'#13#10'  PP_PROCESSOIMP.DOCPEDCONFCONTRATO,'#13#10'  PP_PROCESSOIMP.' +
      'DOCRECCONTRATO,'#13#10'  PP_PROCESSOIMP.DOCDATAREQUISICAOMI,'#13#10'  PP_PRO' +
      'CESSOIMP.DOCOBS,'#13#10'  PP_PROCESSOIMP.DOCNUMCONTRATO,'#13#10'  PP_PROCESS' +
      'OIMP.DOCDATACONTRATO,'#13#10'  PP_PROCESSOIMP.LCDISPENSA,'#13#10'  PP_PROCES' +
      'SOIMP.LCNUMERO,'#13#10'  PP_PROCESSOIMP.LCDATAEMISSAOID,'#13#10'  PP_PROCESS' +
      'OIMP.LCDATAVALIDADE,'#13#10'  PP_PROCESSOIMP.LCULTDATAEMBARQUE,'#13#10'  PP_' +
      'PROCESSOIMP.LCBANCOEMISSOR,'#13#10'  PP_PROCESSOIMP.LCPRACA,'#13#10'  PP_PRO' +
      'CESSOIMP.LCINSTITUICAO,'#13#10'  PP_PROCESSOIMP.CBDISPENSA,'#13#10'  PP_PROC' +
      'ESSOIMP.CBNUMERO,'#13#10'  PP_PROCESSOIMP.CBDATA,'#13#10'  PP_PROCESSOIMP.CA' +
      'NCELADO,'#13#10'  PP_PROCESSOIMP.DATACANCELAMENTO,'#13#10'  PP_PROCESSOIMP.O' +
      'BSCANCELADO,'#13#10'  PP_PROCESSOIMP.USUARIO'#13#10'  FROM'#13#10'  PP_PROCESSOIMP' +
      ' PP_PROCESSOIMP,'#13#10'  EF_ENTIDADE EF_ENTIDADE'#13#10' WHERE'#13#10'  EF_ENTIDA' +
      'DE.ENTIDADEID(+) = PP_PROCESSOIMP.CLIENTEID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 340
    object sqldtsProcessoImpPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsProcessoImpDATAPROCESSO: TSQLTimeStampField
      FieldName = 'DATAPROCESSO'
    end
    object sqldtsProcessoImpDATAPDI: TSQLTimeStampField
      FieldName = 'DATAPDI'
    end
    object sqldtsProcessoImpDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsProcessoImpCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsProcessoImpL_FISICAJURIDICA: TStringField
      FieldName = 'L_FISICAJURIDICA'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsProcessoImpL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoImpL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsProcessoImpL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsProcessoImpOBSERVACAOVENDA: TMemoField
      FieldName = 'OBSERVACAOVENDA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpOBSERVACAOPROCESSO: TMemoField
      FieldName = 'OBSERVACAOPROCESSO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpSOLICESQUEMA: TBCDField
      FieldName = 'SOLICESQUEMA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpSOLICNOTAPROMISSORIA: TBCDField
      FieldName = 'SOLICNOTAPROMISSORIA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpEMBDATAPREVISAO: TSQLTimeStampField
      FieldName = 'EMBDATAPREVISAO'
    end
    object sqldtsProcessoImpEMBDATA: TSQLTimeStampField
      FieldName = 'EMBDATA'
    end
    object sqldtsProcessoImpEMBDATABL: TSQLTimeStampField
      FieldName = 'EMBDATABL'
    end
    object sqldtsProcessoImpEMBNUMCONHEC: TStringField
      FieldName = 'EMBNUMCONHEC'
      Size = 15
    end
    object sqldtsProcessoImpEMBPESOLIQUIDO: TBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBNOMENAVIO: TStringField
      FieldName = 'EMBNOMENAVIO'
      Size = 60
    end
    object sqldtsProcessoImpEMBPESOBRUTO: TBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBSINALFOB: TBCDField
      FieldName = 'EMBSINALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBDATAPAGTOSINAL: TSQLTimeStampField
      FieldName = 'EMBDATAPAGTOSINAL'
    end
    object sqldtsProcessoImpEMBFOBAVISTA: TBCDField
      FieldName = 'EMBFOBAVISTA'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBDATAPAGTOFOBV: TSQLTimeStampField
      FieldName = 'EMBDATAPAGTOFOBV'
    end
    object sqldtsProcessoImpEMBDATASOLSEGINT: TSQLTimeStampField
      FieldName = 'EMBDATASOLSEGINT'
    end
    object sqldtsProcessoImpEMBDATAAPOLICE: TSQLTimeStampField
      FieldName = 'EMBDATAAPOLICE'
    end
    object sqldtsProcessoImpEMBDATAPAGTOSEGINT: TSQLTimeStampField
      FieldName = 'EMBDATAPAGTOSEGINT'
    end
    object sqldtsProcessoImpEMBSEGINT: TBCDField
      FieldName = 'EMBSEGINT'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBDESPACHANTE: TStringField
      FieldName = 'EMBDESPACHANTE'
      Size = 15
    end
    object sqldtsProcessoImpEMBVLRDESEMBARACO: TBCDField
      FieldName = 'EMBVLRDESEMBARACO'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBVLRFRETEINTERNAC: TBCDField
      FieldName = 'EMBVLRFRETEINTERNAC'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBVLRFRETEINTERNO: TBCDField
      FieldName = 'EMBVLRFRETEINTERNO'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpEMBDATACHEGAPAR: TSQLTimeStampField
      FieldName = 'EMBDATACHEGAPAR'
    end
    object sqldtsProcessoImpEMBDATALIBALFANDEGA: TSQLTimeStampField
      FieldName = 'EMBDATALIBALFANDEGA'
    end
    object sqldtsProcessoImpEMBDATALIBTMB: TSQLTimeStampField
      FieldName = 'EMBDATALIBTMB'
    end
    object sqldtsProcessoImpEMBDATAENTREGACLI: TSQLTimeStampField
      FieldName = 'EMBDATAENTREGACLI'
    end
    object sqldtsProcessoImpEMBDATATERMOACEIT: TSQLTimeStampField
      FieldName = 'EMBDATATERMOACEIT'
    end
    object sqldtsProcessoImpEMBOBS: TMemoField
      FieldName = 'EMBOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpEMBDIID: TStringField
      FieldName = 'EMBDIID'
      Size = 12
    end
    object sqldtsProcessoImpEMBDATADI: TSQLTimeStampField
      FieldName = 'EMBDATADI'
    end
    object sqldtsProcessoImpEMBFATINVOICEID: TStringField
      FieldName = 'EMBFATINVOICEID'
      Size = 30
    end
    object sqldtsProcessoImpEMBJAPAOID: TStringField
      FieldName = 'EMBJAPAOID'
      Size = 30
    end
    object sqldtsProcessoImpEMBDATAFATURA: TSQLTimeStampField
      FieldName = 'EMBDATAFATURA'
    end
    object sqldtsProcessoImpROFRESPONSAVEL: TStringField
      FieldName = 'ROFRESPONSAVEL'
      Size = 1
    end
    object sqldtsProcessoImpROFDISPENSA: TBCDField
      FieldName = 'ROFDISPENSA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpROFDATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'ROFDATATRANSMISSAO'
    end
    object sqldtsProcessoImpROFDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'ROFDATAAPROVACAO'
    end
    object sqldtsProcessoImpROFID: TStringField
      FieldName = 'ROFID'
      Size = 8
    end
    object sqldtsProcessoImpROFOBSEXIGENCIA: TMemoField
      FieldName = 'ROFOBSEXIGENCIA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpPPDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'PPDATASOLICITACAO'
    end
    object sqldtsProcessoImpPPDATAENVIOCLIENTE: TSQLTimeStampField
      FieldName = 'PPDATAENVIOCLIENTE'
    end
    object sqldtsProcessoImpPPDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'PPDATAAPROVACAO'
    end
    object sqldtsProcessoImpPPOBS: TMemoField
      FieldName = 'PPOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpLIRESPONSAVEL: TStringField
      FieldName = 'LIRESPONSAVEL'
      Size = 1
    end
    object sqldtsProcessoImpLIOBSEXIGENCIA: TMemoField
      FieldName = 'LIOBSEXIGENCIA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpPODATATRANSMISSAOEMAIL: TSQLTimeStampField
      FieldName = 'PODATATRANSMISSAOEMAIL'
    end
    object sqldtsProcessoImpPONXID: TStringField
      FieldName = 'PONXID'
      Size = 6
    end
    object sqldtsProcessoImpPODATAENVIOFORM: TSQLTimeStampField
      FieldName = 'PODATAENVIOFORM'
    end
    object sqldtsProcessoImpPOTRANSMISSAO1: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO1'
    end
    object sqldtsProcessoImpPOTRANSMISSAO2: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO2'
    end
    object sqldtsProcessoImpPOTRANSMISSAO3: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO3'
    end
    object sqldtsProcessoImpPOTRANSMISSAO5: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO5'
    end
    object sqldtsProcessoImpPOTRANSMISSAO4: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO4'
    end
    object sqldtsProcessoImpPOTRANSMISSAO6: TSQLTimeStampField
      FieldName = 'POTRANSMISSAO6'
    end
    object sqldtsProcessoImpPONUMFATPROFORMA: TStringField
      FieldName = 'PONUMFATPROFORMA'
      Size = 30
    end
    object sqldtsProcessoImpPODATAFATPROFORMA: TSQLTimeStampField
      FieldName = 'PODATAFATPROFORMA'
    end
    object sqldtsProcessoImpEPRESPONSAVEL: TStringField
      FieldName = 'EPRESPONSAVEL'
      Size = 1
    end
    object sqldtsProcessoImpEPDISPENSA: TBCDField
      FieldName = 'EPDISPENSA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpEPDATATRANSMISSAO: TSQLTimeStampField
      FieldName = 'EPDATATRANSMISSAO'
    end
    object sqldtsProcessoImpEPDATAAPROVACAO: TSQLTimeStampField
      FieldName = 'EPDATAAPROVACAO'
    end
    object sqldtsProcessoImpEPNUMERO: TStringField
      FieldName = 'EPNUMERO'
      Size = 10
    end
    object sqldtsProcessoImpEPOBS: TMemoField
      FieldName = 'EPOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpTIDATA: TSQLTimeStampField
      FieldName = 'TIDATA'
    end
    object sqldtsProcessoImpTICLIENTEID: TBCDField
      FieldName = 'TICLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpTIOBS: TMemoField
      FieldName = 'TIOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpDOCDATARECDOC: TSQLTimeStampField
      FieldName = 'DOCDATARECDOC'
    end
    object sqldtsProcessoImpDOCPEDCONFCONTRATO: TSQLTimeStampField
      FieldName = 'DOCPEDCONFCONTRATO'
    end
    object sqldtsProcessoImpDOCRECCONTRATO: TSQLTimeStampField
      FieldName = 'DOCRECCONTRATO'
    end
    object sqldtsProcessoImpDOCDATAREQUISICAOMI: TSQLTimeStampField
      FieldName = 'DOCDATAREQUISICAOMI'
    end
    object sqldtsProcessoImpDOCOBS: TMemoField
      FieldName = 'DOCOBS'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpDOCNUMCONTRATO: TStringField
      FieldName = 'DOCNUMCONTRATO'
      Size = 15
    end
    object sqldtsProcessoImpDOCDATACONTRATO: TSQLTimeStampField
      FieldName = 'DOCDATACONTRATO'
    end
    object sqldtsProcessoImpLCDISPENSA: TBCDField
      FieldName = 'LCDISPENSA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpLCNUMERO: TStringField
      FieldName = 'LCNUMERO'
      Size = 15
    end
    object sqldtsProcessoImpLCDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'LCDATAEMISSAOID'
    end
    object sqldtsProcessoImpLCDATAVALIDADE: TSQLTimeStampField
      FieldName = 'LCDATAVALIDADE'
    end
    object sqldtsProcessoImpLCULTDATAEMBARQUE: TSQLTimeStampField
      FieldName = 'LCULTDATAEMBARQUE'
    end
    object sqldtsProcessoImpLCBANCOEMISSOR: TStringField
      FieldName = 'LCBANCOEMISSOR'
    end
    object sqldtsProcessoImpLCPRACA: TBCDField
      FieldName = 'LCPRACA'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpLCINSTITUICAO: TBCDField
      FieldName = 'LCINSTITUICAO'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpCBDISPENSA: TBCDField
      FieldName = 'CBDISPENSA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpCBNUMERO: TStringField
      FieldName = 'CBNUMERO'
      Size = 15
    end
    object sqldtsProcessoImpCBDATA: TSQLTimeStampField
      FieldName = 'CBDATA'
    end
    object sqldtsProcessoImpCANCELADO: TBCDField
      FieldName = 'CANCELADO'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoImpDATACANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATACANCELAMENTO'
    end
    object sqldtsProcessoImpOBSCANCELADO: TMemoField
      FieldName = 'OBSCANCELADO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoImpUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvProcessoImp: TDataSetProvider
    DataSet = sqldtsProcessoImp
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 715
    Top = 340
  end
  object dsProcessoImpLink: TDataSource
    DataSet = sqldtsProcessoImp
    Left = 715
    Top = 382
  end
  object sqldtsProcessoImpParc: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PROCESSOIMPPARC.PEDVENDID,'#13#10'  PP_PROCESSOIMPPARC.PA' +
      'RCELAID,'#13#10'  PP_PROCESSOIMPPARC.QTDPARCELAS,'#13#10'  PP_PROCESSOIMPPAR' +
      'C.DATAVENCIMENTO,'#13#10'  PP_PROCESSOIMPPARC.VLRPARCELA,'#13#10'  PP_PROCES' +
      'SOIMPPARC.LIBOR,'#13#10'  PP_PROCESSOIMPPARC.SPREED,'#13#10'  PP_PROCESSOIMP' +
      'PARC.VLRJUROS,'#13#10'  PP_PROCESSOIMPPARC.POSICAOJUROS,'#13#10'  PP_PROCESS' +
      'OIMPPARC.VLRTOTAL,'#13#10'  PP_PROCESSOIMPPARC.JUROSMORA,'#13#10'  PP_PROCES' +
      'SOIMPPARC.DATAPAGAMENTO,'#13#10'  PP_PROCESSOIMPPARC.MOTIVOATRASO,'#13#10'  ' +
      'PP_PROCESSOIMPPARC.PRAZOPARCELA,'#13#10'  PP_PROCESSOIMPPARC.PAGTOPARC' +
      'IAL,'#13#10'  PP_PROCESSOIMPPARC.VLRSALDO,'#13#10'  PP_PROCESSOIMPPARC.USUAR' +
      'IO'#13#10'  FROM'#13#10'  PP_PROCESSOIMPPARC PP_PROCESSOIMPPARC'#13#10' WHERE'#13#10'  P' +
      'P_PROCESSOIMPPARC.PEDVENDID = :PEDVENDID'
    DataSource = dsProcessoImpLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 382
    object sqldtsProcessoImpParcPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsProcessoImpParcPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpParcQTDPARCELAS: TBCDField
      FieldName = 'QTDPARCELAS'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpParcDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsProcessoImpParcVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcLIBOR: TBCDField
      FieldName = 'LIBOR'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcSPREED: TBCDField
      FieldName = 'SPREED'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcVLRJUROS: TBCDField
      FieldName = 'VLRJUROS'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcPOSICAOJUROS: TStringField
      FieldName = 'POSICAOJUROS'
      Size = 1
    end
    object sqldtsProcessoImpParcVLRTOTAL: TBCDField
      FieldName = 'VLRTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcJUROSMORA: TBCDField
      FieldName = 'JUROSMORA'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcDATAPAGAMENTO: TSQLTimeStampField
      FieldName = 'DATAPAGAMENTO'
    end
    object sqldtsProcessoImpParcMOTIVOATRASO: TStringField
      FieldName = 'MOTIVOATRASO'
      Size = 30
    end
    object sqldtsProcessoImpParcPRAZOPARCELA: TBCDField
      FieldName = 'PRAZOPARCELA'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoImpParcPAGTOPARCIAL: TBCDField
      FieldName = 'PAGTOPARCIAL'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcVLRSALDO: TBCDField
      FieldName = 'VLRSALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoImpParcUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPedVendComp: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PEDVENDCOMP.PEDVENDID,'#13#10'  PP_PEDVENDCOMP.ITEMID,'#13#10' ' +
      ' PP_PEDVENDCOMP.ITEMCOMPID,'#13#10'  PP_PEDVENDCOMP.SERIEID,'#13#10'  PP_PED' +
      'VENDCOMP.MODELOID,'#13#10'  PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAO' +
      'PORTUGUES,'#13#10'  PP_CATALOGO.GRUPOID L_GRUPOID,  '#13#10'  PP_PEDVENDCOMP' +
      '.QUANTIDADE,'#13#10'  PP_PEDVENDCOMP.VLRUNITARIOFOB,'#13#10'  PP_PEDVENDCOMP' +
      '.VLRTOTALFOB,'#13#10'  PP_PEDVENDCOMP.VLRUNITARIOREVENDA,'#13#10'  PP_PEDVEN' +
      'DCOMP.VLRTOTALREVENDA,'#13#10'  PP_PEDVENDCOMP.USUARIO'#13#10'  FROM'#13#10'  PP_P' +
      'EDVENDCOMP PP_PEDVENDCOMP,'#13#10'  PP_CATALOGO PP_CATALOGO'#13#10' WHERE'#13#10' ' +
      ' PP_PEDVENDCOMP.MODELOID = PP_CATALOGO.MODELOID(+)'#13#10'  AND PP_PED' +
      'VENDCOMP.PEDVENDID = :PEDVENDID'#13#10'  AND PP_PEDVENDCOMP.ITEMID = :' +
      'ITEMID'
    DataSource = dsPedVendItemLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 342
    object sqldtsPedVendCompPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendCompITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendCompITEMCOMPID: TBCDField
      FieldName = 'ITEMCOMPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendCompSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsPedVendCompMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsPedVendCompL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPedVendCompL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendCompQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCompVLRUNITARIOFOB: TBCDField
      FieldName = 'VLRUNITARIOFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCompVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCompVLRUNITARIOREVENDA: TBCDField
      FieldName = 'VLRUNITARIOREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCompVLRTOTALREVENDA: TBCDField
      FieldName = 'VLRTOTALREVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsPedVendCompUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPedVendItemLink: TDataSource
    DataSet = sqldtsPedVendItem
    Left = 533
    Top = 341
  end
  object sqldtsAnaliseVendaVend: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PP_PEDVENDVEND.PEDVENDID,'#13#10'  PP_PEDVENDVEND.ITEMID,'#13#10' ' +
      ' PP_PEDVENDVEND.VENDEDORID,'#13#10'  EF_ENTIDADE.NOME L_NOMEVENDEDOR,'#13 +
      #10'  PP_CLASSEVENDEDOR.DESCRICAO L_DESCR_CLASSEVENDEDOR,'#13#10'  PP_PED' +
      'VENDVEND.CLASSEVENDEDORID,'#13#10'  PP_PEDVENDVEND.PORCENTAGEM,'#13#10'  PP_' +
      'PEDVENDVEND.USUARIO'#13#10'  FROM'#13#10'  PP_PEDVENDVEND PP_PEDVENDVEND,'#13#10' ' +
      ' PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR,'#13#10'  EF_ENTIDADE EF_ENTIDADE' +
      #13#10' WHERE'#13#10'  PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) = PP_PEDVENDVE' +
      'ND.CLASSEVENDEDORID'#13#10'  AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEN' +
      'DVEND.VENDEDORID'#13#10'  AND PP_PEDVENDVEND.PEDVENDID = :PEDVENDID'
    DataSource = dsAnaliseVendaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 127
    object sqldtsAnaliseVendaVendPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsAnaliseVendaVendITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaVendVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaVendL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAnaliseVendaVendCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsAnaliseVendaVendL_DESCR_CLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCR_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAnaliseVendaVendPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 14
      Size = 6
    end
    object sqldtsAnaliseVendaVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsRecebComVenda: TSQLDataSet
    SchemaName = 'GSI'
    CommandText = 
      'SELECT PP_RECEBCOMVENDA.ENTIDADEID,'#13#10'       EF_ENTIDADE.CPFCNPJ ' +
      'L_CPFCNPJ,'#13#10'       EF_ENTIDADE.NOME L_NOME,'#13#10'       PP_RECEBCOMV' +
      'ENDA.CLASSEVENDEDORID,'#13#10'       PP_CLASSEVENDEDOR.DESCRICAO L_CLA' +
      'SSEVENDEDOR,       '#13#10'       PP_RECEBCOMVENDA.BLOQUEARCOMISSAO,'#13#10 +
      '       PP_RECEBCOMVENDA.VIGENCIA,'#13#10'       PP_RECEBCOMVENDA.USUAR' +
      'IO'#13#10'  FROM PP_RECEBCOMVENDA PP_RECEBCOMVENDA,'#13#10'       EF_ENTIDAD' +
      'E EF_ENTIDADE,'#13#10'       PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR'#13#10' WHE' +
      'RE PP_RECEBCOMVENDA.ENTIDADEID = EF_ENTIDADE.ENTIDADEID'#13#10'       ' +
      'AND PP_CLASSEVENDEDOR.CLASSEVENDEDORID(+) = PP_RECEBCOMVENDA.CLA' +
      'SSEVENDEDORID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 169
    object sqldtsRecebComVendaENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRecebComVendaL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsRecebComVendaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRecebComVendaCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsRecebComVendaL_CLASSEVENDEDOR: TStringField
      FieldName = 'L_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsRecebComVendaBLOQUEARCOMISSAO: TBCDField
      FieldName = 'BLOQUEARCOMISSAO'
      Precision = 1
      Size = 0
    end
    object sqldtsRecebComVendaVIGENCIA: TSQLTimeStampField
      FieldName = 'VIGENCIA'
    end
    object sqldtsRecebComVendaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvRecebComVenda: TDataSetProvider
    DataSet = sqldtsRecebComVenda
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 715
    Top = 169
  end
  object sqldtsNfsParcela: TSQLDataSet
    CommandText = 
      'SELECT EF_NFSPARCELA.EMPRESAID,'#13#10'       EF_NFSPARCELA.NFSID,'#13#10'  ' +
      '     EF_NFSPARCELA.DATAEMISSAOID,'#13#10'       EF_NFSPARCELA.PARCELAI' +
      'D,'#13#10'       EF_NFSPARCELA.DATAVENCIMENTO,'#13#10'       EF_NFSPARCELA.D' +
      'ATAPAGTO,'#13#10'       EF_NFSPARCELA.VLRPARCELA,'#13#10'       EF_NFSPARCEL' +
      'A.DUPLICATAID,'#13#10'       EF_NFSPARCELA.EXPORTADO,'#13#10'       EF_NFSPA' +
      'RCELA.VLRBASECOMISSAO,'#13#10'       EF_NFSPARCELA.PAGTOVENDEDOR,'#13#10'   ' +
      '    PP_ANALISEVENDA.PEDVENDID L_PEDVENDID,'#13#10'       PP_ANALISEVEN' +
      'DA.VLRFOB L_VLRFOB,'#13#10'       PP_ANALISEVENDA.VLRVENDA L_VLRVENDA,' +
      #13#10'       PP_ANALISEVENDA.VLRINTERVENIENCIA L_VLRINTERVENIENCIA,'#13 +
      #10'       PP_ANALISEVENDA.VLRIPI L_VLRIPI,'#13#10'       PP_ANALISEVENDA' +
      '.VLRCOMISSAO L_VLRCOMISSAO,'#13#10'       PP_ANALISEVENDA.VLRCOMISSAOU' +
      'S L_VLRCOMISSAOUS,'#13#10'       PP_PEDVEND.CLIENTEID L_CLIENTEID,'#13#10'  ' +
      '     PP_PEDVEND.CIDADEORIG L_CIDADEORIG,'#13#10'       PP_PEDVEND.SIGL' +
      'AUFORIGID L_SIGLAUFORIGID,'#13#10'       EF_ENTIDADE.NOME L_NOME,'#13#10'   ' +
      '    EF_NFSPARCELA.CANCELADA,'#13#10'       EF_NFSPARCELA.OBSCANCELAMEN' +
      'TO,       '#13#10'       EF_NFSPARCELA.USUARIO'#13#10'  FROM EF_NFSPARCELA E' +
      'F_NFSPARCELA,'#13#10'       PP_ANALISEVENDA PP_ANALISEVENDA,'#13#10'       P' +
      'P_PEDVEND PP_PEDVEND,'#13#10'       EF_ENTIDADE EF_ENTIDADE'#13#10' WHERE EF' +
      '_NFSPARCELA.EMPRESAID = PP_ANALISEVENDA.EMPRESAID(+)'#13#10'       AND' +
      ' EF_NFSPARCELA.NFSID = PP_ANALISEVENDA.NFSID(+)'#13#10'       AND EF_N' +
      'FSPARCELA.DATAEMISSAOID = PP_ANALISEVENDA.DATAEMISSAOID(+)'#13#10'    ' +
      '   AND PP_PEDVEND.PEDVENDID = PP_ANALISEVENDA.PEDVENDID'#13#10'       ' +
      'AND EF_ENTIDADE.ENTIDADEID = PP_PEDVEND.CLIENTEID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 616
    Top = 211
    object sqldtsNfsParcelaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsNfsParcelaDATAPAGTO: TSQLTimeStampField
      FieldName = 'DATAPAGTO'
    end
    object sqldtsNfsParcelaVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaDUPLICATAID: TBCDField
      FieldName = 'DUPLICATAID'
      Precision = 10
      Size = 0
    end
    object sqldtsNfsParcelaEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsParcelaVLRBASECOMISSAO: TBCDField
      FieldName = 'VLRBASECOMISSAO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaPAGTOVENDEDOR: TBCDField
      FieldName = 'PAGTOVENDEDOR'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsParcelaL_PEDVENDID: TStringField
      FieldName = 'L_PEDVENDID'
      ProviderFlags = []
      Size = 9
    end
    object sqldtsNfsParcelaL_VLRFOB: TBCDField
      FieldName = 'L_VLRFOB'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaL_VLRVENDA: TBCDField
      FieldName = 'L_VLRVENDA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaL_VLRINTERVENIENCIA: TBCDField
      FieldName = 'L_VLRINTERVENIENCIA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaL_VLRIPI: TBCDField
      FieldName = 'L_VLRIPI'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaL_VLRCOMISSAO: TBCDField
      FieldName = 'L_VLRCOMISSAO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaL_VLRCOMISSAOUS: TBCDField
      FieldName = 'L_VLRCOMISSAOUS'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsNfsParcelaL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsNfsParcelaL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsNfsParcelaL_SIGLAUFORIGID: TStringField
      FieldName = 'L_SIGLAUFORIGID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsNfsParcelaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsParcelaCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsParcelaOBSCANCELAMENTO: TMemoField
      FieldName = 'OBSCANCELAMENTO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsNfsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNfsParcela: TDataSetProvider
    DataSet = sqldtsNfsParcela
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 715
    Top = 210
  end
  object sqldtsPerComRepr: TSQLDataSet
    CommandText = 
      'SELECT PP_PERCOMREPR.GRUPOID,'#13#10'       EF_GRUPO.SIGLAGRUPO L_SIGL' +
      'AGRUPO,'#13#10'       EF_GRUPO.DESCRICAO L_DESCRICAOGRUPO,'#13#10'       PP_' +
      'PERCOMREPR.ORIGEMVENDAID,'#13#10'       PP_ORIGEMVENDA.DESCRICAO L_ORI' +
      'GEMVENDA,'#13#10'       PP_PERCOMREPR.TIPOVENDAID,'#13#10'       PP_TIPOVEND' +
      'A.DESCRICAO L_TIPOVENDA,       '#13#10'       PP_PERCOMREPR.VLRPERCENT' +
      'UAL,'#13#10'       PP_PERCOMREPR.VLRIRRF,'#13#10'       PP_PERCOMREPR.USUARI' +
      'O'#13#10'  FROM PP_PERCOMREPR PP_PERCOMREPR,'#13#10'       EF_GRUPO EF_GRUPO' +
      ','#13#10'       PP_ORIGEMVENDA PP_ORIGEMVENDA,'#13#10'       PP_TIPOVENDA PP' +
      '_TIPOVENDA'#13#10' WHERE PP_PERCOMREPR.GRUPOID = EF_GRUPO.GRUPOID'#13#10'   ' +
      '    AND PP_PERCOMREPR.ORIGEMVENDAID = PP_ORIGEMVENDA.ORIGEMVENDA' +
      'ID'#13#10'       AND PP_PERCOMREPR.TIPOVENDAID = PP_TIPOVENDA.TIPOVEND' +
      'AID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 520
    object sqldtsPerComReprGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsPerComReprL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPerComReprL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPerComReprORIGEMVENDAID: TBCDField
      FieldName = 'ORIGEMVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsPerComReprL_ORIGEMVENDA: TStringField
      FieldName = 'L_ORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPerComReprTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsPerComReprL_TIPOVENDA: TStringField
      FieldName = 'L_TIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPerComReprVLRPERCENTUAL: TFMTBCDField
      FieldName = 'VLRPERCENTUAL'
      Precision = 14
      Size = 6
    end
    object sqldtsPerComReprVLRIRRF: TFMTBCDField
      FieldName = 'VLRIRRF'
      Precision = 14
      Size = 6
    end
    object sqldtsPerComReprUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvPerComRepr: TDataSetProvider
    DataSet = sqldtsPerComRepr
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 521
  end
  object sqldtsClasseNivel: TSQLDataSet
    CommandText = 
      'SELECT PP_CLASSENIVEL.CLASSENIVELID,'#13#10'       PP_CLASSENIVEL.DESC' +
      'RICAO,'#13#10'       PP_CLASSENIVEL.CLASSEVENDEDOR1ID,'#13#10'       PP_CLAS' +
      'SEVENDEDOR1.DESCRICAO L_DESCRICAOCLASSEVENDEDOR1,'#13#10'       PP_CLA' +
      'SSENIVEL.NIVELVENDA1,'#13#10'       PP_CLASSENIVEL.PERCENTUAL1,'#13#10'     ' +
      '  PP_CLASSENIVEL.CLASSEVENDEDOR2ID,'#13#10'       PP_CLASSEVENDEDOR2.D' +
      'ESCRICAO L_DESCRICAOCLASSEVENDEDOR2,'#13#10'       PP_CLASSENIVEL.NIVE' +
      'LVENDA2,'#13#10'       PP_CLASSENIVEL.PERCENTUAL2,'#13#10'       PP_CLASSENI' +
      'VEL.CLASSEVENDEDOR3ID,'#13#10'       PP_CLASSEVENDEDOR3.DESCRICAO L_DE' +
      'SCRICAOCLASSEVENDEDOR3,'#13#10'       PP_CLASSENIVEL.NIVELVENDA3,'#13#10'   ' +
      '    PP_CLASSENIVEL.PERCENTUAL3,'#13#10'       PP_CLASSENIVEL.CLASSEVEN' +
      'DEDOR4ID,'#13#10'       PP_CLASSEVENDEDOR4.DESCRICAO L_DESCRICAOCLASSE' +
      'VENDEDOR4,'#13#10'       PP_CLASSENIVEL.NIVELVENDA4,'#13#10'       PP_CLASSE' +
      'NIVEL.PERCENTUAL4,'#13#10'       PP_CLASSENIVEL.CLASSEVENDEDOR5ID,'#13#10'  ' +
      '     PP_CLASSEVENDEDOR5.DESCRICAO L_DESCRICAOCLASSEVENDEDOR5,'#13#10' ' +
      '      PP_CLASSENIVEL.NIVELVENDA5,'#13#10'       PP_CLASSENIVEL.PERCENT' +
      'UAL5,'#13#10'       PP_CLASSENIVEL.CLASSEVENDEDOR6ID,'#13#10'       PP_CLASS' +
      'EVENDEDOR6.DESCRICAO L_DESCRICAOCLASSEVENDEDOR6,'#13#10'       PP_CLAS' +
      'SENIVEL.NIVELVENDA6,'#13#10'       PP_CLASSENIVEL.PERCENTUAL6,'#13#10'      ' +
      ' PP_CLASSENIVEL.USUARIO'#13#10'  FROM PP_CLASSENIVEL PP_CLASSENIVEL,'#13#10 +
      '       PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR1,'#13#10'       PP_CLASSEVE' +
      'NDEDOR PP_CLASSEVENDEDOR2,'#13#10'       PP_CLASSEVENDEDOR PP_CLASSEVE' +
      'NDEDOR3,'#13#10'       PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR4,'#13#10'       P' +
      'P_CLASSEVENDEDOR PP_CLASSEVENDEDOR5,'#13#10'       PP_CLASSEVENDEDOR P' +
      'P_CLASSEVENDEDOR6'#13#10' WHERE PP_CLASSEVENDEDOR1.CLASSEVENDEDORID(+)' +
      ' ='#13#10'       PP_CLASSENIVEL.CLASSEVENDEDOR1ID'#13#10'       AND PP_CLASS' +
      'EVENDEDOR2.CLASSEVENDEDORID(+) ='#13#10'       PP_CLASSENIVEL.CLASSEVE' +
      'NDEDOR2ID'#13#10'       AND PP_CLASSEVENDEDOR3.CLASSEVENDEDORID(+) ='#13#10 +
      '       PP_CLASSENIVEL.CLASSEVENDEDOR3ID'#13#10'       AND PP_CLASSEVEN' +
      'DEDOR4.CLASSEVENDEDORID(+) ='#13#10'       PP_CLASSENIVEL.CLASSEVENDED' +
      'OR4ID'#13#10'       AND PP_CLASSEVENDEDOR5.CLASSEVENDEDORID(+) ='#13#10'    ' +
      '   PP_CLASSENIVEL.CLASSEVENDEDOR5ID'#13#10'       AND PP_CLASSEVENDEDO' +
      'R6.CLASSEVENDEDORID(+) ='#13#10'       PP_CLASSENIVEL.CLASSEVENDEDOR6I' +
      'D'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 213
    object sqldtsClasseNivelCLASSENIVELID: TBCDField
      FieldName = 'CLASSENIVELID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsClasseNivelCLASSEVENDEDOR1ID: TBCDField
      FieldName = 'CLASSEVENDEDOR1ID'
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR1: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR1'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseNivelNIVELVENDA1: TStringField
      FieldName = 'NIVELVENDA1'
      Size = 1
    end
    object sqldtsClasseNivelPERCENTUAL1: TFMTBCDField
      FieldName = 'PERCENTUAL1'
      Precision = 20
    end
    object sqldtsClasseNivelCLASSEVENDEDOR2ID: TBCDField
      FieldName = 'CLASSEVENDEDOR2ID'
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR2: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR2'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseNivelNIVELVENDA2: TStringField
      FieldName = 'NIVELVENDA2'
      Size = 1
    end
    object sqldtsClasseNivelPERCENTUAL2: TFMTBCDField
      FieldName = 'PERCENTUAL2'
      Precision = 20
    end
    object sqldtsClasseNivelCLASSEVENDEDOR3ID: TBCDField
      FieldName = 'CLASSEVENDEDOR3ID'
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR3: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR3'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseNivelNIVELVENDA3: TStringField
      FieldName = 'NIVELVENDA3'
      Size = 1
    end
    object sqldtsClasseNivelPERCENTUAL3: TFMTBCDField
      FieldName = 'PERCENTUAL3'
      Precision = 20
    end
    object sqldtsClasseNivelCLASSEVENDEDOR4ID: TBCDField
      FieldName = 'CLASSEVENDEDOR4ID'
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR4: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR4'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseNivelNIVELVENDA4: TStringField
      FieldName = 'NIVELVENDA4'
      Size = 1
    end
    object sqldtsClasseNivelPERCENTUAL4: TFMTBCDField
      FieldName = 'PERCENTUAL4'
      Precision = 20
    end
    object sqldtsClasseNivelCLASSEVENDEDOR5ID: TBCDField
      FieldName = 'CLASSEVENDEDOR5ID'
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR5: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR5'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseNivelNIVELVENDA5: TStringField
      FieldName = 'NIVELVENDA5'
      Size = 1
    end
    object sqldtsClasseNivelPERCENTUAL5: TFMTBCDField
      FieldName = 'PERCENTUAL5'
      Precision = 20
    end
    object sqldtsClasseNivelCLASSEVENDEDOR6ID: TBCDField
      FieldName = 'CLASSEVENDEDOR6ID'
      Precision = 8
      Size = 0
    end
    object sqldtsClasseNivelL_DESCRICAOCLASSEVENDEDOR6: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR6'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsClasseNivelNIVELVENDA6: TStringField
      FieldName = 'NIVELVENDA6'
      Size = 1
    end
    object sqldtsClasseNivelPERCENTUAL6: TFMTBCDField
      FieldName = 'PERCENTUAL6'
      Precision = 20
    end
    object sqldtsClasseNivelUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvClasseNivel: TDataSetProvider
    DataSet = sqldtsClasseNivel
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 531
    Top = 211
  end
  object sqldtsPedVendServ: TSQLDataSet
    CommandText = 
      'SELECT PP_PEDVENDSERV.PEDVENDID,'#13#10'       PP_PEDVENDSERV.ITEMID,'#13 +
      #10'       PP_PEDVENDSERV.EMPRESAID,'#13#10'       PP_PEDVENDSERV.SERVICO' +
      'ID,'#13#10'       EF_SERVICO.GRUPOID L_GRUPOID,'#13#10'       PP_PEDVENDSERV' +
      '.DESCRICAOSERVICO,'#13#10'       PP_PEDVENDSERV.VLRSERVICO,'#13#10'       PP' +
      '_PEDVENDSERV.USUARIO'#13#10'  FROM PP_PEDVENDSERV PP_PEDVENDSERV,'#13#10'   ' +
      '    EF_SERVICO EF_SERVICO'#13#10' WHERE EF_SERVICO.EMPRESAID(+) = PP_P' +
      'EDVENDSERV.EMPRESAID'#13#10'       AND EF_SERVICO.SERVICOID(+) = PP_PE' +
      'DVENDSERV.SERVICOID'#13#10'       AND PP_PEDVENDSERV.PEDVENDID = :PEDV' +
      'ENDID'
    DataSource = dsPedVendLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEDVENDID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 416
    Top = 389
    object sqldtsPedVendServPEDVENDID: TStringField
      FieldName = 'PEDVENDID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 9
    end
    object sqldtsPedVendServITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendServEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendServSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendServL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPedVendServDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPedVendServVLRSERVICO: TFMTBCDField
      FieldName = 'VLRSERVICO'
      Precision = 20
    end
    object sqldtsPedVendServUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPercComFunc: TSQLDataSet
    CommandText = 
      'SELECT PP_PERCCOMFUNC.CLASSEVENDEDORID,'#13#10'       PP_CLASSEVENDEDO' +
      'R.DESCRICAO L_DESCRICAOCLASSEVENDEDOR,'#13#10'       PP_PERCCOMFUNC.TI' +
      'POVENDAID,'#13#10'       PP_TIPOVENDA.DESCRICAO L_DESCRICAOTIPOVENDA,'#13 +
      #10'       PP_PERCCOMFUNC.USUARIO'#13#10'  FROM PP_PERCCOMFUNC PP_PERCCOM' +
      'FUNC,'#13#10'       PP_CLASSEVENDEDOR PP_CLASSEVENDEDOR,'#13#10'       PP_TI' +
      'POVENDA PP_TIPOVENDA'#13#10' WHERE PP_CLASSEVENDEDOR.CLASSEVENDEDORID(' +
      '+) = PP_PERCCOMFUNC.CLASSEVENDEDORID'#13#10'       AND PP_TIPOVENDA.TI' +
      'POVENDAID(+) = PP_PERCCOMFUNC.TIPOVENDAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 528
    Top = 429
    object sqldtsPercComFuncCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPercComFuncL_DESCRICAOCLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCRICAOCLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPercComFuncTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPercComFuncL_DESCRICAOTIPOVENDA: TStringField
      FieldName = 'L_DESCRICAOTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPercComFuncUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPercComFunGrupo: TSQLDataSet
    SchemaName = 'GSI'
    CommandText = 
      'SELECT PP_PERCCOMFUNCGRUPO.CLASSEVENDEDORID,'#13#10'       PP_PERCCOMF' +
      'UNCGRUPO.TIPOVENDAID,'#13#10'       PP_PERCCOMFUNCGRUPO.GRUPOID,'#13#10'    ' +
      '   EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'       PP_PERCCOMFUNCGRUPO' +
      '.VLRPERCENTUAL,'#13#10'       PP_PERCCOMFUNCGRUPO.USUARIO'#13#10'  FROM PP_P' +
      'ERCCOMFUNCGRUPO PP_PERCCOMFUNCGRUPO,'#13#10'       EF_GRUPO EF_GRUPO'#13#10 +
      ' WHERE EF_GRUPO.GRUPOID(+) = PP_PERCCOMFUNCGRUPO.GRUPOID'#13#10' AND P' +
      'P_PERCCOMFUNCGRUPO.CLASSEVENDEDORID = :CLASSEVENDEDORID'#13#10' AND PP' +
      '_PERCCOMFUNCGRUPO.TIPOVENDAID = :TIPOVENDAID'
    DataSource = dsPercComFuncLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CLASSEVENDEDORID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TIPOVENDAID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 528
    Top = 472
    object sqldtsPercComFunGrupoCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPercComFunGrupoTIPOVENDAID: TBCDField
      FieldName = 'TIPOVENDAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPercComFunGrupoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPercComFunGrupoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPercComFunGrupoVLRPERCENTUAL: TFMTBCDField
      FieldName = 'VLRPERCENTUAL'
      Precision = 14
      Size = 6
    end
    object sqldtsPercComFunGrupoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPercComFuncLink: TDataSource
    DataSet = sqldtsPercComFunc
    Left = 616
    Top = 429
  end
  object dsprvPercComFunc: TDataSetProvider
    DataSet = sqldtsPercComFunc
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 720
    Top = 429
  end
  object sqldtsVendedorResponsavel: TSQLDataSet
    SchemaName = 'GSI'
    CommandText = 
      'SELECT PP_VENDEDORSUBORDINADO.VENDEDORID,'#13#10'       EF_ENT_VEND.NO' +
      'ME L_NOMEVENDEDOR,'#13#10'       PP_VENDEDORSUBORDINADO.RESPONSAVELID,' +
      #13#10'       EF_ENT_RESP.NOME L_NOMERESPONSAVEL,'#13#10'       PP_VENDEDOR' +
      'SUBORDINADO.USUARIO'#13#10'  FROM PP_VENDEDORSUBORDINADO PP_VENDEDORSU' +
      'BORDINADO,'#13#10'       EF_ENTIDADE EF_ENT_VEND,'#13#10'       EF_ENTIDADE ' +
      'EF_ENT_RESP'#13#10' WHERE PP_VENDEDORSUBORDINADO.VENDEDORID = EF_ENT_V' +
      'END.ENTIDADEID(+) '#13#10'       AND PP_VENDEDORSUBORDINADO.RESPONSAVE' +
      'LID = EF_ENT_RESP.ENTIDADEID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 621
    object sqldtsVendedorResponsavelVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsVendedorResponsavelL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVendedorResponsavelRESPONSAVELID: TBCDField
      FieldName = 'RESPONSAVELID'
      Precision = 8
      Size = 0
    end
    object sqldtsVendedorResponsavelL_NOMERESPONSAVEL: TStringField
      FieldName = 'L_NOMERESPONSAVEL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsVendedorResponsavelUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 10
    end
  end
  object dsprvVendedorResponsavel: TDataSetProvider
    DataSet = sqldtsVendedorResponsavel
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 123
    Top = 621
  end
  object sqldtsDocPendente: TSQLDataSet
    CommandText = 
      'SELECT PP_DOCPENDENTE.DOCPENDENTEID,'#13#10'       PP_DOCPENDENTE.DESC' +
      'RICAO,'#13#10'       PP_DOCPENDENTE.USUARIO'#13#10'  FROM PP_DOCPENDENTE PP_' +
      'DOCPENDENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 224
    Top = 568
    object sqldtsDocPendenteDOCPENDENTEID: TBCDField
      FieldName = 'DOCPENDENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDocPendenteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsDocPendenteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvDocPendente: TDataSetProvider
    DataSet = sqldtsDocPendente
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 320
    Top = 568
  end
  object sqldtsMotivoRecusa: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  MOTIVORECUSAID,'#13#10'  DESCRICAO,'#13#10'  USUARIO'#13#10'  FROM'#13#10'  PP' +
      '_MOTIVORECUSA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 271
    Top = 614
    object sqldtsMotivoRecusaMOTIVORECUSAID: TBCDField
      FieldName = 'MOTIVORECUSAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsMotivoRecusaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsMotivoRecusaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvMotivoRecusa: TDataSetProvider
    DataSet = sqldtsMotivoRecusa
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 399
    Top = 614
  end
  object sqldtsAcompPed: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  PP_ACOMPPED.NUMPEDVENDEDORID,'#13#10'  PP_ACOMPPED.DATAASSIN' +
      'ATURA,'#13#10'  PP_ACOMPPED.CLIENTEID,'#13#10'  PP_ACOMPPED.NOMECLIENTE,'#13#10'  ' +
      'PP_ACOMPPED.DATARECEBPEDIDO,'#13#10'  PP_ACOMPPED.TIPORECEBPEDIDO,'#13#10'  ' +
      'PP_ACOMPPED.DOCPENDENTE,'#13#10'  PP_ACOMPPED.DATAENTREGAFIN,'#13#10'  PP_AC' +
      'OMPPED.DATARETORNOFIN,'#13#10'  PP_ACOMPPED.MOTIVORECUSAID,'#13#10'  PP_MOTI' +
      'VORECUSA.DESCRICAO L_DESCRMOTIVORECUSA,'#13#10'  PP_ACOMPPED.MOTIVOREC' +
      'USA2ID,'#13#10'  PP_MOTIVORECUSA2.DESCRICAO L_DESCRMOTIVORECUSA2,'#13#10'  P' +
      'P_ACOMPPED.HISTFINANCEIRO,'#13#10'  PP_ACOMPPED.DATAENVCONTRATO,'#13#10'  PP' +
      '_ACOMPPED.DATARETCONTRATO,'#13#10'  PP_ACOMPPED.CONTRATOOK,'#13#10'  PP_ACOM' +
      'PPED.TIPODOCRETORNO,'#13#10'  PP_ACOMPPED.DATAENTREGA,'#13#10'  PP_ACOMPPED.' +
      'DATAFATURAMENTO,'#13#10'  PP_ACOMPPED.DATAPREVENTREGA,'#13#10'  PP_ACOMPPED.' +
      'OBSERVA'#199#195'O,'#13#10'  PP_PEDVEND.PEDVENDID L_PEDVENDID,'#13#10'  PP_PEDVEND.O' +
      'RIGEMVENDAID L_ORIGEMVENDAID,'#13#10'  PP_ORIGEMVENDA.DESCRICAO L_DESC' +
      'RORIGEMVENDA,'#13#10'  PP_PEDVEND.TIPOVENDAID L_TIPOVENDAID,'#13#10'  PP_TIP' +
      'OVENDA.DESCRICAO L_DESCRTIPOVENDA,'#13#10'  PP_PEDVEND.CLIENTEID L_CLI' +
      'ENTEID,'#13#10'  EF_ENTIDADE.NOME L_NOMECLIENTE,'#13#10'  EF_ENTIDADE.CPFCNP' +
      'J L_CPFCNPJ,'#13#10'  PP_PEDVEND.CIDADEORIG L_CIDADEORIG,'#13#10'  PP_PEDVEN' +
      'D.SIGLAUFORIGID L_SIGLAUFORIGID,'#13#10'  PP_PEDVEND.DESTINATARIOID L_' +
      'DESTINATARIOID,'#13#10'  EF_ENT_DEST.NOME L_NOMEDESTINATARIO,'#13#10'  EF_EN' +
      'T_DEST.CPFCNPJ L_CPFCNPJDESTINATARIO,'#13#10'  PP_PEDVEND.EMPRESAID L_' +
      'EMPRESAID,'#13#10'  PP_PEDVEND.PDSID L_PDSID,'#13#10'  EF_NFS.NFSID L_NFSID,' +
      #13#10'  EF_NFS.DATAEMISSAOID L_DATAEMISSAOID,'#13#10'  PP_PEDVEND.DATAPEDI' +
      'DOPDSID L_DATAPEDIDOPDSID,'#13#10'  PP_PEDVEND.VLRTOTALGERAL L_VLRTOTA' +
      'LGERAL,'#13#10'  PP_PEDVEND.VLRTOTALVENDA L_VLRTOTALVENDA,'#13#10'  PP_ACOMP' +
      'PED.USUARIO,'#13#10'  PP_ACOMPPED.VLRTOTAL'#13#10'  FROM'#13#10'  PP_ACOMPPED PP_A' +
      'COMPPED,'#13#10'  PP_MOTIVORECUSA PP_MOTIVORECUSA,'#13#10'  PP_MOTIVORECUSA ' +
      'PP_MOTIVORECUSA2,'#13#10'  PP_PEDVEND PP_PEDVEND,'#13#10'  PP_ORIGEMVENDA PP' +
      '_ORIGEMVENDA,'#13#10'  PP_TIPOVENDA PP_TIPOVENDA,'#13#10'  EF_ENTIDADE EF_EN' +
      'TIDADE,'#13#10'  EF_ENTIDADE EF_ENT_DEST,'#13#10'  EF_NFS'#13#10' WHERE'#13#10'  PP_MOTI' +
      'VORECUSA.MOTIVORECUSAID(+) = PP_ACOMPPED.MOTIVORECUSAID'#13#10'  AND P' +
      'P_MOTIVORECUSA2.MOTIVORECUSAID(+) = PP_ACOMPPED.MOTIVORECUSA2ID'#13 +
      #10'  AND PP_ACOMPPED.NUMPEDVENDEDORID = PP_PEDVEND.NUMPEDVENDEDORI' +
      'D(+)'#13#10'  AND PP_ORIGEMVENDA.ORIGEMVENDAID(+) = PP_PEDVEND.ORIGEMV' +
      'ENDAID'#13#10'  AND PP_TIPOVENDA.TIPOVENDAID(+) = PP_PEDVEND.TIPOVENDA' +
      'ID'#13#10'  AND EF_ENTIDADE.ENTIDADEID(+) = PP_PEDVEND.CLIENTEID'#13#10'  AN' +
      'D EF_ENT_DEST.ENTIDADEID(+) = PP_PEDVEND.DESTINATARIOID'#13#10'  AND P' +
      'P_PEDVEND.EMPRESAID = EF_NFS.EMPRESAID(+)'#13#10'  AND PP_PEDVEND.PDSI' +
      'D = EF_NFS.PDSID(+)'#13#10'  AND PP_PEDVEND.DATAPEDIDOPDSID = EF_NFS.D' +
      'ATAPEDIDO(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 528
    Top = 518
    object sqldtsAcompPedNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsAcompPedDATAASSINATURA: TSQLTimeStampField
      FieldName = 'DATAASSINATURA'
    end
    object sqldtsAcompPedCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 100
    end
    object sqldtsAcompPedDATARECEBPEDIDO: TSQLTimeStampField
      FieldName = 'DATARECEBPEDIDO'
    end
    object sqldtsAcompPedTIPORECEBPEDIDO: TStringField
      FieldName = 'TIPORECEBPEDIDO'
      Size = 1
    end
    object sqldtsAcompPedDOCPENDENTE2: TBCDField
      FieldName = 'DOCPENDENTE'
      Precision = 1
      Size = 0
    end
    object sqldtsAcompPedDATAENTREGAFIN: TSQLTimeStampField
      FieldName = 'DATAENTREGAFIN'
    end
    object sqldtsAcompPedDATARETORNOFIN: TSQLTimeStampField
      FieldName = 'DATARETORNOFIN'
    end
    object sqldtsAcompPedMOTIVORECUSAID: TBCDField
      FieldName = 'MOTIVORECUSAID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_DESCRMOTIVORECUSA: TStringField
      FieldName = 'L_DESCRMOTIVORECUSA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedMOTIVORECUSA2ID: TBCDField
      FieldName = 'MOTIVORECUSA2ID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_DESCRMOTIVORECUSA2: TStringField
      FieldName = 'L_DESCRMOTIVORECUSA2'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedHISTFINANCEIRO: TMemoField
      FieldName = 'HISTFINANCEIRO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsAcompPedDATAENVCONTRATO: TSQLTimeStampField
      FieldName = 'DATAENVCONTRATO'
    end
    object sqldtsAcompPedDATARETCONTRATO: TSQLTimeStampField
      FieldName = 'DATARETCONTRATO'
    end
    object sqldtsAcompPedCONTRATOOK: TBCDField
      FieldName = 'CONTRATOOK'
      Precision = 1
      Size = 0
    end
    object sqldtsAcompPedTIPODOCRETORNO: TStringField
      FieldName = 'TIPODOCRETORNO'
      Size = 1
    end
    object sqldtsAcompPedDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object sqldtsAcompPedDATAFATURAMENTO: TSQLTimeStampField
      FieldName = 'DATAFATURAMENTO'
    end
    object sqldtsAcompPedDATAPREVENTREGA: TSQLTimeStampField
      FieldName = 'DATAPREVENTREGA'
    end
    object sqldtsAcompPedL_PEDVENDID: TStringField
      FieldName = 'L_PEDVENDID'
      ProviderFlags = []
      Size = 9
    end
    object sqldtsAcompPedL_ORIGEMVENDAID: TBCDField
      FieldName = 'L_ORIGEMVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_DESCRORIGEMVENDA: TStringField
      FieldName = 'L_DESCRORIGEMVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedL_TIPOVENDAID: TBCDField
      FieldName = 'L_TIPOVENDAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_DESCRTIPOVENDA: TStringField
      FieldName = 'L_DESCRTIPOVENDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedL_CLIENTEID: TBCDField
      FieldName = 'L_CLIENTEID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsAcompPedL_CIDADEORIG: TStringField
      FieldName = 'L_CIDADEORIG'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsAcompPedL_SIGLAUFORIGID: TStringField
      FieldName = 'L_SIGLAUFORIGID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsAcompPedL_DESTINATARIOID: TBCDField
      FieldName = 'L_DESTINATARIOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_NOMEDESTINATARIO: TStringField
      FieldName = 'L_NOMEDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedL_CPFCNPJDESTINATARIO: TStringField
      FieldName = 'L_CPFCNPJDESTINATARIO'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsAcompPedL_EMPRESAID: TBCDField
      FieldName = 'L_EMPRESAID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_PDSID: TBCDField
      FieldName = 'L_PDSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_NFSID: TBCDField
      FieldName = 'L_NFSID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedL_DATAEMISSAOID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAOID'
      ProviderFlags = []
    end
    object sqldtsAcompPedL_DATAPEDIDOPDSID: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDOPDSID'
      ProviderFlags = []
    end
    object sqldtsAcompPedL_VLRTOTALGERAL: TBCDField
      FieldName = 'L_VLRTOTALGERAL'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsAcompPedL_VLRTOTALVENDA: TBCDField
      FieldName = 'L_VLRTOTALVENDA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsAcompPedOBSERVAO: TMemoField
      FieldName = 'OBSERVA'#199#195'O'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsAcompPedVLRTOTAL: TFMTBCDField
      FieldName = 'VLRTOTAL'
      Precision = 32
    end
    object sqldtsAcompPedUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvAcompPed: TDataSetProvider
    DataSet = sqldtsAcompPed
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 566
  end
  object dsAcompPedLink: TDataSource
    DataSet = sqldtsAcompPed
    Left = 640
    Top = 518
  end
  object sqldtsAcompPedDocPendente: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  PP_ACOMPPEDDOCPEND.NUMPEDVENDEDORID,'#13#10'  PP_ACOMPPEDDOC' +
      'PEND.ITEMID,'#13#10'  PP_ACOMPPEDDOCPEND.DATAREGISTRO,'#13#10'  PP_ACOMPPEDD' +
      'OCPEND.DOCPENDENTEID,'#13#10'  PP_DOCPENDENTE.DESCRICAO L_DESCRDOCPEND' +
      'ENTE,'#13#10'  PP_ACOMPPEDDOCPEND.DESCRICAO,'#13#10'  PP_ACOMPPEDDOCPEND.DAT' +
      'AULTATUAL,'#13#10'  PP_ACOMPPEDDOCPEND.RESOLVIDO,'#13#10'  PP_ACOMPPEDDOCPEN' +
      'D.DATARESOLUCAO,'#13#10'  PP_ACOMPPEDDOCPEND.USUARIORESOLUCAO,'#13#10'  PP_A' +
      'COMPPEDDOCPEND.USUARIO  '#13#10'  FROM'#13#10'  PP_ACOMPPEDDOCPEND PP_ACOMPP' +
      'EDDOCPEND,'#13#10'  PP_DOCPENDENTE PP_DOCPENDENTE'#13#10' WHERE'#13#10'  PP_DOCPEN' +
      'DENTE.DOCPENDENTEID(+) = PP_ACOMPPEDDOCPEND.DOCPENDENTEID'#13#10'  AND' +
      ' PP_ACOMPPEDDOCPEND.NUMPEDVENDEDORID = :NUMPEDVENDEDORID'
    DataSource = dsAcompPedLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUMPEDVENDEDORID'
        ParamType = ptInput
        Value = Null
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 528
    Top = 566
    object sqldtsAcompPedDocPendenteNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsAcompPedDocPendenteITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedDocPendenteDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
    end
    object sqldtsAcompPedDocPendenteDOCPENDENTEID: TBCDField
      FieldName = 'DOCPENDENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedDocPendenteL_DESCRDOCPENDENTE: TStringField
      FieldName = 'L_DESCRDOCPENDENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedDocPendenteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object sqldtsAcompPedDocPendenteDATAULTATUAL: TSQLTimeStampField
      FieldName = 'DATAULTATUAL'
    end
    object sqldtsAcompPedDocPendenteRESOLVIDO: TBCDField
      FieldName = 'RESOLVIDO'
      Precision = 1
      Size = 0
    end
    object sqldtsAcompPedDocPendenteDATARESOLUCAO: TSQLTimeStampField
      FieldName = 'DATARESOLUCAO'
    end
    object sqldtsAcompPedDocPendenteUSUARIORESOLUCAO: TStringField
      FieldName = 'USUARIORESOLUCAO'
    end
    object sqldtsAcompPedDocPendenteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAcompPedVend: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  PP_ACOMPPEDVEND.NUMPEDVENDEDORID,'#13#10'  PP_ACOMPPEDVEND.I' +
      'TEMID,'#13#10'  PP_ACOMPPEDVEND.VENDEDORID,'#13#10'  EF_ENTIDADE.NOME L_NOME' +
      'VENDEDOR,'#13#10'  PP_CLASSEVENDEDOR.DESCRICAO L_DESCR_CLASSEVENDEDOR,' +
      #13#10'  PP_ACOMPPEDVEND.CLASSEVENDEDORID,'#13#10'  PP_ACOMPPEDVEND.USUARIO' +
      '  '#13#10'  FROM'#13#10'  PP_ACOMPPEDVEND PP_ACOMPPEDVEND,'#13#10'  PP_CLASSEVENDE' +
      'DOR PP_CLASSEVENDEDOR,'#13#10'  EF_ENTIDADE EF_ENTIDADE'#13#10' WHERE'#13#10'  PP_' +
      'CLASSEVENDEDOR.CLASSEVENDEDORID(+) = PP_ACOMPPEDVEND.CLASSEVENDE' +
      'DORID'#13#10'  AND EF_ENTIDADE.ENTIDADEID(+) = PP_ACOMPPEDVEND.VENDEDO' +
      'RID'#13#10'  AND PP_ACOMPPEDVEND.NUMPEDVENDEDORID = :NUMPEDVENDEDORID'
    DataSource = dsAcompPedLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUMPEDVENDEDORID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 528
    Top = 614
    object sqldtsAcompPedVendNUMPEDVENDEDORID: TStringField
      FieldName = 'NUMPEDVENDEDORID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsAcompPedVendITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedVendVENDEDORID: TBCDField
      FieldName = 'VENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedVendL_NOMEVENDEDOR: TStringField
      FieldName = 'L_NOMEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedVendCLASSEVENDEDORID: TBCDField
      FieldName = 'CLASSEVENDEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsAcompPedVendL_DESCR_CLASSEVENDEDOR: TStringField
      FieldName = 'L_DESCR_CLASSEVENDEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAcompPedVendUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
end
