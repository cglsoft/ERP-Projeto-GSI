object dmAS: TdmAS
  OldCreateOrder = False
  Height = 412
  Width = 513
  object shdcnnAS: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppAS'
    Left = 24
    Top = 8
  end
  object cdsSimilar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 208
    object cdsSimilarUSUARIOID: TStringField
      FieldName = 'USUARIOID'
      Required = True
    end
    object cdsSimilarDIREITOID: TStringField
      FieldName = 'DIREITOID'
      Required = True
      Size = 50
    end
    object cdsSimilarDIREITOSECUNDARIOID: TStringField
      FieldName = 'DIREITOSECUNDARIOID'
      Required = True
      Size = 50
    end
  end
  object dsUsuario: TDataSource
    AutoEdit = False
    DataSet = cdsUsuario
    Left = 208
    Top = 8
  end
  object dsUsuarioDireito: TDataSource
    AutoEdit = False
    DataSet = cdsUsuarioDireito
    Left = 208
    Top = 56
  end
  object dsDireito: TDataSource
    AutoEdit = False
    DataSet = cdsDireito
    Left = 208
    Top = 104
  end
  object dsSimilar: TDataSource
    AutoEdit = False
    DataSet = cdsSimilar
    Left = 208
    Top = 208
  end
  object cdsUserAtivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvUserAtivo'
    RemoteServer = shdcnnAS
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnReconcileError = cdsUsuarioReconcileError
    Left = 104
    Top = 264
    object cdsUserAtivoUSERATIVOID: TBCDField
      FieldName = 'USERATIVOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsUserAtivoUSUARIOID: TStringField
      FieldName = 'USUARIOID'
    end
    object cdsUserAtivoDATACONECCAO: TSQLTimeStampField
      FieldName = 'DATACONECCAO'
    end
    object cdsUserAtivoIP: TStringField
      FieldName = 'IP'
      Size = 50
    end
    object cdsUserAtivoNOMEMAQUINA: TStringField
      FieldName = 'NOMEMAQUINA'
      Size = 50
    end
  end
  object dsUserAtivo: TDataSource
    AutoEdit = False
    DataSet = cdsUserAtivo
    Left = 208
    Top = 264
  end
  object cdsDicionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDicionario'
    RemoteServer = shdcnnAS
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnNewRecord = cdsDicionarioNewRecord
    OnReconcileError = cdsUsuarioReconcileError
    Left = 104
    Top = 320
    object cdsDicionarioDICIONARIOID: TBCDField
      FieldName = 'DICIONARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDicionarioNOMETABELA: TStringField
      Tag = 5
      FieldName = 'NOMETABELA'
      Size = 50
    end
    object cdsDicionarioNOMECAMPO: TStringField
      Tag = 5
      FieldName = 'NOMECAMPO'
      Size = 50
    end
    object cdsDicionarioNOMETABELAPESQ: TStringField
      Tag = 5
      FieldName = 'NOMETABELAPESQ'
      Size = 50
    end
    object cdsDicionarioNOMECAMPOTABELAPESQ: TStringField
      Tag = 5
      FieldName = 'NOMECAMPOTABELAPESQ'
      Size = 50
    end
    object cdsDicionarioNOVONOMECAMPO: TStringField
      Tag = 5
      FieldName = 'NOVONOMECAMPO'
      Size = 50
    end
    object cdsDicionarioITENS: TStringField
      Tag = 5
      FieldName = 'ITENS'
      Size = 200
    end
    object cdsDicionarioTITULOITENS: TStringField
      Tag = 5
      FieldName = 'TITULOITENS'
      Size = 200
    end
  end
  object dsDicionario: TDataSource
    DataSet = cdsDicionario
    Left = 208
    Top = 320
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvUsuario'
    RemoteServer = shdcnnAS
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnNewRecord = cdsUsuarioNewRecord
    OnReconcileError = cdsUsuarioReconcileError
    Left = 104
    Top = 8
    object cdsUsuarioUSUARIOID: TStringField
      FieldName = 'USUARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuarioENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      OnValidate = cdsUsuarioENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsUsuarioL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsUsuarioEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsUsuarioEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsUsuarioL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object cdsUsuarioSENHA: TStringField
      Tag = 1
      FieldName = 'SENHA'
      Visible = False
      Size = 30
    end
    object cdsUsuarioPASSWORD: TStringField
      Tag = 1
      FieldName = 'PASSWORD'
      Visible = False
      Size = 50
    end
    object cdsUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
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
    object cdsUsuarioPORTALVISAOID: TBCDField
      FieldName = 'PORTALVISAOID'
      Precision = 8
      Size = 0
    end
    object cdsUsuarioNIVELACESSOPORTALID: TBCDField
      FieldName = 'NIVELACESSOPORTALID'
      Precision = 8
      Size = 0
    end
    object cdsUsuariosqldtsUsuarioDireito: TDataSetField
      FieldName = 'sqldtsUsuarioDireito'
    end
  end
  object cdsUsuarioDireito: TClientDataSet
    Aggregates = <>
    DataSetField = cdsUsuariosqldtsUsuarioDireito
    Params = <>
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnReconcileError = cdsUsuarioReconcileError
    Left = 104
    Top = 56
    object cdsUsuarioDireitoDIREITOID: TStringField
      DisplayWidth = 20
      FieldName = 'DIREITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cdsUsuarioDireitoDIREITOSECUNDARIOID: TStringField
      DisplayWidth = 20
      FieldName = 'DIREITOSECUNDARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object cdsUsuarioDireitoUSUARIOID: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
  end
  object cdsDireito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDireito'
    RemoteServer = shdcnnAS
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnReconcileError = cdsUsuarioReconcileError
    Left = 104
    Top = 104
    object cdsDireitoDIREITOID: TStringField
      DisplayWidth = 20
      FieldName = 'DIREITOID'
      Required = True
      Size = 50
    end
    object cdsDireitoDIREITOSECUNDARIOID: TStringField
      DisplayWidth = 20
      FieldName = 'DIREITOSECUNDARIOID'
      Required = True
      Size = 50
    end
    object cdsDireitoTIPO: TStringField
      DisplayWidth = 1
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsDireitoDESCRICAO: TStringField
      DisplayWidth = 100
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object cdsConfig: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvConfig'
    RemoteServer = shdcnnAS
    AfterPost = cdsUsuarioAfterPost
    AfterDelete = cdsUsuarioAfterDelete
    OnReconcileError = cdsUsuarioReconcileError
    Left = 104
    Top = 160
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
      DisplayFormat = '0000/00'
      Precision = 8
      Size = 0
    end
    object cdsConfigVLRDIARIA: TBCDField
      FieldName = 'VLRDIARIA'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsConfigVLRREFEICOES: TBCDField
      FieldName = 'VLRREFEICOES'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsConfigVLRKM: TBCDField
      FieldName = 'VLRKM'
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
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
    object cdsConfigRS_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'RS_DATAFECHAMENTO'
    end
    object cdsConfigHTMLPORTAL: TMemoField
      FieldName = 'HTMLPORTAL'
      BlobType = ftOraClob
      Size = 1
    end
  end
  object dsConfig: TDataSource
    AutoEdit = False
    DataSet = cdsConfig
    Left = 208
    Top = 160
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvPesquisa'
    RemoteServer = shdcnnAS
    BeforePost = cdsPesquisaBeforePost
    AfterPost = cdsUsuarioAfterPost
    BeforeDelete = cdsPesquisaBeforeDelete
    AfterDelete = cdsUsuarioAfterDelete
    OnNewRecord = cdsPesquisaNewRecord
    OnReconcileError = cdsUsuarioReconcileError
    Left = 296
    Top = 8
    object cdsPesquisaPESQUISAID: TBCDField
      Tag = 1
      FieldName = 'PESQUISAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPesquisaNOMEPESQUISA: TStringField
      Tag = 5
      FieldName = 'NOMEPESQUISA'
      Required = True
      Size = 100
    end
    object cdsPesquisaTABELADICIONARIOID: TStringField
      FieldName = 'TABELADICIONARIOID'
      Required = True
      Size = 50
    end
    object cdsPesquisaISQL: TMemoField
      Tag = 4
      FieldName = 'ISQL'
      Required = True
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPesquisaDATACRIACAO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATACRIACAO'
    end
    object cdsPesquisaDATAALTERACAO: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAALTERACAO'
    end
    object cdsPesquisaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsPesquisa: TDataSource
    AutoEdit = False
    DataSet = cdsPesquisa
    Left = 400
    Top = 8
  end
end
