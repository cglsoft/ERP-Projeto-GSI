object SrvAppAS: TSrvAppAS
  OldCreateOrder = False
  Height = 456
  Width = 326
  object sqldtsUsuario: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT AS_USUARIO.USUARIOID,'#13#10'       AS_USUARIO.ENTIDADEID,'#13#10'   ' +
      '    EF_ENTIDADE.NOME AS L_NOME,'#13#10'       AS_USUARIO.EMPRESAID,'#13#10' ' +
      '      EF_EMPRESA.NOMEFANTASIA L_NOMEFANTASIA,'#13#10'       AS_USUARIO' +
      '.SENHA,'#13#10'       AS_USUARIO.PASSWORD,'#13#10'       AS_USUARIO.EMAIL,'#13#10 +
      '       AS_USUARIO.REQUERSENHA,'#13#10'       AS_USUARIO.BLOQUEADO,'#13#10'  ' +
      '     AS_USUARIO.BLOQMSG,'#13#10'       AS_USUARIO.FOTO,'#13#10'       AS_USU' +
      'ARIO.ACESSOTOTAL,'#13#10'       AS_USUARIO.MUDARSENHA,'#13#10'       AS_USUA' +
      'RIO.PORTALVISAOID,'#13#10'       AS_USUARIO.NIVELACESSOPORTALID,'#13#10'    ' +
      '   AS_USUARIO.NIVELACESSOPORTAL'#13#10'  FROM AS_USUARIO AS_USUARIO,'#13#10 +
      '       EF_ENTIDADE EF_ENTIDADE,'#13#10'       EF_EMPRESA EF_EMPRESA'#13#10' ' +
      'WHERE EF_ENTIDADE.ENTIDADEID(+) = AS_USUARIO.ENTIDADEID'#13#10'       ' +
      'AND EF_EMPRESA.EMPRESAID(+) = AS_USUARIO.EMPRESAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 8
    object sqldtsUsuarioUSUARIOID: TStringField
      FieldName = 'USUARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsUsuarioENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsUsuarioL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsUsuarioEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsUsuarioL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object sqldtsUsuarioPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 50
    end
    object sqldtsUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sqldtsUsuarioREQUERSENHA: TBCDField
      FieldName = 'REQUERSENHA'
      Precision = 1
      Size = 0
    end
    object sqldtsUsuarioBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object sqldtsUsuarioBLOQMSG: TStringField
      FieldName = 'BLOQMSG'
      Size = 100
    end
    object sqldtsUsuarioFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftOraBlob
      Size = 1
    end
    object sqldtsUsuarioACESSOTOTAL: TBCDField
      FieldName = 'ACESSOTOTAL'
      Precision = 1
      Size = 0
    end
    object sqldtsUsuarioMUDARSENHA: TBCDField
      FieldName = 'MUDARSENHA'
      Precision = 1
      Size = 0
    end
    object sqldtsUsuarioPORTALVISAOID: TBCDField
      FieldName = 'PORTALVISAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsUsuarioNIVELACESSOPORTALID: TBCDField
      FieldName = 'NIVELACESSOPORTALID'
      Precision = 8
      Size = 0
    end
  end
  object sqldtsDireito: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'  AS_DIREITO.DIREITOID,'#13#10'  AS_DIREITO.DIREITOSECUNDARIOI' +
      'D,'#13#10'  AS_DIREITO.TIPO,'#13#10'  AS_DIREITO.DESCRICAO'#13#10'  FROM'#13#10'  AS_DIR' +
      'EITO AS_DIREITO'
    MaxBlobSize = -1
    Params = <>
    SortFieldNames = 'DIREITOID, DIREITOSECUNDARIOID'
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 104
    object sqldtsDireitoDIREITOID: TStringField
      FieldName = 'DIREITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sqldtsDireitoDIREITOSECUNDARIOID: TStringField
      FieldName = 'DIREITOSECUNDARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sqldtsDireitoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqldtsDireitoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object sqldtsUsuarioDireito: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'  AS_USUARIODIREITO.USUARIOID,'#13#10'  AS_USUARIODIREITO.DIRE' +
      'ITOID,'#13#10'  AS_USUARIODIREITO.DIREITOSECUNDARIOID'#13#10'  FROM'#13#10'  AS_US' +
      'UARIODIREITO AS_USUARIODIREITO'#13#10'WHERE'#13#10'  AS_USUARIODIREITO.USUAR' +
      'IOID = :USUARIOID'
    DataSource = dsUsuariosLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIOID'
        ParamType = ptInput
        Size = 21
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 56
    object sqldtsUsuarioDireitoUSUARIOID: TStringField
      FieldName = 'USUARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsUsuarioDireitoDIREITOID: TStringField
      FieldName = 'DIREITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object sqldtsUsuarioDireitoDIREITOSECUNDARIOID: TStringField
      FieldName = 'DIREITOSECUNDARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
  end
  object dsprvUsuario: TDataSetProvider
    DataSet = sqldtsUsuario
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 8
  end
  object dsprvDireito: TDataSetProvider
    DataSet = sqldtsDireito
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 104
  end
  object dsUsuariosLink: TDataSource
    DataSet = sqldtsUsuario
    Left = 128
    Top = 8
  end
  object sqldtsDicionario: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'  AS_DICIONARIO.DICIONARIOID,'#13#10'  AS_DICIONARIO.NOMETABEL' +
      'A,'#13#10'  AS_DICIONARIO.NOMETABELAPESQ,'#13#10'  AS_DICIONARIO.NOMECAMPO,'#13 +
      #10'  AS_DICIONARIO.NOVONOMECAMPO,'#13#10'  AS_DICIONARIO.NOMECAMPOTABELA' +
      'PESQ,'#13#10'  AS_DICIONARIO.ITENS,'#13#10'  AS_DICIONARIO.TITULOITENS'#13#10'  FR' +
      'OM'#13#10'  AS_DICIONARIO AS_DICIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 200
    object sqldtsDicionarioDICIONARIOID: TBCDField
      FieldName = 'DICIONARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDicionarioNOMETABELA: TStringField
      FieldName = 'NOMETABELA'
      Size = 50
    end
    object sqldtsDicionarioNOMECAMPO: TStringField
      FieldName = 'NOMECAMPO'
      Size = 50
    end
    object sqldtsDicionarioNOMETABELAPESQ: TStringField
      FieldName = 'NOMETABELAPESQ'
      Size = 50
    end
    object sqldtsDicionarioNOMECAMPOTABELAPESQ: TStringField
      FieldName = 'NOMECAMPOTABELAPESQ'
      Size = 50
    end
    object sqldtsDicionarioNOVONOMECAMPO: TStringField
      FieldName = 'NOVONOMECAMPO'
      Size = 50
    end
    object sqldtsDicionarioITENS: TStringField
      FieldName = 'ITENS'
      Size = 200
    end
    object sqldtsDicionarioTITULOITENS: TStringField
      FieldName = 'TITULOITENS'
      Size = 200
    end
  end
  object dsprvDicionario: TDataSetProvider
    DataSet = sqldtsDicionario
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 200
  end
  object dsprvUserAtivo: TDataSetProvider
    DataSet = sqldtsUserAtivo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 248
  end
  object sqldtsUserAtivo: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT'#13#10'  AS_USERATIVO.USERATIVOID,'#13#10'  AS_USERATIVO.USUARIOID,'#13#10 +
      '  AS_USERATIVO.DATACONECCAO,'#13#10'  AS_USERATIVO.IP,'#13#10'  AS_USERATIVO' +
      '.NOMEMAQUINA'#13#10'  FROM'#13#10'  AS_USERATIVO AS_USERATIVO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 42
    Top = 248
    object sqldtsUserAtivoUSERATIVOID: TBCDField
      FieldName = 'USERATIVOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsUserAtivoUSUARIOID: TStringField
      FieldName = 'USUARIOID'
    end
    object sqldtsUserAtivoDATACONECCAO: TSQLTimeStampField
      FieldName = 'DATACONECCAO'
    end
    object sqldtsUserAtivoIP: TStringField
      FieldName = 'IP'
      Size = 50
    end
    object sqldtsUserAtivoNOMEMAQUINA: TStringField
      FieldName = 'NOMEMAQUINA'
      Size = 50
    end
  end
  object sqldtsConfig: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  AS_CONFIG.EMPRESAID,'#13#10'  EF_EMPRESA.NOMEFANTASIA L_NOME' +
      'FANTASIA,'#13#10'  AS_CONFIG.TIPOOSID,'#13#10'  OS_TIPOOS_ABERTURA.DESCRICAO' +
      ' L_TIPOOS_ABERTURA,'#13#10'  AS_CONFIG.FILIALID,'#13#10'  EF_FILIAL.NOMEFANT' +
      'ASIA L_FILIAL,'#13#10'  AS_CONFIG.TIPOOSGARANTIAID,'#13#10'  OS_TIPOOS_GARAN' +
      'TIA.DESCRICAO L_TIPOOS_GARANTIA,'#13#10'  AS_CONFIG.STATUS,'#13#10'  AS_CONF' +
      'IG.DIRETORIOEXPORT,'#13#10'  AS_CONFIG.DIASVALIDADEOS,'#13#10'  AS_CONFIG.ME' +
      'SATUAL,'#13#10'  AS_CONFIG.VLRDIARIA,'#13#10'  AS_CONFIG.VLRREFEICOES,'#13#10'  AS' +
      '_CONFIG.VLRKM,'#13#10'  AS_CONFIG.KMID,'#13#10'  RD_OP_KM.DESCRICAO L_KM,'#13#10' ' +
      ' AS_CONFIG.ADIANTAMENTOID,'#13#10'  RD_OP_ADIANT.DESCRICAO L_ADIANTAME' +
      'NTO,'#13#10'  AS_CONFIG.MEMOPAGARID,'#13#10'  RD_OP_MEMOPAGAR.DESCRICAO L_ME' +
      'MOPAGAR,'#13#10'  AS_CONFIG.MEMORECEBERID,'#13#10'  RD_OP_MEMORECEBER.DESCRI' +
      'CAO L_MEMORECEBER,'#13#10'  AS_CONFIG.HORASCREDID,'#13#10'  RD_OP_HORASCRED.' +
      'DESCRICAO L_HORASCRED,'#13#10'  AS_CONFIG.PP_MARGEMCABECALHO,'#13#10'  AS_CO' +
      'NFIG.PP_MARGEMPARAGRAFO,'#13#10'  AS_CONFIG.PP_ESTILOFONTE,'#13#10'  AS_CONF' +
      'IG.PP_TAMANHOFONTE,'#13#10'  AS_CONFIG.PP_IMPRIMIR,'#13#10'  AS_CONFIG.PP_VI' +
      'SUALIZAR,'#13#10'  AS_CONFIG.PP_DIRETORIODESTINO,'#13#10'  AS_CONFIG.PP_NOME' +
      'GERENTE,'#13#10'  AS_CONFIG.PP_CARGO,'#13#10'  AS_CONFIG.RS_DATAFECHAMENTO,'#13 +
      #10'  AS_CONFIG.HTMLPORTAL'#13#10'  FROM'#13#10'  AS_CONFIG AS_CONFIG,'#13#10'  OS_TI' +
      'POOS OS_TIPOOS_ABERTURA,'#13#10'  OS_TIPOOS OS_TIPOOS_GARANTIA,'#13#10'  EF_' +
      'FILIAL EF_FILIAL,'#13#10'  RD_OPERACAO RD_OP_KM,'#13#10'  RD_OPERACAO RD_OP_' +
      'ADIANT,'#13#10'  RD_OPERACAO RD_OP_MEMOPAGAR,'#13#10'  RD_OPERACAO RD_OP_MEM' +
      'ORECEBER,'#13#10'  RD_OPERACAO RD_OP_HORASCRED,'#13#10'  EF_EMPRESA EF_EMPRE' +
      'SA'#13#10' WHERE'#13#10'  AS_CONFIG.TIPOOSID = OS_TIPOOS_ABERTURA.TIPOOSID(+' +
      ')'#13#10'  AND AS_CONFIG.TIPOOSGARANTIAID = OS_TIPOOS_GARANTIA.TIPOOSI' +
      'D(+)'#13#10'  AND EF_FILIAL.FILIALID (+) = AS_CONFIG.FILIALID'#13#10'  AND R' +
      'D_OP_KM.OPERACAOID (+) = AS_CONFIG.KMID'#13#10'  AND RD_OP_ADIANT.OPER' +
      'ACAOID (+) = AS_CONFIG.ADIANTAMENTOID'#13#10'  AND RD_OP_MEMOPAGAR.OPE' +
      'RACAOID (+) = AS_CONFIG.MEMOPAGARID'#13#10'  AND RD_OP_MEMORECEBER.OPE' +
      'RACAOID (+) = AS_CONFIG.MEMORECEBERID'#13#10'  AND RD_OP_HORASCRED.OPE' +
      'RACAOID (+) = AS_CONFIG.HORASCREDID'#13#10'  AND EF_EMPRESA.EMPRESAID(' +
      '+) = AS_CONFIG.EMPRESAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 152
    object sqldtsConfigEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsConfigTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Size = 1
    end
    object sqldtsConfigL_TIPOOS_ABERTURA: TStringField
      FieldName = 'L_TIPOOS_ABERTURA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsConfigTIPOOSGARANTIAID: TStringField
      FieldName = 'TIPOOSGARANTIAID'
      Size = 1
    end
    object sqldtsConfigL_TIPOOS_GARANTIA: TStringField
      FieldName = 'L_TIPOOS_GARANTIA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigDIRETORIOEXPORT: TStringField
      FieldName = 'DIRETORIOEXPORT'
      Size = 40
    end
    object sqldtsConfigDIASVALIDADEOS: TBCDField
      FieldName = 'DIASVALIDADEOS'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigMESATUAL: TBCDField
      FieldName = 'MESATUAL'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigVLRDIARIA: TBCDField
      FieldName = 'VLRDIARIA'
      Precision = 14
      Size = 2
    end
    object sqldtsConfigVLRREFEICOES: TBCDField
      FieldName = 'VLRREFEICOES'
      Precision = 14
      Size = 2
    end
    object sqldtsConfigVLRKM: TBCDField
      FieldName = 'VLRKM'
      Precision = 14
      Size = 2
    end
    object sqldtsConfigKMID: TBCDField
      FieldName = 'KMID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_KM: TStringField
      FieldName = 'L_KM'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_ADIANTAMENTO: TStringField
      FieldName = 'L_ADIANTAMENTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigMEMOPAGARID: TBCDField
      FieldName = 'MEMOPAGARID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_MEMOPAGAR: TStringField
      FieldName = 'L_MEMOPAGAR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigMEMORECEBERID: TBCDField
      FieldName = 'MEMORECEBERID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_MEMORECEBER: TStringField
      FieldName = 'L_MEMORECEBER'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigHORASCREDID: TBCDField
      FieldName = 'HORASCREDID'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigL_HORASCRED: TStringField
      FieldName = 'L_HORASCRED'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsConfigPP_MARGEMCABECALHO: TBCDField
      FieldName = 'PP_MARGEMCABECALHO'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_MARGEMPARAGRAFO: TBCDField
      FieldName = 'PP_MARGEMPARAGRAFO'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_ESTILOFONTE: TStringField
      FieldName = 'PP_ESTILOFONTE'
      Size = 100
    end
    object sqldtsConfigPP_TAMANHOFONTE: TBCDField
      FieldName = 'PP_TAMANHOFONTE'
      Precision = 8
      Size = 0
    end
    object sqldtsConfigPP_IMPRIMIR: TBCDField
      FieldName = 'PP_IMPRIMIR'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigPP_VISUALIZAR: TBCDField
      FieldName = 'PP_VISUALIZAR'
      Precision = 1
      Size = 0
    end
    object sqldtsConfigPP_DIRETORIODESTINO: TStringField
      FieldName = 'PP_DIRETORIODESTINO'
      Size = 250
    end
    object sqldtsConfigPP_NOMEGERENTE: TStringField
      FieldName = 'PP_NOMEGERENTE'
      Size = 100
    end
    object sqldtsConfigPP_CARGO: TStringField
      FieldName = 'PP_CARGO'
      Size = 100
    end
    object sqldtsConfigRS_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'RS_DATAFECHAMENTO'
    end
    object sqldtsConfigHTMLPORTAL: TMemoField
      FieldName = 'HTMLPORTAL'
      BlobType = ftOraClob
      Size = 1
    end
  end
  object dsprvConfig: TDataSetProvider
    DataSet = sqldtsConfig
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 224
    Top = 152
  end
  object sqldtsPesquisa: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  PESQUISAID,'#13#10'  NOMEPESQUISA,'#13#10'  TABELADICIONARIOID,'#13#10' ' +
      ' ISQL,'#13#10'  DATACRIACAO,'#13#10'  DATAALTERACAO,'#13#10'  USUARIO'#13#10'  FROM'#13#10'  A' +
      'S_PESQUISA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 304
    object sqldtsPesquisaPESQUISAID: TBCDField
      FieldName = 'PESQUISAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPesquisaNOMEPESQUISA: TStringField
      FieldName = 'NOMEPESQUISA'
      Size = 100
    end
    object sqldtsPesquisaTABELADICIONARIOID: TStringField
      FieldName = 'TABELADICIONARIOID'
      Size = 50
    end
    object sqldtsPesquisaISQL: TMemoField
      FieldName = 'ISQL'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPesquisaDATACRIACAO: TSQLTimeStampField
      FieldName = 'DATACRIACAO'
    end
    object sqldtsPesquisaDATAALTERACAO: TSQLTimeStampField
      FieldName = 'DATAALTERACAO'
    end
    object sqldtsPesquisaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvPesquisa: TDataSetProvider
    DataSet = sqldtsPesquisa
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 304
  end
  object sqldtsPesqGenerica: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 360
  end
  object dsprvPesqGenerica: TDataSetProvider
    DataSet = sqldtsPesqGenerica
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 360
  end
end
