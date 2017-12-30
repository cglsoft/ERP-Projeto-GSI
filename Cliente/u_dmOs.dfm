object dmOS: TdmOS
  OldCreateOrder = False
  Height = 605
  Width = 750
  object cdsCustoHora: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvCustoHora'
    RemoteServer = shdcnnOs
    AfterPost = cdsCustoHoraAfterPost
    AfterDelete = cdsCustoHoraAfterDelete
    OnNewRecord = cdsCustoHoraNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 104
    object cdsCustoHoraCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsCustoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsDefeito: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvDefeito'
    RemoteServer = shdcnnOs
    AfterPost = cdsDefeitoAfterPost
    AfterDelete = cdsDefeitoAfterDelete
    OnNewRecord = cdsDefeitoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 296
    object cdsDefeitoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsDefeitoDEFEITOIDValidate
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
    object cdsDefeitosqldtsDefeitoGrupo: TDataSetField
      FieldName = 'sqldtsDefeitoGrupo'
    end
  end
  object dsCustoHora: TDataSource
    AutoEdit = False
    DataSet = cdsCustoHora
    Left = 163
    Top = 104
  end
  object dsDefeito: TDataSource
    AutoEdit = False
    DataSet = cdsDefeito
    Left = 163
    Top = 296
  end
  object cdsOs: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOs'
    RemoteServer = shdcnnOs
    BeforePost = cdsOsBeforePost
    AfterPost = cdsOsAfterPost
    BeforeCancel = cdsOsBeforeCancel
    BeforeDelete = cdsOsBeforeDelete
    AfterDelete = cdsOsAfterDelete
    OnCalcFields = cdsOsCalcFields
    OnNewRecord = cdsOsNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 252
    Top = 8
    object cdsOsOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsOsOSIDValidate
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOsL_LOCALIZACAOOS: TStringField
      FieldName = 'L_LOCALIZACAOOS'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      OnValidate = cdsOsCLIENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsOsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsOsSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsOsMODELOID: TStringField
      FieldName = 'MODELOID'
      OnValidate = cdsOsMODELOIDValidate
      Size = 40
    end
    object cdsOsVERSAOSOFT: TStringField
      FieldName = 'VERSAOSOFT'
    end
    object cdsOsL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsOsL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsOsFILIALID: TBCDField
      FieldName = 'FILIALID'
      Required = True
      OnChange = cdsOsFILIALIDChange
      OnValidate = cdsOsFILIALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsOsTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Required = True
      OnChange = cdsOsTIPOOSIDChange
      OnValidate = cdsOsTIPOOSIDValidate
      Size = 1
    end
    object cdsOsL_DESCRICAOTIPOOS: TStringField
      FieldName = 'L_DESCRICAOTIPOOS'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      OnValidate = cdsOsTIPOATENDIMENTOValidate
      Size = 1
    end
    object cdsOsOSCORRELACAOID: TStringField
      FieldName = 'OSCORRELACAOID'
      Size = 13
    end
    object cdsOsLOCALIZACAOOSID: TBCDField
      FieldName = 'LOCALIZACAOOSID'
      OnValidate = cdsOsLOCALIZACAOOSIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
      OnValidate = cdsOsDATAABERTURAValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsDATACONCLUSAO: TSQLTimeStampField
      FieldName = 'DATACONCLUSAO'
      OnValidate = cdsOsDATACONCLUSAOValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsOSIMPRESSA: TBCDField
      FieldName = 'OSIMPRESSA'
      Precision = 1
      Size = 0
    end
    object cdsOsOSELETRONICA: TBCDField
      FieldName = 'OSELETRONICA'
      Precision = 1
      Size = 0
    end
    object cdsOsOSOFFLINE: TBCDField
      FieldName = 'OSOFFLINE'
      Precision = 1
      Size = 0
    end
    object cdsOsOSOFFLINEUSUARIO: TStringField
      FieldName = 'OSOFFLINEUSUARIO'
    end
    object cdsOsDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
      OnValidate = cdsOsDATAFECHAMENTOValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsDATAENTRLABORATORIO: TSQLTimeStampField
      FieldName = 'DATAENTRLABORATORIO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsDATASAIDALABORATORIO: TSQLTimeStampField
      FieldName = 'DATASAIDALABORATORIO'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsTIPOASSIST: TStringField
      FieldName = 'TIPOASSIST'
      Size = 1
    end
    object cdsOsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsOsL_VERSAOSOFT: TStringField
      FieldName = 'L_VERSAOSOFT'
      ProviderFlags = []
    end
    object cdsOsL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object cdsOsL_FAX: TStringField
      FieldName = 'L_FAX'
      ProviderFlags = []
    end
    object cdsOsL_PASTA: TStringField
      FieldName = 'L_PASTA'
      ProviderFlags = []
      Size = 10
    end
    object cdsOsL_INSCRESTADUAL: TStringField
      FieldName = 'L_INSCRESTADUAL'
      ProviderFlags = []
    end
    object cdsOsL_INSCRMUNICIPAL: TStringField
      FieldName = 'L_INSCRMUNICIPAL'
      ProviderFlags = []
    end
    object cdsOsL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsOsSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 100
    end
    object cdsOsSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object cdsOsSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object cdsOsOBSSERVICO: TStringField
      FieldName = 'OBSSERVICO'
      Size = 300
    end
    object cdsOsTECNICOID: TBCDField
      FieldName = 'TECNICOID'
      OnValidate = cdsOsTECNICOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsL_NOMETECNICO: TStringField
      FieldName = 'L_NOMETECNICO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsDATAHORACHEGADA: TSQLTimeStampField
      FieldName = 'DATAHORACHEGADA'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsOsDATAHORASAIDA: TSQLTimeStampField
      FieldName = 'DATAHORASAIDA'
      EditMask = '!99/99/00 !90:00;1;_'
    end
    object cdsOsRESPRECEBIMENTO: TStringField
      FieldName = 'RESPRECEBIMENTO'
      Size = 100
    end
    object cdsOsOBSDEMO1: TStringField
      FieldName = 'OBSDEMO1'
      Size = 100
    end
    object cdsOsOBSDEMO2: TStringField
      FieldName = 'OBSDEMO2'
      Size = 100
    end
    object cdsOsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsOsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsOsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      OnValidate = cdsOsLIBCHEFIAValidate
      Precision = 1
      Size = 0
    end
    object cdsOsTENSAOLOCAL: TBCDField
      FieldName = 'TENSAOLOCAL'
      Precision = 8
      Size = 0
    end
    object cdsOsDATARETIRADA: TSQLTimeStampField
      FieldName = 'DATARETIRADA'
    end
    object cdsOsDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object cdsOsORCAMENTOID: TStringField
      FieldName = 'ORCAMENTOID'
      Size = 30
    end
    object cdsOsVLRORCADO: TBCDField
      FieldName = 'VLRORCADO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOsMOEDAORCADA: TStringField
      FieldName = 'MOEDAORCADA'
      Size = 3
    end
    object cdsOsCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      Size = 60
    end
    object cdsOsVLRPAGTOANTEC: TBCDField
      FieldName = 'VLRPAGTOANTEC'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsOsCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsOsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsOsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsOsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsOsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsOsC_TIPOATENDIMENTO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'C_TIPOATENDIMENTO'
      ProviderFlags = []
    end
    object cdsOsNUMCORTES: TBCDField
      FieldName = 'NUMCORTES'
      Precision = 8
      Size = 0
    end
    object cdsOsORCAMENTOREFID: TBCDField
      FieldName = 'ORCAMENTOREFID'
      Precision = 8
      Size = 0
    end
    object cdsOsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      OnValidate = cdsOsCONDPAGTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsL_DESCR_CONDPAGTO: TStringField
      FieldName = 'L_DESCR_CONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      OnValidate = cdsOsPORCDESCONTOValidate
      Precision = 20
    end
    object cdsOsNOMELIBDESCONTO: TStringField
      FieldName = 'NOMELIBDESCONTO'
      OnValidate = cdsOsNOMELIBDESCONTOValidate
      Size = 100
    end
    object cdsOsVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRMAODEOBRA: TFMTBCDField
      FieldName = 'VLRMAODEOBRA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRDESLOCAMENTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRPECA: TFMTBCDField
      FieldName = 'VLRPECA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 20
    end
    object cdsOsVLRTOTALMAODEOBRA: TFMTBCDField
      FieldName = 'VLRTOTALMAODEOBRA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRTOTALDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRTOTALDESLOCAMENTO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRTOTALORCCOMP: TFMTBCDField
      FieldName = 'VLRTOTALORCCOMP'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRTOTALFRETE: TFMTBCDField
      FieldName = 'VLRTOTALFRETE'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRTOTALPECA: TFMTBCDField
      FieldName = 'VLRTOTALPECA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRTOTALOUTRO: TFMTBCDField
      FieldName = 'VLRTOTALOUTRO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsVLRTOTALPAGAR: TFMTBCDField
      FieldName = 'VLRTOTALPAGAR'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsOssqldtsOsPeca: TDataSetField
      FieldName = 'sqldtsOsPeca'
    end
    object cdsOssqldtsOsDefeito: TDataSetField
      FieldName = 'sqldtsOsDefeito'
    end
    object cdsOssqldtsOsHora: TDataSetField
      FieldName = 'sqldtsOsHora'
    end
    object cdsOssqldtsOSMaterial: TDataSetField
      FieldName = 'sqldtsOSMaterial'
    end
    object cdsOssqldtsOSOcOperacional: TDataSetField
      FieldName = 'sqldtsOSOcOperacional'
    end
    object cdsOssqldtsOSDemo: TDataSetField
      FieldName = 'sqldtsOSDemo'
    end
  end
  object dsOs: TDataSource
    AutoEdit = False
    DataSet = cdsOs
    Left = 366
    Top = 8
  end
  object cdsOsHora: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqldtsOsHora
    Params = <>
    BeforeInsert = cdsOsHoraBeforeInsert
    BeforeEdit = cdsOsHoraBeforeEdit
    AfterPost = cdsOsHoraAfterPost
    BeforeDelete = cdsOsHoraBeforeDelete
    AfterDelete = cdsOsHoraAfterDelete
    OnNewRecord = cdsOsHoraNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 252
    Top = 56
    object cdsOsHoraOSID: TStringField
      Tag = 1
      DisplayWidth = 13
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsOsHoraENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsOsHoraENTIDADEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsHoraL_NOMEPOPULARTECNICO: TStringField
      DisplayWidth = 20
      FieldName = 'L_NOMEPOPULARTECNICO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsHoraDATATRABALHOID: TSQLTimeStampField
      Tag = 3
      DisplayWidth = 34
      FieldName = 'DATATRABALHOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsOsHoraDATATRABALHOIDValidate
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsHoraQTDHORATRAB: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDHORATRAB'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraQTDHORATRANSP: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDHORATRANSP'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraQTDHORAESPERA: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDHORAESPERA'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraQTDHORAOUTRA: TBCDField
      DisplayWidth = 9
      FieldName = 'QTDHORAOUTRA'
      DisplayFormat = '###,##0.00'
      Precision = 8
      Size = 2
    end
    object cdsOsHoraUSUARIO: TStringField
      Tag = 1
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsOsHora: TDataSource
    AutoEdit = False
    DataSet = cdsOsHora
    Left = 366
    Top = 56
  end
  object cdsOsDefeito: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqldtsOsDefeito
    Params = <>
    BeforeInsert = cdsOsDefeitoBeforeInsert
    BeforeEdit = cdsOsDefeitoBeforeEdit
    BeforePost = cdsOsDefeitoBeforePost
    AfterPost = cdsOsDefeitoAfterPost
    BeforeDelete = cdsOsDefeitoBeforeDelete
    AfterDelete = cdsOsDefeitoAfterDelete
    OnNewRecord = cdsOsDefeitoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 252
    Top = 104
    object cdsOsDefeitoOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsOsDefeitoITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsDefeitoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      OnValidate = cdsOsDefeitoDEFEITOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsDefeitoL_DESCRICAODEFEITO: TStringField
      FieldName = 'L_DESCRICAODEFEITO'
      ProviderFlags = []
      Size = 200
    end
    object cdsOsDefeitoLOCALDEFEITO: TStringField
      FieldName = 'LOCALDEFEITO'
      Size = 300
    end
    object cdsOsDefeitoSERVICOEXECUTADO: TMemoField
      FieldName = 'SERVICOEXECUTADO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOsDefeitoUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOsDefeito: TDataSource
    AutoEdit = False
    DataSet = cdsOsDefeito
    Left = 366
    Top = 104
  end
  object cdsOsTerceiro: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOsTerceiro'
    RemoteServer = shdcnnOs
    AfterPost = cdsOsTerceiroAfterPost
    AfterDelete = cdsOsTerceiroAfterDelete
    OnNewRecord = cdsOsTerceiroNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 252
    Top = 151
    object cdsOsTerceiroEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroNFSID: TBCDField
      Tag = 1
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroDATAEMISSAOID: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsTerceiroOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOsTerceiroNOMENOTA: TStringField
      Tag = 1
      FieldName = 'NOMENOTA'
      Size = 100
    end
    object cdsOsTerceiroDATAPREVENTREGA: TSQLTimeStampField
      FieldName = 'DATAPREVENTREGA'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsOsTerceiroDESTINATARIOID: TBCDField
      Tag = 1
      FieldName = 'DESTINATARIOID'
      OnValidate = cdsOsTerceiroDESTINATARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroL_NOMEDESTINATARIO: TStringField
      FieldName = 'L_NOMEDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsTerceiroMOTIVOATRASO: TStringField
      FieldName = 'MOTIVOATRASO'
      Size = 200
    end
    object cdsOsTerceiroL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object cdsOsTerceiroL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object cdsOsTerceiroTIPOCONTROLE: TStringField
      FieldName = 'TIPOCONTROLE'
      Size = 1
    end
    object cdsOsTerceiroUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsOsTerceirosqldtsOSTerceiroItem: TDataSetField
      FieldName = 'sqldtsOSTerceiroItem'
    end
  end
  object dsOsTerceiro: TDataSource
    AutoEdit = False
    DataSet = cdsOsTerceiro
    Left = 366
    Top = 151
  end
  object shdcnnOs: TSharedConnection
    ParentConnection = dmGsi.sckcnnGsi
    ChildName = 'dmSrvAppOS'
    Left = 16
    Top = 8
  end
  object cdsTipoOS: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvTipoOs'
    RemoteServer = shdcnnOs
    AfterPost = cdsTipoOsAfterPost
    AfterDelete = cdsTipoOsAfterDelete
    OnNewRecord = cdsTipoOSNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 8
    object cdsTipoOSTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object cdsTipoOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsTipoOSBLOQABERTURAOS: TBCDField
      FieldName = 'BLOQABERTURAOS'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSBLOQLANCAMENTOS: TBCDField
      FieldName = 'BLOQLANCAMENTOS'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSEXIGIRCORRELACAO: TBCDField
      FieldName = 'EXIGIRCORRELACAO'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSBLOQMOVPRODUTOS: TBCDField
      FieldName = 'BLOQMOVPRODUTOS'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSLANCRDVOSRESTRITA: TBCDField
      FieldName = 'LANCRDVOSRESTRITA'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSGARANTIA: TBCDField
      FieldName = 'GARANTIA'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSEXIGIRSERIEOSFECH: TBCDField
      FieldName = 'EXIGIRSERIEOSFECH'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSDERIVADA: TBCDField
      FieldName = 'DERIVADA'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSFECHESPECIFICO: TBCDField
      FieldName = 'FECHESPECIFICO'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSEXIGIRSERIEABERTURA: TBCDField
      FieldName = 'EXIGIRSERIEABERTURA'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSEXIGIRMODELOABERTURA: TBCDField
      FieldName = 'EXIGIRMODELOABERTURA'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSEXIGIRLIBERACAO: TBCDField
      FieldName = 'EXIGIRLIBERACAO'
      Precision = 1
      Size = 0
    end
    object cdsTipoOSUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
    object cdsTipoOSsqldtsTipoOsCfop: TDataSetField
      FieldName = 'sqldtsTipoOsCfop'
    end
  end
  object cdsTipoOSCFOP: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTipoOSsqldtsTipoOsCfop
    Params = <>
    AfterPost = cdsTipoOSCFOPAfterPost
    AfterDelete = cdsTipoOSCFOPAfterDelete
    OnNewRecord = cdsTipoOSCFOPNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 56
    object cdsTipoOSCFOPTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Required = True
      Size = 1
    end
    object cdsTipoOSCFOPNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Required = True
      OnValidate = cdsTipoOSCFOPNATUREZAOPIDValidate
      Precision = 8
      Size = 0
    end
    object cdsTipoOSCFOPL_CFOP: TStringField
      FieldName = 'L_CFOP'
      Size = 4
    end
    object cdsTipoOSCFOPL_DESCRICAONATUREZA: TStringField
      FieldName = 'L_DESCRICAONATUREZA'
      Size = 100
    end
    object cdsTipoOSCFOPUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsTipoOS: TDataSource
    AutoEdit = False
    DataSet = cdsTipoOS
    Left = 163
    Top = 8
  end
  object dsTipoOSCFOP: TDataSource
    AutoEdit = False
    DataSet = cdsTipoOSCFOP
    Left = 163
    Top = 56
  end
  object cdsOSPeca: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqldtsOsPeca
    Params = <>
    AfterInsert = cdsOSPecaAfterInsert
    BeforeEdit = cdsOSPecaBeforeEdit
    AfterEdit = cdsOSPecaAfterEdit
    BeforePost = cdsOSPecaBeforePost
    AfterPost = cdsOSPecaAfterPost
    BeforeDelete = cdsOSPecaBeforeDelete
    AfterDelete = cdsOSPecaAfterDelete
    OnNewRecord = cdsOSPecaNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 476
    Top = 240
    object cdsOSPecaOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSPecaPECAID: TBCDField
      Tag = 1
      FieldName = 'PECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSPecaEMPRESAID: TBCDField
      Tag = 1
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsOSPecaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsOSPecaPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSPecaL_DESCRICAOPRODUTO: TStringField
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSPecaL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsOSPecaNFSID: TBCDField
      Tag = 1
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsOSPecaDATAEMISSAOID: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAEMISSAOID'
    end
    object cdsOSPecaDATAPECA: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAPECA'
    end
    object cdsOSPecaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnValidate = cdsOSPecaQUANTIDADEValidate
      Precision = 8
      Size = 2
    end
    object cdsOSPecaUTILIZADO: TBCDField
      Tag = 1
      FieldName = 'UTILIZADO'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaIMPRESSO: TBCDField
      Tag = 1
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaESTOQUEUTILIZADO: TStringField
      Tag = 1
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsOSPecaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object cdsOSPecaDOCUMENTOENTRADA: TBCDField
      FieldName = 'DOCUMENTOENTRADA'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaMATERIALAVALIADO: TBCDField
      Tag = 1
      FieldName = 'MATERIALAVALIADO'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaAVALIADOR: TStringField
      Tag = 1
      FieldName = 'AVALIADOR'
    end
    object cdsOSPecaJUSTIFICATIVA: TMemoField
      Tag = 1
      FieldName = 'JUSTIFICATIVA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOSPecaUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOSPeca: TDataSource
    AutoEdit = False
    DataSet = cdsOSPeca
    Left = 598
    Top = 240
  end
  object cdsDefeitoGrupo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDefeitosqldtsDefeitoGrupo
    Params = <>
    AfterPost = cdsDefeitoGrupoAfterPost
    AfterDelete = cdsDefeitoGrupoAfterDelete
    OnNewRecord = cdsDefeitoGrupoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 344
    object cdsDefeitoGrupoDEFEITOID: TBCDField
      DisplayWidth = 9
      FieldName = 'DEFEITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDefeitoGrupoGRUPOID: TBCDField
      DisplayWidth = 9
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
      OnValidate = cdsDefeitoGrupoGRUPOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDefeitoGrupoL_SIGLAGRUPO: TStringField
      DisplayWidth = 10
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsDefeitoGrupoL_DESCRICAOGRUPO: TStringField
      DisplayWidth = 10
      FieldName = 'L_DESCRICAOGRUPO'
      Visible = False
      Size = 100
    end
    object cdsDefeitoGrupoUSUARIO: TStringField
      DisplayWidth = 20
      FieldName = 'USUARIO'
    end
  end
  object dsDefeitoGrupo: TDataSource
    AutoEdit = False
    DataSet = cdsDefeitoGrupo
    Left = 163
    Top = 344
  end
  object cdsAparelho: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvAparelho'
    RemoteServer = shdcnnOs
    AfterPost = cdsAparelhoAfterPost
    AfterDelete = cdsAparelhoAfterDelete
    OnNewRecord = cdsAparelhoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 152
    object cdsAparelhoSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsAparelhoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsAparelhoMODELOIDValidate
      Size = 40
    end
    object cdsAparelhoL_DESCRICAOMODELO: TStringField
      FieldName = 'L_DESCRICAOMODELO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAparelhoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAparelhoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAparelhoL_TIPO: TStringField
      FieldName = 'L_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object cdsAparelhoSERIEAPARELHOID: TStringField
      FieldName = 'SERIEAPARELHOID'
      Size = 40
    end
    object cdsAparelhoMODELOAPARELHOID: TStringField
      FieldName = 'MODELOAPARELHOID'
      OnValidate = cdsAparelhoMODELOAPARELHOIDValidate
      Size = 40
    end
    object cdsAparelhoL_DESCRICAOMODELOAPARELHO: TStringField
      FieldName = 'L_DESCRICAOMODELOAPARELHO'
      ProviderFlags = []
      Size = 100
    end
    object cdsAparelhoL_GRUPOAPARELHOID: TBCDField
      FieldName = 'L_GRUPOAPARELHOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object cdsAparelhoL_SIGLAGRUPOAPARELHO: TStringField
      FieldName = 'L_SIGLAGRUPOAPARELHO'
      ProviderFlags = []
      Size = 50
    end
    object cdsAparelhoMODELOJAPAOID: TStringField
      FieldName = 'MODELOJAPAOID'
      Size = 40
    end
    object cdsAparelhoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      OnValidate = cdsAparelhoCLIENTEIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAparelhoL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsAparelhoL_PASTA: TStringField
      FieldName = 'L_PASTA'
      ProviderFlags = []
      Size = 10
    end
    object cdsAparelhoCLIENTEANTERIORID: TBCDField
      FieldName = 'CLIENTEANTERIORID'
      OnValidate = cdsAparelhoCLIENTEANTERIORIDValidate
      Precision = 8
      Size = 0
    end
    object cdsAparelhoL_NOMECLIENTEANTERIOR: TStringField
      FieldName = 'L_NOMECLIENTEANTERIOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsAparelhoVERSAOSOFT: TStringField
      FieldName = 'VERSAOSOFT'
    end
    object cdsAparelhoNIVELHELIO: TStringField
      FieldName = 'NIVELHELIO'
    end
    object cdsAparelhoDATAINSTALACAO: TSQLTimeStampField
      FieldName = 'DATAINSTALACAO'
      OnChange = cdsAparelhoDATAINSTALACAOChange
    end
    object cdsAparelhoDATAGARANTIA: TSQLTimeStampField
      FieldName = 'DATAGARANTIA'
    end
    object cdsAparelhoCEPID: TBCDField
      FieldName = 'CEPID'
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsAparelhoNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsAparelhoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsAparelhoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsAparelhoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsAparelhoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsAparelhoSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsAparelhoTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsAparelhoCEPMDID: TBCDField
      FieldName = 'CEPMDID'
      OnValidate = cdsAparelhoCEPMDIDValidate
      DisplayFormat = '00000-000;1;'
      EditFormat = '00000-000;1;'
      Precision = 8
      Size = 0
    end
    object cdsAparelhoNUMEROMD: TStringField
      FieldName = 'NUMEROMD'
    end
    object cdsAparelhoCOMPLEMENTOMD: TStringField
      FieldName = 'COMPLEMENTOMD'
    end
    object cdsAparelhoENDERECOMD: TStringField
      FieldName = 'ENDERECOMD'
      Size = 100
    end
    object cdsAparelhoBAIRROMD: TStringField
      FieldName = 'BAIRROMD'
      Size = 72
    end
    object cdsAparelhoCIDADEMD: TStringField
      FieldName = 'CIDADEMD'
      Size = 72
    end
    object cdsAparelhoSIGLAUFMDID: TStringField
      FieldName = 'SIGLAUFMDID'
      Size = 2
    end
    object cdsAparelhoTELEFONEMD: TStringField
      FieldName = 'TELEFONEMD'
      Size = 100
    end
    object cdsAparelhoCONTATOMD: TStringField
      FieldName = 'CONTATOMD'
      Size = 100
    end
    object cdsAparelhoCONTATOMD2: TStringField
      FieldName = 'CONTATOMD2'
      Size = 100
    end
    object cdsAparelhoCONTATOMD3: TStringField
      FieldName = 'CONTATOMD3'
      Size = 100
    end
    object cdsAparelhoNOMEDEPTOMD: TStringField
      FieldName = 'NOMEDEPTOMD'
      Size = 100
    end
    object cdsAparelhoEMAILMD: TStringField
      FieldName = 'EMAILMD'
      Size = 200
    end
    object cdsAparelhoCONTRATOID: TStringField
      FieldName = 'CONTRATOID'
      Size = 15
    end
    object cdsAparelhoDATACONTGARANTIAINI: TSQLTimeStampField
      FieldName = 'DATACONTGARANTIAINI'
      OnChange = cdsAparelhoDATACONTGARANTIAINIChange
    end
    object cdsAparelhoDATACONTGARANTIAFIM: TSQLTimeStampField
      FieldName = 'DATACONTGARANTIAFIM'
    end
    object cdsAparelhoNXID: TStringField
      FieldName = 'NXID'
    end
    object cdsAparelhoINVOICEID: TStringField
      FieldName = 'INVOICEID'
    end
    object cdsAparelhoTMBID: TStringField
      FieldName = 'TMBID'
    end
    object cdsAparelhoEXIBEOBS: TBCDField
      FieldName = 'EXIBEOBS'
      Precision = 1
      Size = 0
    end
    object cdsAparelhoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object cdsAparelhoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsAparelhosqldtsTubo: TDataSetField
      FieldName = 'sqldtsTubo'
    end
    object cdsAparelhosqldtsTuboInativo: TDataSetField
      FieldName = 'sqldtsTuboInativo'
    end
  end
  object dsAparelho: TDataSource
    AutoEdit = False
    DataSet = cdsAparelho
    Left = 163
    Top = 152
  end
  object cdsTubo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAparelhosqldtsTubo
    Params = <>
    BeforeInsert = cdsTuboBeforeInsert
    BeforeEdit = cdsTuboBeforeEdit
    BeforePost = cdsTuboBeforePost
    AfterPost = cdsTuboAfterPost
    AfterDelete = cdsTuboAfterDelete
    OnNewRecord = cdsTuboNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 200
    object cdsTuboSERIEID: TStringField
      Tag = 1
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsTuboMODELOID: TStringField
      Tag = 1
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsTuboSERIETUBOID: TStringField
      FieldName = 'SERIETUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsTuboMODELOTUBOID: TStringField
      FieldName = 'MODELOTUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsTuboMODELOTUBOIDValidate
      Size = 40
    end
    object cdsTuboL_DESCRICAOMODELOTUBO: TStringField
      FieldName = 'L_DESCRICAOMODELOTUBO'
      ProviderFlags = []
      Size = 100
    end
    object cdsTuboDATAATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATAATUALIZACAO'
    end
    object cdsTuboNUMCORTESATUAL: TBCDField
      FieldName = 'NUMCORTESATUAL'
      OnChange = cdsTuboNUMCORTESATUALChange
      Precision = 8
      Size = 0
    end
    object cdsTuboNUMCORTESTROCA: TBCDField
      FieldName = 'NUMCORTESTROCA'
      Precision = 8
      Size = 0
    end
    object cdsTuboNUMCORTES: TBCDField
      FieldName = 'NUMCORTES'
      Precision = 8
      Size = 0
    end
    object cdsTuboUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsTubo: TDataSource
    AutoEdit = False
    DataSet = cdsTubo
    Left = 163
    Top = 200
  end
  object cdsTuboInativo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAparelhosqldtsTuboInativo
    Params = <>
    AfterPost = cdsTuboInativoAfterPost
    AfterDelete = cdsTuboInativoAfterDelete
    OnNewRecord = cdsTuboInativoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 248
    object cdsTuboInativoSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsTuboInativoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsTuboInativoMODELOIDValidate
      Size = 40
    end
    object cdsTuboInativoSERIETUBOID: TStringField
      FieldName = 'SERIETUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsTuboInativoMODELOTUBOID: TStringField
      FieldName = 'MODELOTUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object cdsTuboInativoL_DESCRICAOMODELOTUBO: TStringField
      FieldName = 'L_DESCRICAOMODELOTUBO'
      ProviderFlags = []
      Size = 100
    end
    object cdsTuboInativoCORTESREALIZADOS: TBCDField
      FieldName = 'CORTESREALIZADOS'
      Precision = 8
      Size = 0
    end
    object cdsTuboInativoCORTESTROCA: TBCDField
      FieldName = 'CORTESTROCA'
      Precision = 8
      Size = 0
    end
    object cdsTuboInativoDATASUBST: TSQLTimeStampField
      FieldName = 'DATASUBST'
    end
    object cdsTuboInativoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsTuboInativo: TDataSource
    AutoEdit = False
    DataSet = cdsTuboInativo
    Left = 163
    Top = 248
  end
  object cdsClassifPeca: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvClassifPeca'
    RemoteServer = shdcnnOs
    AfterPost = cdsClassifPecaAfterPost
    AfterDelete = cdsClassifPecaAfterDelete
    Left = 72
    Top = 448
    object cdsClassifPecaCLASSIFPECAID: TBCDField
      FieldName = 'CLASSIFPECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsClassifPecaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsClassifPecaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsOsClassifPeca: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOSClassifPeca'
    RemoteServer = shdcnnOs
    AfterPost = cdsOsClassifPecaAfterPost
    AfterDelete = cdsOsClassifPecaAfterDelete
    OnNewRecord = cdsOsClassifPecaNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 476
    Top = 8
    object cdsOsClassifPecaOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOsClassifPecaPECAID: TBCDField
      FieldName = 'PECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsClassifPecaITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsClassifPecaCODIGOBARRASID: TBCDField
      FieldName = 'CODIGOBARRASID'
      Precision = 8
      Size = 0
    end
    object cdsOsClassifPecaSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsOsClassifPecaMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsOsClassifPecaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsOsClassifPecaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsOsClassifPecaPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsClassifPecaL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsClassifPecaL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsClassifPecaL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
    end
    object cdsOsClassifPecaCLASSIFPECAID: TBCDField
      FieldName = 'CLASSIFPECAID'
      OnValidate = cdsOsClassifPecaCLASSIFPECAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsClassifPecaL_DESCRICAOCLASSIFPECA: TStringField
      FieldName = 'L_DESCRICAOCLASSIFPECA'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsClassifPecaDATACLASSIFICACAO: TSQLTimeStampField
      FieldName = 'DATACLASSIFICACAO'
    end
    object cdsOsClassifPecaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsOsClassifPecaVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object cdsOsClassifPecaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOsClassifPecaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsClassifPeca: TDataSource
    AutoEdit = False
    DataSet = cdsClassifPeca
    Left = 163
    Top = 448
  end
  object dsOsClassifPeca: TDataSource
    AutoEdit = False
    DataSet = cdsOsClassifPeca
    Left = 598
    Top = 8
  end
  object cdsOSPecaClassif: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOSPecaClassif'
    RemoteServer = shdcnnOs
    BeforePost = cdsOSPecaClassifBeforePost
    OnNewRecord = cdsOSPecaClassifNewRecord
    Left = 476
    Top = 384
    object cdsOSPecaClassifOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = cdsOSPecaClassifOSIDValidate
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSPecaClassifPECAID: TBCDField
      Tag = 1
      FieldName = 'PECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSPecaClassifEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsOSPecaClassifPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsOSPecaClassifPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSPecaClassifL_DESCRICAOPRODUTO: TStringField
      Tag = 1
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSPecaClassifL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsOSPecaClassifL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      Precision = 8
      Size = 0
    end
    object cdsOSPecaClassifL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
    end
    object cdsOSPecaClassifNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object cdsOSPecaClassifDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object cdsOSPecaClassifDATAPECA: TSQLTimeStampField
      Tag = 1
      FieldName = 'DATAPECA'
    end
    object cdsOSPecaClassifQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object cdsOSPecaClassifUTILIZADO: TBCDField
      Tag = 1
      FieldName = 'UTILIZADO'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaClassifIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaClassifESTOQUEUTILIZADO: TStringField
      Tag = 1
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object cdsOSPecaClassifMATERIALAVALIADO: TBCDField
      Tag = 1
      FieldName = 'MATERIALAVALIADO'
      Precision = 1
      Size = 0
    end
    object cdsOSPecaClassifAVALIADOR: TStringField
      FieldName = 'AVALIADOR'
    end
    object cdsOSPecaClassifJUSTIFICATIVA: TMemoField
      FieldName = 'JUSTIFICATIVA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOSPecaClassifUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOSPecaClassif: TDataSource
    AutoEdit = False
    DataSet = cdsOSPecaClassif
    Left = 598
    Top = 384
  end
  object cdsLocalizacaoOS: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvLocalizacaoOS'
    RemoteServer = shdcnnOs
    AfterPost = cdsTipoOsAfterPost
    AfterDelete = cdsTipoOsAfterDelete
    OnNewRecord = cdsLocalizacaoOSNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 400
    object cdsLocalizacaoOSLOCALIZACAOOSID: TBCDField
      FieldName = 'LOCALIZACAOOSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsLocalizacaoOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsLocalizacaoOSFECHAROS: TBCDField
      FieldName = 'FECHAROS'
      Precision = 8
      Size = 0
    end
    object cdsLocalizacaoOSUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsLocalizacaoOS: TDataSource
    AutoEdit = False
    DataSet = cdsLocalizacaoOS
    Left = 163
    Top = 400
  end
  object cdsPecaPendente: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvPecaPendente'
    RemoteServer = shdcnnOs
    AfterPost = cdsTipoOsAfterPost
    AfterDelete = cdsTipoOsAfterDelete
    OnNewRecord = cdsPecaPendenteNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 476
    Top = 56
    object cdsPecaPendentePECAPENDENTEID: TBCDField
      FieldName = 'PECAPENDENTEID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsPecaPendenteDATAINCLUSAO: TSQLTimeStampField
      FieldName = 'DATAINCLUSAO'
    end
    object cdsPecaPendenteEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsPecaPendentePRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsPecaPendentePRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsPecaPendenteL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      Precision = 8
      Size = 0
    end
    object cdsPecaPendenteL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsPecaPendenteL_ORIGEM: TStringField
      FieldName = 'L_ORIGEM'
      Size = 1
    end
    object cdsPecaPendenteL_PARTNUMBER: TStringField
      FieldName = 'L_PARTNUMBER'
    end
    object cdsPecaPendenteL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsPecaPendenteL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      Size = 100
    end
    object cdsPecaPendenteL_ESTOQUETOTAL: TBCDField
      FieldName = 'L_ESTOQUETOTAL'
      Precision = 8
      Size = 2
    end
    object cdsPecaPendenteQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 14
      Size = 2
    end
    object cdsPecaPendenteOSID: TStringField
      FieldName = 'OSID'
      OnValidate = cdsPecaPendenteOSIDValidate
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsPecaPendenteL_SERIEID: TStringField
      FieldName = 'L_SERIEID'
      Size = 40
    end
    object cdsPecaPendenteL_MODELOID: TStringField
      FieldName = 'L_MODELOID'
      Size = 40
    end
    object cdsPecaPendenteLOCALPECAID: TBCDField
      FieldName = 'LOCALPECAID'
      Precision = 8
      Size = 0
    end
    object cdsPecaPendenteOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsPecaPendenteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPecaPendente: TDataSource
    AutoEdit = False
    DataSet = cdsPecaPendente
    Left = 598
    Top = 56
  end
  object cdsOSMaterial: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqldtsOSMaterial
    Params = <>
    BeforeInsert = cdsOSMaterialBeforeInsert
    BeforeEdit = cdsOSMaterialBeforeEdit
    AfterPost = cdsOSMaterialAfterPost
    AfterDelete = cdsOSMaterialAfterDelete
    OnNewRecord = cdsOSMaterialNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 476
    Top = 288
    object cdsOSMaterialOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.00\.0000\.AA;1;_'
      Size = 13
    end
    object cdsOSMaterialITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsOSMaterialPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialL_DESCRICAOPRODUTO: TStringField
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSMaterialALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object cdsOSMaterialQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      OnValidate = cdsOSMaterialQUANTIDADEValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 8
      Size = 0
    end
    object cdsOSMaterialDESCRICAOMATSERV: TStringField
      FieldName = 'DESCRICAOMATSERV'
      Size = 100
    end
    object cdsOSMaterialVLRPRECOUNITARIO: TFMTBCDField
      FieldName = 'VLRPRECOUNITARIO'
      OnValidate = cdsOSMaterialVLRPRECOUNITARIOValidate
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSMaterialVLRPRECOTOTAL: TFMTBCDField
      FieldName = 'VLRPRECOTOTAL'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 20
    end
    object cdsOSMaterialUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOSMaterial: TDataSource
    AutoEdit = False
    DataSet = cdsOSMaterial
    Left = 598
    Top = 288
  end
  object cdsOSProgSemanal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvOSProgSemanal'
    RemoteServer = shdcnnOs
    Left = 476
    Top = 112
    object cdsOSProgSemanalDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOSProgSemanalITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSProgSemanalOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsOSProgSemanalCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsOSProgSemanalNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsOSProgSemanalCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsOSProgSemanalSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsOSProgSemanalSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsOSProgSemanalMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsOSProgSemanalHORATRABINICIAL: TSQLTimeStampField
      FieldName = 'HORATRABINICIAL'
    end
    object cdsOSProgSemanalHORATRABFINAL: TSQLTimeStampField
      FieldName = 'HORATRABFINAL'
    end
    object cdsOSProgSemanalCOMENTARIO: TMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOSProgSemanalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsOSProgSemanalsqlOSProgSemanalItem: TDataSetField
      FieldName = 'sqlOSProgSemanalItem'
    end
  end
  object dsOSProgSemanal: TDataSource
    DataSet = cdsOSProgSemanal
    Left = 598
    Top = 112
  end
  object cdsOSProgSemanalItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOSProgSemanalsqlOSProgSemanalItem
    Params = <>
    Left = 476
    Top = 168
    object cdsOSProgSemanalItemDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOSProgSemanalItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSProgSemanalItemTECNICOID: TBCDField
      FieldName = 'TECNICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSProgSemanalItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOSProgSemanalItem: TDataSource
    DataSet = cdsOSProgSemanalItem
    Left = 598
    Top = 168
  end
  object cdsOcOperacional: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOcOperacional'
    RemoteServer = shdcnnOs
    AfterPost = cdsOcOperacionalAfterPost
    AfterDelete = cdsOcOperacionalAfterDelete
    OnNewRecord = cdsOcOperacionalNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 72
    Top = 496
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
    Left = 160
    Top = 496
  end
  object cdsOsOcOperacional: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqldtsOSOcOperacional
    Params = <>
    BeforeInsert = cdsOsOcOperacionalBeforeInsert
    BeforeEdit = cdsOsOcOperacionalBeforeEdit
    AfterPost = cdsOsOcOperacionalAfterPost
    AfterDelete = cdsOsOcOperacionalAfterDelete
    OnNewRecord = cdsOsOcOperacionalNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 476
    Top = 336
    object cdsOsOcOperacionalOSID: TStringField
      Tag = 1
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsOsOcOperacionalITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsOcOperacionalDATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'DATAOCORRENCIA'
    end
    object cdsOsOcOperacionalOCOPERACIONALID: TBCDField
      FieldName = 'OCOPERACIONALID'
      OnValidate = cdsOsOcOperacionalOCOPERACIONALIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOsOcOperacionalL_DESCRICAOOCOPERACIONAL: TStringField
      FieldName = 'L_DESCRICAOOCOPERACIONAL'
      ProviderFlags = []
      Size = 100
    end
    object cdsOsOcOperacionalDATAACAOTOMADA: TSQLTimeStampField
      FieldName = 'DATAACAOTOMADA'
      OnValidate = cdsOsOcOperacionalDATAACAOTOMADAValidate
    end
    object cdsOsOcOperacionalUSUARIOACAOTOMADA: TStringField
      Tag = 1
      FieldName = 'USUARIOACAOTOMADA'
    end
    object cdsOsOcOperacionalACAOTOMADA: TMemoField
      FieldName = 'ACAOTOMADA'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsOsOcOperacionalUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsOSOcOperacional: TDataSource
    AutoEdit = False
    DataSet = cdsOsOcOperacional
    Left = 598
    Top = 336
  end
  object cdsOsTerceiroItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOsTerceirosqldtsOSTerceiroItem
    Params = <>
    Left = 252
    Top = 200
    object cdsOsTerceiroItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroItemNFSID: TBCDField
      FieldName = 'NFSID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      Required = True
    end
    object cdsOsTerceiroItemITEMID: TBCDField
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsOsTerceiroItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object cdsOsTerceiroItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
    end
    object cdsOsTerceiroItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object cdsOsTerceiroItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object cdsOsTerceiroItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOsTerceiroItem: TDataSource
    AutoEdit = False
    DataSet = cdsOsTerceiroItem
    Left = 366
    Top = 199
  end
  object cdsDemoCatalogo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDemoCatalogo'
    RemoteServer = shdcnnOs
    AfterPost = cdsDemoCatalogoAfterPost
    AfterDelete = cdsDemoCatalogoAfterDelete
    OnNewRecord = cdsDemoCatalogoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 252
    Top = 400
    object cdsDemoCatalogoDEMOCATALOGOID: TBCDField
      FieldName = 'DEMOCATALOGOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoDESCRICAOEQUIPAMENTO: TStringField
      FieldName = 'DESCRICAOEQUIPAMENTO'
      Size = 300
    end
    object cdsDemoCatalogoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsDemoCatalogoEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsDemoCatalogoPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsDemoCatalogoL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsDemoCatalogoL_OBSERVACAO: TStringField
      FieldName = 'L_OBSERVACAO'
      ProviderFlags = []
      Size = 200
    end
    object cdsDemoCatalogoSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsDemoCatalogoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsDemoCatalogosqldtsDemoCatalogoItem: TDataSetField
      FieldName = 'sqldtsDemoCatalogoItem'
    end
  end
  object cdsDemoCatalogoItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDemoCatalogosqldtsDemoCatalogoItem
    Params = <>
    AfterPost = cdsDemoCatalogoItemAfterPost
    AfterDelete = cdsDemoCatalogoItemAfterDelete
    OnNewRecord = cdsDemoCatalogoItemNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 252
    Top = 448
    object cdsDemoCatalogoItemDEMOCATALOGOID: TBCDField
      Tag = 1
      FieldName = 'DEMOCATALOGOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoItemITEMID: TBCDField
      Tag = 1
      FieldName = 'ITEMID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsDemoCatalogoEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsDemoCatalogoItemPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsDemoCatalogoItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      Size = 100
    end
    object cdsDemoCatalogoItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
    end
    object cdsDemoCatalogoItemL_OBSERVACAO: TStringField
      FieldName = 'L_OBSERVACAO'
      Size = 200
    end
    object cdsDemoCatalogoItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsDemoCatalogoItemUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsDemoCatalogo: TDataSource
    AutoEdit = False
    DataSet = cdsDemoCatalogo
    Left = 366
    Top = 400
  end
  object dsDemoCatalogoItem: TDataSource
    AutoEdit = False
    DataSet = cdsDemoCatalogoItem
    Left = 366
    Top = 448
  end
  object cdsOSDemo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOssqldtsOSDemo
    Params = <>
    AfterPost = cdsOSDemoAfterPost
    AfterDelete = cdsOSDemoAfterDelete
    OnNewRecord = cdsOSDemoNewRecord
    OnReconcileError = cdsTipoOsReconcileError
    Left = 253
    Top = 248
    object cdsOSDemoOSID: TStringField
      Tag = 2
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object cdsOSDemoITEMID: TBCDField
      Tag = 2
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOSDemoDEMOCATALOGOID: TBCDField
      FieldName = 'DEMOCATALOGOID'
      OnValidate = cdsOSDemoDEMOCATALOGOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSDemoL_DESCRICAODEMOCATALOGO: TStringField
      FieldName = 'L_DESCRICAODEMOCATALOGO'
      ProviderFlags = []
      Size = 300
    end
    object cdsOSDemoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      OnValidate = cdsOSDemoEMPRESAIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSDemoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      OnValidate = cdsOSDemoPRODUTOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsOSDemoSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsOSDemoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object cdsOSDemoL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object cdsOSDemoL_OBSERVACAO: TStringField
      FieldName = 'L_OBSERVACAO'
      ProviderFlags = []
      Size = 200
    end
    object cdsOSDemoUSUARIO: TStringField
      Tag = 2
      FieldName = 'USUARIO'
    end
  end
  object dsOSDemo: TDataSource
    AutoEdit = False
    DataSet = cdsOSDemo
    Left = 368
    Top = 248
  end
end
