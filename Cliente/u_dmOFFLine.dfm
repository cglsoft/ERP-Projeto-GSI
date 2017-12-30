object dmOFFLine: TdmOFFLine
  Tag = 1
  OldCreateOrder = False
  Height = 514
  Width = 555
  object dsAdiantamento: TDataSource
    DataSet = cdsAdiantamento
    Left = 288
    Top = 3
  end
  object cdsOperacao: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 30
    Top = 56
    object cdsOperacaoOPERACAOID: TBCDField
      DisplayWidth = 9
      FieldName = 'OPERACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOperacaoFINALIDADE: TStringField
      DisplayWidth = 1
      FieldName = 'FINALIDADE'
      Size = 1
    end
    object cdsOperacaoDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsOperacaoCONTACONTABILID: TStringField
      DisplayWidth = 10
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsOperacaoOPERACAO: TStringField
      DisplayWidth = 1
      FieldName = 'OPERACAO'
      Size = 1
    end
    object cdsOperacaoBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsOperacaoLANCEXCLUSIVO: TBCDField
      FieldName = 'LANCEXCLUSIVO'
      Precision = 1
      Size = 0
    end
    object cdsOperacaoUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsOperacao: TDataSource
    DataSet = cdsOperacao
    Left = 120
    Top = 56
  end
  object cdsEntidade: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 30
    Top = 111
    object cdsEntidadeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsEntidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsEntidadeFILIALID: TBCDField
      FieldName = 'FILIALID'
      Size = 0
    end
    object cdsEntidadeHORASCFGTRABID: TBCDField
      FieldName = 'HORASCFGTRABID'
      Size = 0
    end
    object cdsEntidadeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsEntidade: TDataSource
    DataSet = cdsEntidade
    Left = 120
    Top = 111
  end
  object cdsAdiantamento: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforeEdit = cdsAdiantamentoBeforeEdit
    BeforePost = cdsAdiantamentoBeforePost
    BeforeDelete = cdsAdiantamentoBeforeDelete
    OnCalcFields = cdsAdiantamentoCalcFields
    OnNewRecord = cdsAdiantamentoNewRecord
    Left = 196
    Top = 3
    object cdsAdiantamentoADIANTAMENTOID: TBCDField
      DisplayLabel = 'Adiantamento Id'
      DisplayWidth = 9
      FieldName = 'ADIANTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoDATADEPOSITO: TSQLTimeStampField
      DisplayLabel = 'Data Documento'
      DisplayWidth = 34
      FieldName = 'DATADEPOSITO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsAdiantamentoDATASOLICITACAO: TSQLTimeStampField
      DisplayLabel = 'Data Solicita'#231#227'o'
      DisplayWidth = 34
      FieldName = 'DATASOLICITACAO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsAdiantamentoFUNCIONARIOID: TBCDField
      DisplayLabel = 'Funcion'#225'rio Id'
      DisplayWidth = 9
      FieldName = 'FUNCIONARIOID'
      Required = True
      OnValidate = cdsAdiantamentoFUNCIONARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoL_NOMEFUNCIONARIO: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldKind = fkLookup
      FieldName = 'L_NOMEFUNCIONARIO'
      LookupDataSet = cdsEntidade
      LookupKeyFields = 'ENTIDADEID'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCIONARIOID'
      Size = 100
      Lookup = True
    end
    object cdsAdiantamentoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsAdiantamentoTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsAdiantamentoOSID: TStringField
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsAdiantamentoHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 200
      FieldName = 'HISTORICO'
      Required = True
      Size = 200
    end
    object cdsAdiantamentoHORASOLICITADA: TSQLTimeStampField
      DisplayLabel = 'Hora Solicitada'
      DisplayWidth = 34
      FieldName = 'HORASOLICITADA'
      DisplayFormat = 'T'
      EditMask = '!90:00;1;_'
    end
    object cdsAdiantamentoKMSAIDA: TBCDField
      DisplayLabel = 'Km Sa'#237'da'
      DisplayWidth = 9
      FieldName = 'KMSAIDA'
      OnValidate = cdsAdiantamentoKMSAIDAValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoKMCHEGADA: TBCDField
      DisplayLabel = 'Km Chegada'
      DisplayWidth = 9
      FieldName = 'KMCHEGADA'
      OnValidate = cdsAdiantamentoKMCHEGADAValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoC_KmRodados: TFloatField
      Tag = 1
      DisplayLabel = 'Km Rodados'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'C_KMRODADOS'
      ProviderFlags = []
    end
    object cdsAdiantamentoLIBCHEFIA: TBCDField
      DisplayLabel = 'Lib. Chefia'
      DisplayWidth = 2
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsAdiantamentoLIBERADO: TBCDField
      DisplayLabel = 'Liberado'
      DisplayWidth = 2
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsAdiantamentoNOMELIBCHEFIA: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'NOMELIBCHEFIA'
    end
    object cdsAdiantamentoOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o Id'
      DisplayWidth = 9
      FieldName = 'OPERACAOID'
      Required = True
      OnValidate = cdsAdiantamentoOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAdiantamentoL_DESCRICAOOPERACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'L_DESCRICAOOPERACAO'
      LookupDataSet = cdsOperacao
      LookupKeyFields = 'OPERACAOID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'OPERACAOID'
      Size = 100
      Lookup = True
    end
    object cdsAdiantamentoL_OPERACAO: TStringField
      FieldKind = fkLookup
      FieldName = 'L_OPERACAO'
      LookupDataSet = cdsOperacao
      LookupKeyFields = 'OPERACAOID'
      LookupResultField = 'OPERACAO'
      KeyFields = 'OPERACAOID'
      Size = 1
      Lookup = True
    end
    object cdsAdiantamentoVLROPERACAO: TBCDField
      DisplayLabel = 'Valor Opera'#231#227'o'
      DisplayWidth = 15
      FieldName = 'VLROPERACAO'
      Required = True
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsAdiantamentoPROBLEMATRANSF: TBooleanField
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsAdiantamentoLOGERRO: TMemoField
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsAdiantamentoBLOQUEADO: TIntegerField
      FieldName = 'BLOQUEADO'
    end
    object cdsAdiantamentoIDENTIFSOLIC: TStringField
      FieldName = 'IDENTIFSOLIC'
      Size = 10
    end
    object cdsAdiantamentoUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 20
      FieldName = 'USUARIO'
      Required = True
    end
    object cdsAdiantamentoULT: TAggregateField
      FieldName = 'ULT'
      Active = True
      Expression = 'MAX( ADIANTAMENTOID )'
    end
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 30
    Top = 173
    object cdsConfigEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      Size = 60
    end
    object cdsConfigTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Size = 1
    end
    object cdsConfigL_TIPOOS_ABERTURA: TStringField
      FieldName = 'L_TIPOOS_ABERTURA'
      Size = 100
    end
    object cdsConfigFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      Size = 50
    end
    object cdsConfigTIPOOSGARANTIAID: TStringField
      FieldName = 'TIPOOSGARANTIAID'
      Size = 1
    end
    object cdsConfigL_TIPOOS_GARANTIA: TStringField
      FieldName = 'L_TIPOOS_GARANTIA'
      Size = 100
    end
    object cdsConfigSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object cdsConfigDIRETORIOEXPORT: TStringField
      FieldName = 'DIRETORIOEXPORT'
      Size = 40
    end
    object cdsConfigDIASVALIDADEOS: TBCDField
      FieldName = 'DIASVALIDADEOS'
      Precision = 8
      Size = 0
    end
    object cdsConfigMESATUAL: TBCDField
      FieldName = 'MESATUAL'
      Precision = 8
      Size = 0
    end
    object cdsConfigVLRDIARIA: TBCDField
      FieldName = 'VLRDIARIA'
      Precision = 14
      Size = 2
    end
    object cdsConfigVLRREFEICOES: TBCDField
      FieldName = 'VLRREFEICOES'
      Precision = 14
      Size = 2
    end
    object cdsConfigVLRKM: TBCDField
      FieldName = 'VLRKM'
      Precision = 14
      Size = 2
    end
    object cdsConfigKMID: TBCDField
      FieldName = 'KMID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_KM: TStringField
      FieldName = 'L_KM'
      Size = 100
    end
    object cdsConfigADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_ADIANTAMENTO: TStringField
      FieldName = 'L_ADIANTAMENTO'
      Size = 100
    end
    object cdsConfigMEMOPAGARID: TBCDField
      FieldName = 'MEMOPAGARID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_MEMOPAGAR: TStringField
      FieldName = 'L_MEMOPAGAR'
      Size = 100
    end
    object cdsConfigMEMORECEBERID: TBCDField
      FieldName = 'MEMORECEBERID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_MEMORECEBER: TStringField
      FieldName = 'L_MEMORECEBER'
      Size = 100
    end
    object cdsConfigHORASCREDID: TBCDField
      FieldName = 'HORASCREDID'
      Precision = 8
      Size = 0
    end
    object cdsConfigL_HORASCRED: TStringField
      FieldName = 'L_HORASCRED'
      Size = 100
    end
    object cdsConfigPP_MARGEMCABECALHO: TBCDField
      FieldName = 'PP_MARGEMCABECALHO'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_MARGEMPARAGRAFO: TBCDField
      FieldName = 'PP_MARGEMPARAGRAFO'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_ESTILOFONTE: TStringField
      FieldName = 'PP_ESTILOFONTE'
      Size = 100
    end
    object cdsConfigPP_TAMANHOFONTE: TBCDField
      FieldName = 'PP_TAMANHOFONTE'
      Precision = 8
      Size = 0
    end
    object cdsConfigPP_IMPRIMIR: TBCDField
      FieldName = 'PP_IMPRIMIR'
      Precision = 1
      Size = 0
    end
    object cdsConfigPP_VISUALIZAR: TBCDField
      FieldName = 'PP_VISUALIZAR'
      Precision = 1
      Size = 0
    end
    object cdsConfigPP_DIRETORIODESTINO: TStringField
      FieldName = 'PP_DIRETORIODESTINO'
      Size = 250
    end
    object cdsConfigPP_NOMEGERENTE: TStringField
      FieldName = 'PP_NOMEGERENTE'
      Size = 100
    end
    object cdsConfigPP_CARGO: TStringField
      FieldName = 'PP_CARGO'
      Size = 100
    end
  end
  object dsConfig: TDataSource
    AutoEdit = False
    DataSet = cdsConfig
    Left = 120
    Top = 165
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 3
    object cdsUsuarioUSUARIOID: TStringField
      FieldName = 'USUARIOID'
      Required = True
    end
    object cdsUsuarioENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object cdsUsuarioL_NOME: TStringField
      FieldName = 'L_NOME'
      Size = 100
    end
    object cdsUsuarioSENHA: TStringField
      Tag = 1
      FieldName = 'SENHA'
      Visible = False
      Size = 30
    end
    object cdsUsuarioREQUERSENHA: TBCDField
      FieldName = 'REQUERSENHA'
      Precision = 1
      Size = 0
    end
    object cdsUsuarioBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsUsuarioBLOQMSG: TStringField
      FieldName = 'BLOQMSG'
      Size = 100
    end
    object cdsUsuarioFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftOraBlob
      Size = 1
    end
    object cdsUsuarioACESSOTOTAL: TBCDField
      FieldName = 'ACESSOTOTAL'
      Precision = 1
      Size = 0
    end
    object cdsUsuarioMUDARSENHA: TBCDField
      FieldName = 'MUDARSENHA'
      Precision = 1
      Size = 0
    end
  end
  object cdsBancoHora: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    BeforeEdit = cdsAdiantamentoBeforeEdit
    BeforeDelete = cdsAdiantamentoBeforeDelete
    OnNewRecord = cdsBancoHoraNewRecord
    Left = 196
    Top = 56
    object cdsBancoHoraBANCOHORAID: TBCDField
      Tag = 1
      DisplayLabel = 'BancoHora ID'
      FieldName = 'BANCOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraDATASOLICITACAO: TSQLTimeStampField
      DisplayLabel = 'Dt.Solicit.'
      FieldName = 'DATASOLICITACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsBancoHoraFUNCIONARIOID: TBCDField
      DisplayLabel = 'Funcion'#225'rio ID'
      FieldName = 'FUNCIONARIOID'
      OnValidate = cdsBancoHoraFUNCIONARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraL_NOMEFUNCIONARIO: TStringField
      DisplayLabel = 'Nome Funcionario'
      FieldKind = fkLookup
      FieldName = 'L_NOMEFUNCIONARIO'
      LookupDataSet = cdsEntidade
      LookupKeyFields = 'ENTIDADEID'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCIONARIOID'
      Size = 100
      Lookup = True
    end
    object cdsBancoHoraL_FILIALID: TStringField
      DisplayLabel = 'FilialID'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'L_FILIALID'
      LookupDataSet = cdsEntidade
      LookupKeyFields = 'ENTIDADEID'
      LookupResultField = 'FILIALID'
      KeyFields = 'FUNCIONARIOID'
      Size = 100
      Lookup = True
    end
    object cdsBancoHoraL_HORASCFGTRABID: TIntegerField
      FieldKind = fkLookup
      FieldName = 'L_HORASCFGTRABID'
      LookupDataSet = cdsEntidade
      LookupKeyFields = 'ENTIDADEID'
      LookupResultField = 'HORASCFGTRABID'
      KeyFields = 'FUNCIONARIOID'
      Lookup = True
    end
    object cdsBancoHoraTIPODESPESAOS: TStringField
      DisplayLabel = 'Tipo Desp. OS'
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsBancoHoraOSID: TStringField
      DisplayLabel = 'OS ID'
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsBancoHoraOPERACAOID: TBCDField
      DisplayLabel = 'Opera'#231#227'o ID'
      FieldName = 'OPERACAOID'
      OnValidate = cdsBancoHoraOPERACAOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsBancoHoraL_DESCRICAOOPERACAO: TStringField
      DisplayLabel = 'Descr. Opera'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'L_DESCRICAOOPERACAO'
      LookupDataSet = cdsOperacao
      LookupKeyFields = 'OPERACAOID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'OPERACAOID'
      Size = 100
      Lookup = True
    end
    object cdsBancoHoraL_OPERACAO: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'L_OPERACAO'
      LookupDataSet = cdsOperacao
      LookupKeyFields = 'OPERACAOID'
      LookupResultField = 'OPERACAO'
      KeyFields = 'OPERACAOID'
      Size = 1
      Lookup = True
    end
    object cdsBancoHoraHORAINI: TSQLTimeStampField
      DisplayLabel = 'Hora Inicial'
      FieldName = 'HORAINI'
      OnValidate = cdsBancoHoraHORAFIMValidate
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsBancoHoraHORAFIM: TSQLTimeStampField
      DisplayLabel = 'Hora Final'
      FieldName = 'HORAFIM'
      OnValidate = cdsBancoHoraHORAFIMValidate
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsBancoHoraDIFERENCAHORATRAB: TStringField
      Tag = 1
      DisplayLabel = 'Dif. Hora. Trab'
      FieldName = 'DIFERENCAHORATRAB'
      Required = True
      Size = 7
    end
    object cdsBancoHoraDIFERENCAMINTRAB: TFMTBCDField
      Tag = 1
      DisplayLabel = 'Dif. Min. Trab.'
      FieldName = 'DIFERENCAMINTRAB'
      Required = True
      Precision = 14
      Size = 10
    end
    object cdsBancoHoraHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsBancoHoraLIBCHEFIA: TBCDField
      Tag = 1
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraNOMELIBCHEFIA: TStringField
      Tag = 1
      FieldName = 'NOMELIBCHEFIA'
    end
    object cdsBancoHoraLIBERADO: TBCDField
      Tag = 1
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraIMPRESSO: TBCDField
      Tag = 1
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsBancoHoraPROBLEMATRANSF: TBooleanField
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsBancoHoraLOGERRO: TMemoField
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsBancoHoraBLOQUEADO: TIntegerField
      FieldName = 'BLOQUEADO'
    end
    object cdsBancoHoraUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsBancoHoraULT: TAggregateField
      FieldName = 'ULT'
      Active = True
      Expression = 'MAX( BANCOHORAID )'
    end
  end
  object dsBancoHora: TDataSource
    DataSet = cdsBancoHora
    Left = 288
    Top = 56
  end
  object cdsFeriado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 30
    Top = 222
    object cdsFeriadoFERIADOID: TBCDField
      FieldName = 'FERIADOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFeriadoDATAFERIADO: TSQLTimeStampField
      FieldName = 'DATAFERIADO'
    end
    object cdsFeriadoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsFeriadoFERIADOREGIONAL: TBCDField
      FieldName = 'FERIADOREGIONAL'
      Precision = 1
      Size = 0
    end
    object cdsFeriadoDESCRICAOFERIADO: TStringField
      FieldName = 'DESCRICAOFERIADO'
      Size = 100
    end
    object cdsFeriadoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsFeriado: TDataSource
    DataSet = cdsFeriado
    Left = 120
    Top = 222
  end
  object cdsDefeito: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 30
    Top = 274
    object cdsDefeitoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDefeitoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsDefeitoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsDefeito: TDataSource
    DataSet = cdsDefeito
    Left = 120
    Top = 274
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvFilial'
    Left = 30
    Top = 322
    object cdsFilialFILIALID: TBCDField
      FieldName = 'FILIALID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsFilialCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
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
    object cdsFilialUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsFilial: TDataSource
    AutoEdit = False
    DataSet = cdsFilial
    Left = 120
    Top = 322
  end
  object cdsOsHoraOFF: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsOsHoraOFFNewRecord
    Left = 197
    Top = 112
    object cdsOsHoraOFFOSID: TStringField
      Tag = 1
      DisplayWidth = 13
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOsHoraOFFENTIDADEID: TBCDField
      DisplayLabel = 'T'#233'cnico ID'
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsHoraOFFL_NOMEPOPULARTECNICO: TStringField
      DisplayLabel = 'Nome Popular'
      FieldKind = fkLookup
      FieldName = 'L_NOMEPOPULARTECNICO'
      LookupDataSet = cdsEntidade
      LookupKeyFields = 'ENTIDADEID'
      LookupResultField = 'NOME'
      KeyFields = 'ENTIDADEID'
      Size = 100
      Lookup = True
    end
    object cdsOsHoraOFFDATATRABALHOID: TSQLTimeStampField
      Tag = 3
      DisplayLabel = 'Dt. Trab. ID'
      DisplayWidth = 34
      FieldName = 'DATATRABALHOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsHoraOFFQTDHORATRAB: TBCDField
      DisplayLabel = 'Qtd. Horas Trab.'
      DisplayWidth = 9
      FieldName = 'QTDHORATRAB'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraOFFQTDHORATRANSP: TBCDField
      DisplayLabel = 'Qtd. Horas Transp.'
      DisplayWidth = 9
      FieldName = 'QTDHORATRANSP'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraOFFQTDHORAESPERA: TBCDField
      DisplayLabel = 'Qtd. Horas Esp.'
      DisplayWidth = 9
      FieldName = 'QTDHORAESPERA'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraOFFQTDHORAOUTRA: TBCDField
      DisplayLabel = 'Qtd. Horas Outras'
      DisplayWidth = 9
      FieldName = 'QTDHORAOUTRA'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraOFFPROBLEMATRANSF: TBooleanField
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOsHoraOFFLOGERRO: TMemoField
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOsHoraOFFUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsOsHoraOFF: TDataSource
    DataSet = cdsOsHoraOFF
    Left = 288
    Top = 112
  end
  object cdsOsDefeitoOFF: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnNewRecord = cdsOsDefeitoOFFNewRecord
    Left = 197
    Top = 165
    object cdsOsDefeitoOFFOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOsDefeitoOFFITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsDefeitoOFFDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      Precision = 8
      Size = 0
    end
    object cdsOsDefeitoOFFL_DESCRICAODEFEITO: TStringField
      FieldKind = fkLookup
      FieldName = 'L_DESCRICAODEFEITO'
      LookupDataSet = cdsDefeito
      LookupKeyFields = 'DEFEITOID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'DEFEITOID'
      Size = 100
      Lookup = True
    end
    object cdsOsDefeitoOFFLOCALDEFEITO: TStringField
      FieldName = 'LOCALDEFEITO'
      Size = 300
    end
    object cdsOsDefeitoOFFSERVICOEXECUTADO: TStringField
      FieldName = 'SERVICOEXECUTADO'
      Size = 300
    end
    object cdsOsDefeitoOFFPROBLEMATRANSF: TBooleanField
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOsDefeitoOFFLOGERRO: TMemoField
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOsDefeitoOFFUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsOsDefeitoOFFULT: TAggregateField
      FieldName = 'ULT'
      Active = True
      Expression = 'MAX( ITEMID )'
    end
  end
  object dsOsDefeitoOFF: TDataSource
    DataSet = cdsOsDefeitoOFF
    Left = 288
    Top = 165
  end
  object cdsOSHora: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOSHoraIndex1'
        Fields = 'OSID;ENTIDADEID;DATATRABALHOID'
        Options = [ixPrimary]
      end>
    IndexName = 'cdsOSHoraIndex1'
    MasterFields = 'OSID'
    MasterSource = dsOS
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    BeforeEdit = cdsAdiantamentoBeforeEdit
    BeforeDelete = cdsAdiantamentoBeforeDelete
    AfterDelete = cdsOSHoraAfterDelete
    OnNewRecord = cdsOSHoraNewRecord
    Left = 389
    Top = 48
    object cdsOSHoraOSID: TStringField
      Tag = 1
      DisplayWidth = 13
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSHoraENTIDADEID: TBCDField
      DisplayLabel = 'T'#233'cnico ID'
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSHoraL_NOMEPOPULARTECNICO: TStringField
      DisplayLabel = 'Nome Popular'
      FieldKind = fkLookup
      FieldName = 'L_NOMEPOPULARTECNICO'
      LookupDataSet = cdsEntidade
      LookupKeyFields = 'ENTIDADEID'
      LookupResultField = 'NOME'
      KeyFields = 'ENTIDADEID'
      Size = 100
      Lookup = True
    end
    object cdsOSHoraDATATRABALHOID: TSQLTimeStampField
      Tag = 3
      DisplayLabel = 'Dt. Trab. ID'
      DisplayWidth = 34
      FieldName = 'DATATRABALHOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSHoraQTDHORATRAB: TBCDField
      DisplayLabel = 'Qtd. Horas Trab.'
      DisplayWidth = 9
      FieldName = 'QTDHORATRAB'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOSHoraQTDHORATRANSP: TBCDField
      DisplayLabel = 'Qtd. Horas Transp.'
      DisplayWidth = 9
      FieldName = 'QTDHORATRANSP'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOSHoraQTDHORAESPERA: TBCDField
      DisplayLabel = 'Qtd. Horas Esp.'
      DisplayWidth = 9
      FieldName = 'QTDHORAESPERA'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOSHoraQTDHORAOUTRA: TBCDField
      DisplayLabel = 'Qtd. Horas Outras'
      DisplayWidth = 9
      FieldName = 'QTDHORAOUTRA'
      Required = True
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOSHoraPROBLEMATRANSF: TBooleanField
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOSHoraLOGERRO: TMemoField
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOSHoraBLOQUEADO: TIntegerField
      FieldName = 'BLOQUEADO'
    end
    object cdsOSHoraUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsOSDefeito: TDataSource
    DataSet = cdsOSDefeito
    Left = 480
    Top = 104
  end
  object dsOSHora: TDataSource
    DataSet = cdsOSHora
    Left = 480
    Top = 48
  end
  object cdsOSMaterial: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOSMaterialIndex1'
        Fields = 'OSID;ITEMID'
        Options = [ixPrimary]
      end>
    IndexName = 'cdsOSMaterialIndex1'
    MasterFields = 'OSID'
    MasterSource = dsOS
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    BeforeEdit = cdsAdiantamentoBeforeEdit
    BeforePost = cdsOSMaterialBeforePost
    AfterPost = cdsOSMaterialAfterPost
    BeforeDelete = cdsAdiantamentoBeforeDelete
    AfterDelete = cdsOSHoraAfterDelete
    OnNewRecord = cdsOSMaterialNewRecord
    Left = 389
    Top = 160
    object cdsOSMaterialOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSMaterialITEMID: TBCDField
      DisplayLabel = 'Item ID'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialEMPRESAID: TBCDField
      DisplayLabel = 'Empresa ID'
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialPRODUTOID: TBCDField
      DisplayLabel = 'Produto ID'
      FieldName = 'PRODUTOID'
      OnValidate = cdsOSMaterialPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialL_DESCRICAOPRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSMaterialALIQUOTAIPI: TFMTBCDField
      DisplayLabel = 'Aliquota IPI'
      FieldName = 'ALIQUOTAIPI'
      DisplayFormat = '#,##0.00%'
      Precision = 14
      Size = 6
    end
    object cdsOSMaterialQUANTIDADE: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialDESCRICAOMATSERV: TStringField
      DisplayLabel = 'Descr. Material/Servi'#231'o'
      FieldName = 'DESCRICAOMATSERV'
      Size = 100
    end
    object cdsOSMaterialVLRPRECOUNITARIO: TFMTBCDField
      DisplayLabel = 'Vlr. Pre'#231'o Unit'#225'rio'
      FieldName = 'VLRPRECOUNITARIO'
      OnValidate = cdsOSMaterialVLRPRECOUNITARIOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSMaterialVLRPRECOTOTAL: TFMTBCDField
      DisplayLabel = 'Vlr. Pre'#231'o Total'
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSMaterialPROBLEMATRANSF: TBooleanField
      DisplayLabel = 'Problema Transfer'#234'ncia'
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOSMaterialLOGERRO: TMemoField
      DisplayLabel = 'Log. Erro'
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOSMaterialBLOQUEADO: TIntegerField
      FieldName = 'BLOQUEADO'
    end
    object cdsOSMaterialUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
    object cdsOSMaterialULT: TAggregateField
      FieldName = 'ULT'
      Active = True
      Expression = 'MAX( ITEMID )'
    end
  end
  object dsOSMaterial: TDataSource
    DataSet = cdsOSMaterial
    Left = 480
    Top = 160
  end
  object cdsOSOCOperacional: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOSOCOperacionalIndex1'
        Fields = 'OSID;ITEMID'
        Options = [ixPrimary]
      end>
    IndexName = 'cdsOSOCOperacionalIndex1'
    MasterFields = 'OSID'
    MasterSource = dsOS
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    AfterDelete = cdsOSHoraAfterDelete
    OnNewRecord = cdsOSOCOperacionalNewRecord
    Left = 392
    Top = 224
    object cdsOSOCOperacionalOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsOSOCOperacionalITEMID: TBCDField
      Tag = 1
      DisplayLabel = 'ItemID'
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSOCOperacionalDATAOCORRENCIA: TSQLTimeStampField
      Tag = 1
      DisplayLabel = 'Data Ocorr'#234'ncia'
      FieldName = 'DATAOCORRENCIA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSOCOperacionalOCOPERACIONALID: TBCDField
      DisplayLabel = 'Oc.Op.ID'
      FieldName = 'OCOPERACIONALID'
      OnValidate = cdsOSOCOperacionalOCOPERACIONALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSOCOperacionalL_DESCRICAOOCOPERACIONAL: TStringField
      DisplayLabel = 'Descri'#231#227'o Oc. Operacional'
      FieldKind = fkLookup
      FieldName = 'L_DESCRICAOOCOPERACIONAL'
      LookupDataSet = cdsOcOperacional
      LookupKeyFields = 'OCOPERACIONALID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'OCOPERACIONALID'
      ProviderFlags = []
      Size = 100
      Lookup = True
    end
    object cdsOSOCOperacionalDATAACAOTOMADA: TSQLTimeStampField
      DisplayLabel = 'Data A'#231#227'o Tomada'
      FieldName = 'DATAACAOTOMADA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSOCOperacionalUSUARIOACAOTOMADA: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio A'#231#227'o Tomada'
      FieldName = 'USUARIOACAOTOMADA'
    end
    object cdsOSOCOperacionalACAOTOMADA: TMemoField
      DisplayLabel = 'A'#231#227'o Tomada'
      FieldName = 'ACAOTOMADA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSOCOperacionalPROBLEMATRANSF: TBooleanField
      DisplayLabel = 'Problema Transf.'
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOSOCOperacionalLOGERRO: TMemoField
      DisplayLabel = 'Log. Erro'
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOSOCOperacionalUSUARIO: TStringField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
    object cdsOSOCOperacionalULT: TAggregateField
      FieldName = 'ULT'
      Active = True
      Expression = 'MAX( ITEMID )'
    end
  end
  object dsOSOCOperacional: TDataSource
    DataSet = cdsOSOCOperacional
    Left = 480
    Top = 224
  end
  object cdsCustoHora: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 224
    object cdsCustoHoraMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
    end
    object cdsCustoHoraCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCustoHoraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCustoHoraVLRHORATRAB: TBCDField
      FieldName = 'VLRHORATRAB'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsCustoHoraVLRHORATRANSP: TBCDField
      FieldName = 'VLRHORATRANSP'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsCustoHoraVLRHORAESPERA: TBCDField
      FieldName = 'VLRHORAESPERA'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsCustoHoraVLRHORAOUTROS: TBCDField
      FieldName = 'VLRHORAOUTROS'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 274
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
      Precision = 8
      Size = 0
    end
    object cdsProdutoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsProdutoALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
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
  end
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = cdsProduto
    Left = 291
    Top = 274
  end
  object cdsOcOperacional: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvOcOperacional'
    Left = 32
    Top = 370
    object cdsOcOperacionalOCOPERACIONALID: TBCDField
      Tag = 1
      FieldName = 'OCOPERACIONALID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOcOperacionalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsOcOperacionalUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOcOperacional: TDataSource
    AutoEdit = False
    DataSet = cdsOcOperacional
    Left = 120
    Top = 370
  end
  object cdsOS: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsOSBeforePost
    BeforeDelete = cdsOSBeforeDelete
    AfterDelete = cdsOSAfterDelete
    Left = 392
    object cdsOSOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object d: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsOSSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsOSSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsOSMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsOSVERSAOSOFT: TStringField
      FieldName = 'VERSAOSOFT'
    end
    object cdsOSL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsOSL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsOSFILIALID: TBCDField
      FieldName = 'FILIALID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsOSTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Required = True
      Size = 1
    end
    object cdsOSL_DESCRICAOTIPOOS: TStringField
      FieldName = 'L_DESCRICAOTIPOOS'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Size = 1
    end
    object cdsOSOSCORRELACAOID: TStringField
      FieldName = 'OSCORRELACAOID'
      Size = 13
    end
    object cdsOSLOCALIZACAOOSID: TBCDField
      FieldName = 'LOCALIZACAOOSID'
      Precision = 8
      Size = 0
    end
    object cdsOSL_LOCALIZACAOOS: TStringField
      FieldName = 'L_LOCALIZACAOOS'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSDATACONCLUSAO: TSQLTimeStampField
      FieldName = 'DATACONCLUSAO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSRESPRECEBIMENTO: TStringField
      FieldName = 'RESPRECEBIMENTO'
      Size = 100
    end
    object cdsOSOBSDEMO1: TStringField
      FieldName = 'OBSDEMO1'
      Size = 100
    end
    object cdsOSOBSDEMO2: TStringField
      FieldName = 'OBSDEMO2'
      Size = 100
    end
    object cdsOSLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsOSLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsOSLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsOSTENSAOLOCAL: TBCDField
      FieldName = 'TENSAOLOCAL'
      Precision = 8
      Size = 0
    end
    object cdsOSDATARETIRADA: TSQLTimeStampField
      FieldName = 'DATARETIRADA'
    end
    object cdsOSDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object cdsOSOSIMPRESSA: TBCDField
      FieldName = 'OSIMPRESSA'
      Precision = 1
      Size = 0
    end
    object cdsOSOSOFFLINE: TBCDField
      FieldName = 'OSOFFLINE'
      Precision = 1
      Size = 0
    end
    object cdsOSOSELETRONICA: TBCDField
      FieldName = 'OSELETRONICA'
      Precision = 1
      Size = 0
    end
    object cdsOSOSOFFLINEUSUARIO: TStringField
      FieldName = 'OSOFFLINEUSUARIO'
    end
    object cdsOSDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSDATAENTRLABORATORIO: TSQLTimeStampField
      FieldName = 'DATAENTRLABORATORIO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSDATASAIDALABORATORIO: TSQLTimeStampField
      FieldName = 'DATASAIDALABORATORIO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOSTIPOASSIST: TStringField
      FieldName = 'TIPOASSIST'
      Size = 1
    end
    object cdsOSSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsOSL_VERSAOSOFT: TStringField
      FieldName = 'L_VERSAOSOFT'
      ProviderFlags = []
    end
    object cdsOSL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object cdsOSL_FAX: TStringField
      FieldName = 'L_FAX'
      ProviderFlags = []
    end
    object cdsOSL_PASTA: TStringField
      FieldName = 'L_PASTA'
      ProviderFlags = []
      Size = 10
    end
    object cdsOSL_INSCRESTADUAL: TStringField
      FieldName = 'L_INSCRESTADUAL'
      ProviderFlags = []
    end
    object cdsOSL_INSCRMUNICIPAL: TStringField
      FieldName = 'L_INSCRMUNICIPAL'
      ProviderFlags = []
    end
    object cdsOSL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsOSSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 100
    end
    object cdsOSSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object cdsOSSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object cdsOSOBSSERVICO: TStringField
      FieldName = 'OBSSERVICO'
      Size = 300
    end
    object cdsOSTECNICOID: TBCDField
      FieldName = 'TECNICOID'
      Precision = 8
      Size = 0
    end
    object cdsOSL_NOMETECNICO: TStringField
      FieldName = 'L_NOMETECNICO'
      ProviderFlags = []
    end
    object cdsOSDATAHORACHEGADA: TSQLTimeStampField
      FieldName = 'DATAHORACHEGADA'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsOSDATAHORASAIDA: TSQLTimeStampField
      FieldName = 'DATAHORASAIDA'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsOSORCAMENTOID: TStringField
      FieldName = 'ORCAMENTOID'
      Size = 30
    end
    object cdsOSVLRORCADO: TBCDField
      FieldName = 'VLRORCADO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOSMOEDAORCADA: TStringField
      FieldName = 'MOEDAORCADA'
      Size = 3
    end
    object cdsOSCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      Size = 60
    end
    object cdsOSVLRPAGTOANTEC: TBCDField
      FieldName = 'VLRPAGTOANTEC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOSL_CONTRATOID: TStringField
      FieldName = 'L_CONTRATOID'
      ProviderFlags = []
      Size = 50
    end
    object cdsOSCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsOSNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsOSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsOSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsOSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsOSC_TIPOATENDIMENTO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_TIPOATENDIMENTO'
      ProviderFlags = []
    end
    object cdsOSNUMCORTES: TBCDField
      FieldName = 'NUMCORTES'
      Precision = 8
      Size = 0
    end
    object cdsOSORCAMENTOREFID: TBCDField
      FieldName = 'ORCAMENTOREFID'
      Precision = 8
      Size = 0
    end
    object cdsOSCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      OnValidate = cdsOSCONDPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSL_TERMOCONTRATO: TStringField
      FieldName = 'L_TERMOCONTRATO'
      Size = 100
    end
    object cdsOSL_DESCR_CONDPAGTO: TStringField
      FieldKind = fkLookup
      FieldName = 'L_DESCR_CONDPAGTO'
      LookupDataSet = cdsCondPagto
      LookupKeyFields = 'CONDPAGTOID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONDPAGTOID'
      Size = 100
      Lookup = True
    end
    object cdsOSPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      OnValidate = cdsOSPORCDESCONTOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSNOMELIBDESCONTO: TStringField
      FieldName = 'NOMELIBDESCONTO'
      Size = 100
    end
    object cdsOSVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRMAODEOBRA: TFMTBCDField
      FieldName = 'VLRMAODEOBRA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRDESLOCAMENTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRPECA: TFMTBCDField
      FieldName = 'VLRPECA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 20
    end
    object cdsOSVLRTOTALMAODEOBRA: TFMTBCDField
      FieldName = 'VLRTOTALMAODEOBRA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRTOTALDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRTOTALDESLOCAMENTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRTOTALORCCOMP: TFMTBCDField
      FieldName = 'VLRTOTALORCCOMP'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRTOTALFRETE: TFMTBCDField
      FieldName = 'VLRTOTALFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRTOTALPECA: TFMTBCDField
      FieldName = 'VLRTOTALPECA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRTOTALOUTRO: TFMTBCDField
      FieldName = 'VLRTOTALOUTRO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSVLRTOTALPAGAR: TFMTBCDField
      FieldName = 'VLRTOTALPAGAR'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSPROBLEMATRANSF: TBooleanField
      DisplayLabel = 'Problema de Transf.'
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOSLOGERRO: TMemoField
      DisplayLabel = 'Log. Erro'
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOSUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOS: TDataSource
    DataSet = cdsOS
    Left = 480
  end
  object cdsOSDefeito: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'cdsOSDefeitoIndex1'
        Fields = 'OSID;ITEMID'
        Options = [ixPrimary]
      end>
    IndexName = 'cdsOSDefeitoIndex1'
    MasterFields = 'OSID'
    MasterSource = dsOS
    PacketRecords = 0
    Params = <>
    StoreDefs = True
    BeforeEdit = cdsAdiantamentoBeforeEdit
    BeforePost = cdsOSDefeitoBeforePost
    BeforeDelete = cdsAdiantamentoBeforeDelete
    OnNewRecord = cdsOSDefeitoNewRecord
    Left = 392
    Top = 104
    object cdsOSDefeitoOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSDefeitoITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSDefeitoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSDefeitoL_DESCRICAODEFEITO: TStringField
      FieldKind = fkLookup
      FieldName = 'L_DESCRICAODEFEITO'
      LookupDataSet = cdsDefeito
      LookupKeyFields = 'DEFEITOID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'DEFEITOID'
      Required = True
      Size = 100
      Lookup = True
    end
    object cdsOSDefeitoLOCALDEFEITO: TStringField
      FieldName = 'LOCALDEFEITO'
      Size = 300
    end
    object cdsOSDefeitoSERVICOEXECUTADO: TMemoField
      FieldName = 'SERVICOEXECUTADO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOSDefeitoPROBLEMATRANSF: TBooleanField
      FieldName = 'PROBLEMATRANSF'
    end
    object cdsOSDefeitoLOGERRO: TMemoField
      FieldName = 'LOGERRO'
      BlobType = ftMemo
    end
    object cdsOSDefeitoBLOQUEADO: TIntegerField
      FieldName = 'BLOQUEADO'
    end
    object cdsOSDefeitoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsOSDefeitoULT: TAggregateField
      FieldName = 'ULT'
      Active = True
      Expression = 'MAX( ITEMID )'
    end
  end
  object dsCondPagto: TDataSource
    DataSet = cdsCondPagto
    Left = 120
    Top = 424
  end
  object cdsCondPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 32
    Top = 424
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
  object cdsHorasCfgTrab: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvHorasCfgTrab'
    Left = 200
    Top = 328
    object cdsHorasCfgTrabHORASCFGTRABID: TBCDField
      Tag = 1
      FieldName = 'HORASCFGTRABID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHorasCfgTrabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsHorasCfgTrabBLOQUEADO: TBCDField
      FieldName = 'BLOQUEADO'
      Precision = 1
      Size = 0
    end
    object cdsHorasCfgTrabHORAINICIOTRABALHO: TSQLTimeStampField
      FieldName = 'HORAINICIOTRABALHO'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object cdsHorasCfgTrabHORAFINALTRABALHO: TSQLTimeStampField
      FieldName = 'HORAFINALTRABALHO'
      DisplayFormat = 'HH:NN'
      EditMask = '!90:00;1;_'
    end
    object cdsHorasCfgTrabHORASALMOCO: TFMTBCDField
      FieldName = 'HORASALMOCO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 10
    end
    object cdsHorasCfgTrabLIMITEBCOHORAS: TFMTBCDField
      FieldName = 'LIMITEBCOHORAS'
      Precision = 14
      Size = 10
    end
    object cdsHorasCfgTrabTRABSABADO: TBCDField
      FieldName = 'TRABSABADO'
      Precision = 1
      Size = 0
    end
    object cdsHorasCfgTrabTRABDOMINGO: TBCDField
      FieldName = 'TRABDOMINGO'
      Precision = 1
      Size = 0
    end
    object cdsHorasCfgTrabUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsHorasCfgTrab: TDataSource
    AutoEdit = False
    DataSet = cdsHorasCfgTrab
    Left = 288
    Top = 328
  end
end
