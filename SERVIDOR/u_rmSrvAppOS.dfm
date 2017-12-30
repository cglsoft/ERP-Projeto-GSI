object SrvAppOS: TSrvAppOS
  OldCreateOrder = False
  Height = 579
  Width = 720
  object sqldtsTipoOs: TSQLDataSet
    CommandText = 
      'SELECT OS_TIPOOS.TIPOOSID,'#13#10'       OS_TIPOOS.DESCRICAO,'#13#10'       ' +
      'OS_TIPOOS.BLOQABERTURAOS,'#13#10'       OS_TIPOOS.BLOQLANCAMENTOS,'#13#10'  ' +
      '     OS_TIPOOS.EXIGIRCORRELACAO,'#13#10'       OS_TIPOOS.BLOQMOVPRODUT' +
      'OS,'#13#10'       OS_TIPOOS.LANCRDVOSRESTRITA,'#13#10'       OS_TIPOOS.GARAN' +
      'TIA,'#13#10'       OS_TIPOOS.EXIGIRSERIEOSFECH,'#13#10'       OS_TIPOOS.DERI' +
      'VADA,'#13#10'       OS_TIPOOS.FECHESPECIFICO,'#13#10'       OS_TIPOOS.EXIGIR' +
      'SERIEABERTURA,'#13#10'       OS_TIPOOS.EXIGIRMODELOABERTURA,'#13#10'       O' +
      'S_TIPOOS.EXIGIRLIBERACAO,'#13#10'       OS_TIPOOS.USUARIO'#13#10'  FROM OS_T' +
      'IPOOS OS_TIPOOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 60
    Top = 2
    object sqldtsTipoOsTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object sqldtsTipoOsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoOsBLOQABERTURAOS: TBCDField
      FieldName = 'BLOQABERTURAOS'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsBLOQLANCAMENTOS: TBCDField
      FieldName = 'BLOQLANCAMENTOS'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsEXIGIRCORRELACAO: TBCDField
      FieldName = 'EXIGIRCORRELACAO'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsBLOQMOVPRODUTOS: TBCDField
      FieldName = 'BLOQMOVPRODUTOS'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsLANCRDVOSRESTRITA: TBCDField
      FieldName = 'LANCRDVOSRESTRITA'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsGARANTIA: TBCDField
      FieldName = 'GARANTIA'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsEXIGIRSERIEOSFECH: TBCDField
      FieldName = 'EXIGIRSERIEOSFECH'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsDERIVADA: TBCDField
      FieldName = 'DERIVADA'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsFECHESPECIFICO: TBCDField
      FieldName = 'FECHESPECIFICO'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsEXIGIRSERIEABERTURA: TBCDField
      FieldName = 'EXIGIRSERIEABERTURA'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsEXIGIRMODELOABERTURA: TBCDField
      FieldName = 'EXIGIRMODELOABERTURA'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsEXIGIRLIBERACAO: TBCDField
      FieldName = 'EXIGIRLIBERACAO'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoOsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsCustoHora: TSQLDataSet
    CommandText = 
      'SELECT CUSTOHORAID,'#13#10'       DESCRICAO,'#13#10'       VLRHORATRAB,'#13#10'   ' +
      '    VLRHORATRANSP,'#13#10'       VLRHORAESPERA,'#13#10'       VLRHORAOUTROS,' +
      #13#10'       USUARIO'#13#10'  FROM OS_CUSTOHORA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 60
    Top = 92
    object sqldtsCustoHoraCUSTOHORAID: TBCDField
      FieldName = 'CUSTOHORAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCustoHoraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsCustoHoraVLRHORATRAB: TBCDField
      FieldName = 'VLRHORATRAB'
      Precision = 14
      Size = 2
    end
    object sqldtsCustoHoraVLRHORATRANSP: TBCDField
      FieldName = 'VLRHORATRANSP'
      Precision = 14
      Size = 2
    end
    object sqldtsCustoHoraVLRHORAESPERA: TBCDField
      FieldName = 'VLRHORAESPERA'
      Precision = 14
      Size = 2
    end
    object sqldtsCustoHoraVLRHORAOUTROS: TBCDField
      FieldName = 'VLRHORAOUTROS'
      Precision = 14
      Size = 2
    end
    object sqldtsCustoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAparelho: TSQLDataSet
    CommandText = 
      'SELECT OS_APARELHO.SERIEID,'#13#10'       OS_APARELHO.MODELOID,'#13#10'     ' +
      '  PP_CATALOGO_MODELO.DESCRICAOPORTUGUES L_DESCRICAOMODELO,'#13#10'    ' +
      '   PP_CATALOGO_COMPONENTE.GRUPOID L_GRUPOID,'#13#10'       EF_GRUPO_CO' +
      'MPONENTE.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'       PP_CATALOGO_COMPONENTE' +
      '.TIPO L_TIPO,'#13#10'       OS_APARELHO.SERIEAPARELHOID,'#13#10'       OS_AP' +
      'ARELHO.MODELOAPARELHOID,'#13#10'       PP_CATALOGO_MODELOAPARELHO.DESC' +
      'RICAOPORTUGUES L_DESCRICAOMODELOAPARELHO,'#13#10'       PP_CATALOGO_AP' +
      'ARELHO.GRUPOID L_GRUPOAPARELHOID,'#13#10'       EF_GRUPO_APARELHO.SIGL' +
      'AGRUPO L_SIGLAGRUPOAPARELHO,'#13#10'       OS_APARELHO.MODELOJAPAOID,'#13 +
      #10'       OS_APARELHO.CLIENTEID,'#13#10'       EF_ENTIDADE_CLIENTE.NOME ' +
      'L_NOMECLIENTE,'#13#10'       EF_ENTIDADE_CLIENTE.PASTA L_PASTA,'#13#10'     ' +
      '  OS_APARELHO.CLIENTEANTERIORID,'#13#10'       EF_ENTIDADE_CLIENTEANTE' +
      'RIOR.NOME L_NOMECLIENTEANTERIOR,'#13#10'       OS_APARELHO.VERSAOSOFT,' +
      #13#10'       OS_APARELHO.NIVELHELIO,'#13#10'       OS_APARELHO.DATAINSTALA' +
      'CAO,'#13#10'       OS_APARELHO.DATAGARANTIA,'#13#10'       OS_APARELHO.CEPID' +
      ','#13#10'       OS_APARELHO.NUMERO,'#13#10'       OS_APARELHO.COMPLEMENTO,'#13#10 +
      '       OS_APARELHO.ENDERECO,'#13#10'       OS_APARELHO.BAIRRO,'#13#10'      ' +
      ' OS_APARELHO.CIDADE,'#13#10'       OS_APARELHO.SIGLAUFID,'#13#10'       OS_A' +
      'PARELHO.TELEFONE,'#13#10'       OS_APARELHO.CONTRATOID,'#13#10'       OS_APA' +
      'RELHO.CEPMDID,'#13#10'       OS_APARELHO.NUMEROMD,'#13#10'       OS_APARELHO' +
      '.COMPLEMENTOMD,'#13#10'       OS_APARELHO.ENDERECOMD,'#13#10'       OS_APARE' +
      'LHO.BAIRROMD,'#13#10'       OS_APARELHO.CIDADEMD,'#13#10'       OS_APARELHO.' +
      'SIGLAUFMDID,'#13#10'       OS_APARELHO.TELEFONEMD,'#13#10'       OS_APARELHO' +
      '.CONTATOMD,'#13#10'       OS_APARELHO.CONTATOMD2,'#13#10'       OS_APARELHO.' +
      'CONTATOMD3,       '#13#10'       OS_APARELHO.NOMEDEPTOMD,'#13#10'       OS_A' +
      'PARELHO.EMAILMD,       '#13#10'       OS_APARELHO.DATACONTGARANTIAINI,' +
      #13#10'       OS_APARELHO.DATACONTGARANTIAFIM,'#13#10'       OS_APARELHO.NX' +
      'ID,'#13#10'       OS_APARELHO.INVOICEID,'#13#10'       OS_APARELHO.TMBID,'#13#10' ' +
      '      OS_APARELHO.EXIBEOBS,'#13#10'       OS_APARELHO.OBSERVACAO,'#13#10'   ' +
      '    OS_APARELHO.USUARIO'#13#10'  FROM OS_APARELHO,'#13#10'       PP_CATALOGO' +
      ' PP_CATALOGO_MODELO,'#13#10'       PP_CATALOGO PP_CATALOGO_MODELOAPARE' +
      'LHO,'#13#10'       PP_CATALOGO PP_CATALOGO_APARELHO,'#13#10'       PP_CATALO' +
      'GO PP_CATALOGO_COMPONENTE,'#13#10'       EF_ENTIDADE EF_ENTIDADE_CLIEN' +
      'TE,'#13#10'       EF_ENTIDADE EF_ENTIDADE_CLIENTEANTERIOR,'#13#10'       EF_' +
      'GRUPO EF_GRUPO_COMPONENTE,'#13#10'       EF_GRUPO EF_GRUPO_APARELHO'#13#10' ' +
      'WHERE PP_CATALOGO_MODELO.MODELOID(+) = OS_APARELHO.MODELOID'#13#10'   ' +
      '    AND PP_CATALOGO_MODELOAPARELHO.MODELOID (+) = OS_APARELHO.MO' +
      'DELOAPARELHOID'#13#10'       AND PP_CATALOGO_COMPONENTE.MODELOID(+) = ' +
      'OS_APARELHO.MODELOID'#13#10'       AND PP_CATALOGO_APARELHO.MODELOID(+' +
      ') = OS_APARELHO.MODELOAPARELHOID'#13#10'       AND EF_ENTIDADE_CLIENTE' +
      '.ENTIDADEID (+) = OS_APARELHO.CLIENTEID'#13#10'       AND EF_ENTIDADE_' +
      'CLIENTEANTERIOR.ENTIDADEID (+) = OS_APARELHO.CLIENTEANTERIORID'#13#10 +
      '       AND PP_CATALOGO_COMPONENTE.GRUPOID = EF_GRUPO_COMPONENTE.' +
      'GRUPOID(+)'#13#10'       AND PP_CATALOGO_APARELHO.GRUPOID = EF_GRUPO_A' +
      'PARELHO.GRUPOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 60
    Top = 135
    object sqldtsAparelhoSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsAparelhoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsAparelhoL_DESCRICAOMODELO: TStringField
      FieldName = 'L_DESCRICAOMODELO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAparelhoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAparelhoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsAparelhoL_TIPO: TStringField
      FieldName = 'L_TIPO'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsAparelhoSERIEAPARELHOID: TStringField
      FieldName = 'SERIEAPARELHOID'
      Size = 40
    end
    object sqldtsAparelhoMODELOAPARELHOID: TStringField
      FieldName = 'MODELOAPARELHOID'
      Size = 40
    end
    object sqldtsAparelhoL_DESCRICAOMODELOAPARELHO: TStringField
      FieldName = 'L_DESCRICAOMODELOAPARELHO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAparelhoL_GRUPOAPARELHOID: TBCDField
      FieldName = 'L_GRUPOAPARELHOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsAparelhoL_SIGLAGRUPOAPARELHO: TStringField
      FieldName = 'L_SIGLAGRUPOAPARELHO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsAparelhoMODELOJAPAOID: TStringField
      FieldName = 'MODELOJAPAOID'
      Size = 40
    end
    object sqldtsAparelhoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsAparelhoL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAparelhoL_PASTA: TStringField
      FieldName = 'L_PASTA'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsAparelhoCLIENTEANTERIORID: TBCDField
      FieldName = 'CLIENTEANTERIORID'
      Precision = 8
      Size = 0
    end
    object sqldtsAparelhoL_NOMECLIENTEANTERIOR: TStringField
      FieldName = 'L_NOMECLIENTEANTERIOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsAparelhoVERSAOSOFT: TStringField
      FieldName = 'VERSAOSOFT'
    end
    object sqldtsAparelhoNIVELHELIO: TStringField
      FieldName = 'NIVELHELIO'
    end
    object sqldtsAparelhoDATAINSTALACAO: TSQLTimeStampField
      FieldName = 'DATAINSTALACAO'
    end
    object sqldtsAparelhoDATAGARANTIA: TSQLTimeStampField
      FieldName = 'DATAGARANTIA'
    end
    object sqldtsAparelhoCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsAparelhoNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsAparelhoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsAparelhoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsAparelhoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsAparelhoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsAparelhoSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsAparelhoTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object sqldtsAparelhoCEPMDID: TBCDField
      FieldName = 'CEPMDID'
      Precision = 8
      Size = 0
    end
    object sqldtsAparelhoNUMEROMD: TStringField
      FieldName = 'NUMEROMD'
    end
    object sqldtsAparelhoCOMPLEMENTOMD: TStringField
      FieldName = 'COMPLEMENTOMD'
    end
    object sqldtsAparelhoENDERECOMD: TStringField
      FieldName = 'ENDERECOMD'
      Size = 100
    end
    object sqldtsAparelhoBAIRROMD: TStringField
      FieldName = 'BAIRROMD'
      Size = 72
    end
    object sqldtsAparelhoCIDADEMD: TStringField
      FieldName = 'CIDADEMD'
      Size = 72
    end
    object sqldtsAparelhoSIGLAUFMDID: TStringField
      FieldName = 'SIGLAUFMDID'
      Size = 2
    end
    object sqldtsAparelhoTELEFONEMD: TStringField
      FieldName = 'TELEFONEMD'
      Size = 100
    end
    object sqldtsAparelhoCONTATOMD: TStringField
      FieldName = 'CONTATOMD'
      Size = 100
    end
    object sqldtsAparelhoCONTATOMD2: TStringField
      FieldName = 'CONTATOMD2'
      Size = 100
    end
    object sqldtsAparelhoCONTATOMD3: TStringField
      FieldName = 'CONTATOMD3'
      Size = 100
    end
    object sqldtsAparelhoNOMEDEPTOMD: TStringField
      FieldName = 'NOMEDEPTOMD'
      Size = 100
    end
    object sqldtsAparelhoEMAILMD: TStringField
      FieldName = 'EMAILMD'
      Size = 200
    end
    object sqldtsAparelhoCONTRATOID: TStringField
      FieldName = 'CONTRATOID'
      Size = 15
    end
    object sqldtsAparelhoDATACONTGARANTIAINI: TSQLTimeStampField
      FieldName = 'DATACONTGARANTIAINI'
    end
    object sqldtsAparelhoDATACONTGARANTIAFIM: TSQLTimeStampField
      FieldName = 'DATACONTGARANTIAFIM'
    end
    object sqldtsAparelhoNXID: TStringField
      FieldName = 'NXID'
    end
    object sqldtsAparelhoINVOICEID: TStringField
      FieldName = 'INVOICEID'
    end
    object sqldtsAparelhoTMBID: TStringField
      FieldName = 'TMBID'
    end
    object sqldtsAparelhoEXIBEOBS: TBCDField
      FieldName = 'EXIBEOBS'
      Precision = 1
      Size = 0
    end
    object sqldtsAparelhoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 400
    end
    object sqldtsAparelhoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTipoOs: TDataSetProvider
    DataSet = sqldtsTipoOs
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 2
  end
  object dsprvCustoHora: TDataSetProvider
    DataSet = sqldtsCustoHora
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 92
  end
  object sqldtsDefeito: TSQLDataSet
    CommandText = 
      'SELECT OS_DEFEITO.DEFEITOID,'#13#10'       OS_DEFEITO.DESCRICAO,'#13#10'    ' +
      '   OS_DEFEITO.USUARIO'#13#10'  FROM OS_DEFEITO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 60
    Top = 269
    object sqldtsDefeitoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDefeitoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sqldtsDefeitoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvDefeito: TDataSetProvider
    DataSet = sqldtsDefeito
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 269
  end
  object sqldtsTuboInativo: TSQLDataSet
    CommandText = 
      'SELECT OS_TUBOINATIVO.SERIEID,'#13#10'       OS_TUBOINATIVO.MODELOID,'#13 +
      #10'       OS_TUBOINATIVO.SERIETUBOID,'#13#10'       OS_TUBOINATIVO.MODEL' +
      'OTUBOID,'#13#10'       PP_CATALOGO.DESCRICAOPORTUGUES L_DESCRICAOMODEL' +
      'OTUBO,'#13#10'       OS_TUBOINATIVO.CORTESREALIZADOS,'#13#10'       OS_TUBOI' +
      'NATIVO.CORTESTROCA,'#13#10'       OS_TUBOINATIVO.DATASUBST,'#13#10'       OS' +
      '_TUBOINATIVO.USUARIO'#13#10'  FROM OS_TUBOINATIVO,'#13#10'       PP_CATALOGO' +
      #13#10' WHERE '#13#10'       PP_CATALOGO.MODELOID(+) = OS_TUBOINATIVO.MODEL' +
      'OTUBOID'#13#10'       AND OS_TUBOINATIVO.SERIEID = :SERIEID'#13#10'       AN' +
      'D OS_TUBOINATIVO.MODELOID = :MODELOID'
    DataSource = dsAparelhoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERIEID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftString
        Name = 'MODELOID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 60
    Top = 224
    object sqldtsTuboInativoSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboInativoMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboInativoSERIETUBOID: TStringField
      FieldName = 'SERIETUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboInativoMODELOTUBOID: TStringField
      FieldName = 'MODELOTUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboInativoL_DESCRICAOMODELOTUBO: TStringField
      FieldName = 'L_DESCRICAOMODELOTUBO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsTuboInativoCORTESREALIZADOS: TBCDField
      FieldName = 'CORTESREALIZADOS'
      Precision = 8
      Size = 0
    end
    object sqldtsTuboInativoCORTESTROCA: TBCDField
      FieldName = 'CORTESTROCA'
      Precision = 8
      Size = 0
    end
    object sqldtsTuboInativoDATASUBST: TSQLTimeStampField
      FieldName = 'DATASUBST'
    end
    object sqldtsTuboInativoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsTubo: TSQLDataSet
    CommandText = 
      'SELECT OS_TUBO.SERIEID,'#13#10'       OS_TUBO.MODELOID,'#13#10'       OS_TUB' +
      'O.SERIETUBOID,'#13#10'       OS_TUBO.MODELOTUBOID,'#13#10'       PP_CATALOGO' +
      '.DESCRICAOPORTUGUES L_DESCRICAOMODELOTUBO,'#13#10'       OS_TUBO.DATAA' +
      'TUALIZACAO,'#13#10'       OS_TUBO.NUMCORTESATUAL,'#13#10'       OS_TUBO.NUMC' +
      'ORTESTROCA,'#13#10'       OS_TUBO.NUMCORTES,'#13#10'       OS_TUBO.USUARIO'#13#10 +
      '  FROM OS_TUBO,'#13#10'       PP_CATALOGO'#13#10' WHERE '#13#10'   PP_CATALOGO.MOD' +
      'ELOID(+) = OS_TUBO.MODELOTUBOID'#13#10'       AND OS_TUBO.SERIEID = :S' +
      'ERIEID'#13#10'       AND OS_TUBO.MODELOID = :MODELOID'
    DataSource = dsAparelhoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'SERIEID'
        ParamType = ptInput
        Size = 41
      end
      item
        DataType = ftString
        Name = 'MODELOID'
        ParamType = ptInput
        Size = 41
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 60
    Top = 179
    object sqldtsTuboSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboMODELOID: TStringField
      FieldName = 'MODELOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboSERIETUBOID: TStringField
      FieldName = 'SERIETUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboMODELOTUBOID: TStringField
      FieldName = 'MODELOTUBOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsTuboL_DESCRICAOMODELOTUBO: TStringField
      FieldName = 'L_DESCRICAOMODELOTUBO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsTuboDATAATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATAATUALIZACAO'
    end
    object sqldtsTuboNUMCORTESATUAL: TBCDField
      FieldName = 'NUMCORTESATUAL'
      Precision = 8
      Size = 0
    end
    object sqldtsTuboNUMCORTESTROCA: TBCDField
      FieldName = 'NUMCORTESTROCA'
      Precision = 8
      Size = 0
    end
    object sqldtsTuboNUMCORTES: TBCDField
      FieldName = 'NUMCORTES'
      Precision = 8
      Size = 0
    end
    object sqldtsTuboUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOs: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT OS_OS.OSID,'#13#10'       OS_OS.FILIALID,'#13#10'       EF_FILIAL.NOM' +
      'EFANTASIA L_NOMEFANTASIAFILIAL,'#13#10'       OS_OS.TIPOOSID,'#13#10'       ' +
      'OS_TIPOOS.DESCRICAO L_DESCRICAOTIPOOS,'#13#10'       OS_OS.TIPOATENDIM' +
      'ENTO,'#13#10'       OS_OS.LOCALIZACAOOSID,'#13#10'       OS_OS.OSCORRELACAOI' +
      'D,'#13#10'       OS_LOCALIZACAOOS.DESCRICAO L_LOCALIZACAOOS,'#13#10'       O' +
      'S_OS.DATAABERTURA,'#13#10'       OS_OS.DATAVALIDADE,'#13#10'       OS_OS.DAT' +
      'ACONCLUSAO,'#13#10'       OS_OS.OSIMPRESSA,'#13#10'       OS_OS.OSELETRONICA' +
      ','#13#10'       OS_OS.OSOFFLINE,'#13#10'       OS_OS.OSOFFLINEUSUARIO,'#13#10'    ' +
      '   OS_OS.DATAFECHAMENTO,'#13#10'       OS_OS.DATAENTRLABORATORIO,'#13#10'   ' +
      '    OS_OS.DATASAIDALABORATORIO,'#13#10'       OS_OS.TIPOASSIST,'#13#10'     ' +
      '  OS_OS.STATUS,'#13#10'       OS_OS.SERIEID,'#13#10'       OS_OS.MODELOID,'#13#10 +
      '       OS_OS.NUMCORTES,'#13#10'       OS_OS.VERSAOSOFT,'#13#10'       OS_APA' +
      'RELHO.VERSAOSOFT L_VERSAOSOFT,'#13#10'       PP_CATALOGO.GRUPOID L_GRU' +
      'POID,'#13#10'       EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'       OS_OS.CL' +
      'IENTEID,'#13#10'       EF_ENTIDADE.NOME L_NOMECLIENTE,'#13#10'       EF_ENTI' +
      'DADE.TELEFONE L_TELEFONE,'#13#10'       EF_ENTIDADE.FAX L_FAX,'#13#10'      ' +
      ' EF_ENTIDADE.PASTA L_PASTA,'#13#10'       EF_ENTIDADE.INSCRMUNICIPAL L' +
      '_INSCRMUNICIPAL,'#13#10'       EF_ENTIDADE.INSCRESTADUAL L_INSCRESTADU' +
      'AL,'#13#10'       EF_ENTIDADE.CPFCNPJ L_CPFCNPJ,'#13#10'       OS_OS.SOLICIT' +
      'ANTE,'#13#10'       OS_OS.SETOR,'#13#10'       OS_OS.SERVICO,'#13#10'       OS_OS.' +
      'OBSSERVICO,'#13#10'       OS_OS.TECNICOID,'#13#10'       EF_ENTIDADE_TECNICO' +
      '.NOME L_NOMETECNICO,'#13#10'       OS_OS.DATAHORACHEGADA,'#13#10'       OS_O' +
      'S.DATAHORASAIDA,'#13#10'       OS_OS.RESPRECEBIMENTO,'#13#10'       OS_OS.OB' +
      'SDEMO1,'#13#10'       OS_OS.OBSDEMO2,'#13#10'       OS_OS.DATAENTREGA,'#13#10'    ' +
      '   OS_OS.DATARETIRADA,'#13#10'       OS_OS.TENSAOLOCAL,'#13#10'       OS_OS.' +
      'LIBCHEFIA,'#13#10'       OS_OS.LIBCHEFIANOME,'#13#10'       OS_OS.LIBCHEFIAD' +
      'ATA,'#13#10'       OS_OS.ORCAMENTOID,'#13#10'       OS_OS.VLRORCADO,'#13#10'      ' +
      ' OS_OS.MOEDAORCADA,'#13#10'       OS_OS.CONDPAGTO,'#13#10'       OS_OS.VLRPA' +
      'GTOANTEC,'#13#10'       OS_OS.CEPID,'#13#10'       OS_OS.NUMERO,'#13#10'       OS_' +
      'OS.COMPLEMENTO,'#13#10'       OS_OS.ENDERECO,'#13#10'       OS_OS.BAIRRO,'#13#10' ' +
      '      OS_OS.CIDADE,'#13#10'       OS_OS.SIGLAUFID,'#13#10'       OS_OS.ORCAM' +
      'ENTOREFID,'#13#10'       OS_OS.CONDPAGTOID,'#13#10'       EF_CONDPAGTO.DESCR' +
      'ICAO L_DESCR_CONDPAGTO,'#13#10'       OS_OS.VLRMAODEOBRA,'#13#10'       OS_O' +
      'S.VLRDESLOCAMENTO,'#13#10'       OS_OS.VLRFRETE,'#13#10'       OS_OS.VLRPECA' +
      ','#13#10'       OS_OS.VLRSEGURO,'#13#10'       OS_OS.VLRDESCONTO,'#13#10'       OS' +
      '_OS.PORCDESCONTO,'#13#10'       OS_OS.NOMELIBDESCONTO,'#13#10'       OS_OS.V' +
      'LRTOTALORCCOMP,'#13#10'       OS_OS.VLRTOTALMAODEOBRA,'#13#10'       OS_OS.V' +
      'LRTOTALDESLOCAMENTO,'#13#10'       OS_OS.VLRTOTALFRETE,'#13#10'       OS_OS.' +
      'VLRTOTALPECA,'#13#10'       OS_OS.VLRTOTALOUTRO,'#13#10'       OS_OS.VLRTOTA' +
      'LPAGAR,'#13#10'       OS_OS.USUARIO'#13#10'  FROM OS_OS,'#13#10'       EF_FILIAL,'#13 +
      #10'       OS_TIPOOS,'#13#10'       EF_ENTIDADE,'#13#10'       EF_ENTIDADE EF_E' +
      'NTIDADE_TECNICO,'#13#10'       OS_APARELHO OS_APARELHO,'#13#10'       PP_CAT' +
      'ALOGO PP_CATALOGO,'#13#10'       EF_GRUPO,'#13#10'       OS_LOCALIZACAOOS OS' +
      '_LOCALIZACAOOS,'#13#10'       EF_CONDPAGTO EF_CONDPAGTO'#13#10' WHERE EF_FIL' +
      'IAL.FILIALID (+) = OS_OS.FILIALID'#13#10'       AND OS_TIPOOS.TIPOOSID' +
      ' (+) = OS_OS.TIPOOSID'#13#10'       AND EF_ENTIDADE.ENTIDADEID (+) = O' +
      'S_OS.CLIENTEID'#13#10'       AND EF_ENTIDADE_TECNICO.ENTIDADEID (+) = ' +
      'OS_OS.TECNICOID'#13#10'       AND OS_APARELHO.SERIEID (+) = OS_OS.SERI' +
      'EID'#13#10'       AND OS_APARELHO.MODELOID (+) = OS_OS.MODELOID'#13#10'     ' +
      '  AND OS_OS.MODELOID = PP_CATALOGO.MODELOID (+)'#13#10'       AND PP_C' +
      'ATALOGO.GRUPOID = EF_GRUPO.GRUPOID(+)'#13#10'       AND OS_LOCALIZACAO' +
      'OS.LOCALIZACAOOSID(+) = OS_OS.LOCALIZACAOOSID'#13#10'       AND EF_CON' +
      'DPAGTO.CONDPAGTOID(+) = OS_OS.CONDPAGTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 2
    object sqldtsOsOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOsFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsOsTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Size = 1
    end
    object sqldtsOsL_DESCRICAOTIPOOS: TStringField
      FieldName = 'L_DESCRICAOTIPOOS'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Size = 1
    end
    object sqldtsOsOSCORRELACAOID: TStringField
      FieldName = 'OSCORRELACAOID'
      Size = 13
    end
    object sqldtsOsLOCALIZACAOOSID: TBCDField
      FieldName = 'LOCALIZACAOOSID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsL_LOCALIZACAOOS: TStringField
      FieldName = 'L_LOCALIZACAOOS'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
    end
    object sqldtsOsDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
    end
    object sqldtsOsDATACONCLUSAO: TSQLTimeStampField
      FieldName = 'DATACONCLUSAO'
    end
    object sqldtsOsOSIMPRESSA: TBCDField
      FieldName = 'OSIMPRESSA'
      Precision = 1
      Size = 0
    end
    object sqldtsOsOSELETRONICA: TBCDField
      FieldName = 'OSELETRONICA'
      Precision = 1
      Size = 0
    end
    object sqldtsOsOSOFFLINE: TBCDField
      FieldName = 'OSOFFLINE'
      Precision = 1
      Size = 0
    end
    object sqldtsOsOSOFFLINEUSUARIO: TStringField
      FieldName = 'OSOFFLINEUSUARIO'
    end
    object sqldtsOsDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object sqldtsOsDATAENTRLABORATORIO: TSQLTimeStampField
      FieldName = 'DATAENTRLABORATORIO'
    end
    object sqldtsOsDATASAIDALABORATORIO: TSQLTimeStampField
      FieldName = 'DATASAIDALABORATORIO'
    end
    object sqldtsOsTIPOASSIST: TStringField
      FieldName = 'TIPOASSIST'
      Size = 1
    end
    object sqldtsOsSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sqldtsOsSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsOsMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsOsNUMCORTES: TBCDField
      FieldName = 'NUMCORTES'
      Precision = 8
      Size = 0
    end
    object sqldtsOsVERSAOSOFT: TStringField
      FieldName = 'VERSAOSOFT'
    end
    object sqldtsOsL_VERSAOSOFT: TStringField
      FieldName = 'L_VERSAOSOFT'
      ProviderFlags = []
    end
    object sqldtsOsL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsOsL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsOsCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
      ProviderFlags = []
    end
    object sqldtsOsL_FAX: TStringField
      FieldName = 'L_FAX'
      ProviderFlags = []
    end
    object sqldtsOsL_PASTA: TStringField
      FieldName = 'L_PASTA'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsOsL_INSCRMUNICIPAL: TStringField
      FieldName = 'L_INSCRMUNICIPAL'
      ProviderFlags = []
    end
    object sqldtsOsL_INSCRESTADUAL: TStringField
      FieldName = 'L_INSCRESTADUAL'
      ProviderFlags = []
    end
    object sqldtsOsL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      ProviderFlags = []
      Size = 18
    end
    object sqldtsOsSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 100
    end
    object sqldtsOsSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object sqldtsOsSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object sqldtsOsOBSSERVICO: TStringField
      FieldName = 'OBSSERVICO'
      Size = 300
    end
    object sqldtsOsTECNICOID: TBCDField
      FieldName = 'TECNICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsL_NOMETECNICO: TStringField
      FieldName = 'L_NOMETECNICO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsDATAHORACHEGADA: TSQLTimeStampField
      FieldName = 'DATAHORACHEGADA'
    end
    object sqldtsOsDATAHORASAIDA: TSQLTimeStampField
      FieldName = 'DATAHORASAIDA'
    end
    object sqldtsOsRESPRECEBIMENTO: TStringField
      FieldName = 'RESPRECEBIMENTO'
      Size = 100
    end
    object sqldtsOsOBSDEMO1: TStringField
      FieldName = 'OBSDEMO1'
      Size = 100
    end
    object sqldtsOsOBSDEMO2: TStringField
      FieldName = 'OBSDEMO2'
      Size = 100
    end
    object sqldtsOsORCAMENTOID: TStringField
      FieldName = 'ORCAMENTOID'
      Size = 30
    end
    object sqldtsOsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsOsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsOsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsOsTENSAOLOCAL: TBCDField
      FieldName = 'TENSAOLOCAL'
      Precision = 8
      Size = 0
    end
    object sqldtsOsDATARETIRADA: TSQLTimeStampField
      FieldName = 'DATARETIRADA'
    end
    object sqldtsOsDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object sqldtsOsVLRORCADO: TBCDField
      FieldName = 'VLRORCADO'
      Precision = 14
      Size = 2
    end
    object sqldtsOsMOEDAORCADA: TStringField
      FieldName = 'MOEDAORCADA'
      Size = 3
    end
    object sqldtsOsCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      Size = 60
    end
    object sqldtsOsVLRPAGTOANTEC: TBCDField
      FieldName = 'VLRPAGTOANTEC'
      Precision = 14
      Size = 2
    end
    object sqldtsOsCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsOsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsOsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsOsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsOsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsOsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsOsORCAMENTOREFID: TBCDField
      FieldName = 'ORCAMENTOREFID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsL_DESCR_CONDPAGTO: TStringField
      FieldName = 'L_DESCR_CONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 20
    end
    object sqldtsOsPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 20
    end
    object sqldtsOsNOMELIBDESCONTO: TStringField
      FieldName = 'NOMELIBDESCONTO'
      Size = 100
    end
    object sqldtsOsVLRMAODEOBRA: TFMTBCDField
      FieldName = 'VLRMAODEOBRA'
      Precision = 20
    end
    object sqldtsOsVLRDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRDESLOCAMENTO'
      Precision = 20
    end
    object sqldtsOsVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      Precision = 20
    end
    object sqldtsOsVLRPECA: TFMTBCDField
      FieldName = 'VLRPECA'
      Precision = 20
    end
    object sqldtsOsVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 20
    end
    object sqldtsOsVLRTOTALMAODEOBRA: TFMTBCDField
      FieldName = 'VLRTOTALMAODEOBRA'
      Precision = 20
    end
    object sqldtsOsVLRTOTALDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRTOTALDESLOCAMENTO'
      Precision = 20
    end
    object sqldtsOsVLRTOTALORCCOMP: TFMTBCDField
      FieldName = 'VLRTOTALORCCOMP'
      Precision = 20
    end
    object sqldtsOsVLRTOTALFRETE: TFMTBCDField
      FieldName = 'VLRTOTALFRETE'
      Precision = 20
    end
    object sqldtsOsVLRTOTALPECA: TFMTBCDField
      FieldName = 'VLRTOTALPECA'
      Precision = 20
    end
    object sqldtsOsVLRTOTALOUTRO: TFMTBCDField
      FieldName = 'VLRTOTALOUTRO'
      Precision = 20
    end
    object sqldtsOsVLRTOTALPAGAR: TFMTBCDField
      FieldName = 'VLRTOTALPAGAR'
      Precision = 20
    end
    object sqldtsOsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvOs: TDataSetProvider
    DataSet = sqldtsOs
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 394
    Top = 2
  end
  object sqldtsOsHora: TSQLDataSet
    CommandText = 
      'SELECT OS_OSHORA.OSID,'#13#10'       OS_OSHORA.ENTIDADEID,'#13#10'       OS_' +
      'OSHORA.DATATRABALHOID,'#13#10'       OS_OSHORA.QTDHORATRAB,'#13#10'       OS' +
      '_OSHORA.QTDHORATRANSP,'#13#10'       OS_OSHORA.QTDHORAESPERA,'#13#10'       ' +
      'OS_OSHORA.QTDHORAOUTRA,'#13#10'       OS_OSHORA.USUARIO,'#13#10'       EF_EN' +
      'TIDADE.NOME L_NOMEPOPULARTECNICO'#13#10'  FROM OS_OSHORA,'#13#10'       EF_E' +
      'NTIDADE'#13#10' WHERE EF_ENTIDADE.ENTIDADEID (+) = OS_OSHORA.ENTIDADEI' +
      'D'#13#10' AND OS_OSHORA.OSID = :OSID'
    DataSource = dsOsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'OSID'
        ParamType = ptInput
        Size = 13
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 46
    object sqldtsOsHoraOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOsHoraENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOsHoraL_NOMEPOPULARTECNICO: TStringField
      FieldName = 'L_NOMEPOPULARTECNICO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsHoraDATATRABALHOID: TSQLTimeStampField
      FieldName = 'DATATRABALHOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsOsHoraQTDHORATRAB: TBCDField
      FieldName = 'QTDHORATRAB'
      Precision = 8
      Size = 2
    end
    object sqldtsOsHoraQTDHORATRANSP: TBCDField
      FieldName = 'QTDHORATRANSP'
      Precision = 8
      Size = 2
    end
    object sqldtsOsHoraQTDHORAESPERA: TBCDField
      FieldName = 'QTDHORAESPERA'
      Precision = 8
      Size = 2
    end
    object sqldtsOsHoraQTDHORAOUTRA: TBCDField
      FieldName = 'QTDHORAOUTRA'
      Precision = 8
      Size = 2
    end
    object sqldtsOsHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOsLink: TDataSource
    DataSet = sqldtsOs
    Left = 394
    Top = 46
  end
  object sqldtsOsDefeito: TSQLDataSet
    CommandText = 
      'SELECT OS_OSDEFEITO.OSID,'#13#10'       OS_OSDEFEITO.ITEMID,'#13#10'       O' +
      'S_OSDEFEITO.DEFEITOID,'#13#10'       OS_OSDEFEITO.LOCALDEFEITO,'#13#10'     ' +
      '  OS_OSDEFEITO.SERVICOEXECUTADO,'#13#10'       OS_OSDEFEITO.USUARIO,'#13#10 +
      '       OS_DEFEITO.DESCRICAO L_DESCRICAODEFEITO'#13#10'  FROM OS_OSDEFE' +
      'ITO,'#13#10'       OS_DEFEITO'#13#10' WHERE OS_DEFEITO.DEFEITOID (+) = OS_OS' +
      'DEFEITO.DEFEITOID'#13#10' AND OS_OSDEFEITO.OSID = :OSID'
    DataSource = dsOsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'OSID'
        ParamType = ptInput
        Size = 13
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 90
    object sqldtsOsDefeitoOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOsDefeitoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOsDefeitoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsDefeitoL_DESCRICAODEFEITO: TStringField
      FieldName = 'L_DESCRICAODEFEITO'
      ProviderFlags = []
      Size = 200
    end
    object sqldtsOsDefeitoLOCALDEFEITO: TStringField
      FieldName = 'LOCALDEFEITO'
      Size = 300
    end
    object sqldtsOsDefeitoSERVICOEXECUTADO: TMemoField
      FieldName = 'SERVICOEXECUTADO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsOsDefeitoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOsPeca: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_OSPECA.OSID,'#13#10'  OS_OSPECA.PECAID,'#13#10'  OS_OSPECA.EMPR' +
      'ESAID,'#13#10'  OS_OSPECA.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUES ' +
      'L_DESCRICAOPRODUTO,'#13#10'  EF_PRODUTO.LOCALIZACAO L_LOCALIZACAO,  '#13#10 +
      '  OS_OSPECA.NFSID,'#13#10'  OS_OSPECA.DATAEMISSAOID,'#13#10'  OS_OSPECA.DATA' +
      'PECA,'#13#10'  OS_OSPECA.QUANTIDADE,'#13#10'  OS_OSPECA.UTILIZADO,'#13#10'  OS_OSP' +
      'ECA.OBSERVACAO,'#13#10'  OS_OSPECA.IMPRESSO,'#13#10'  OS_OSPECA.ESTOQUEUTILI' +
      'ZADO,'#13#10'  OS_OSPECA.DOCUMENTOENTRADA,  '#13#10'  OS_OSPECA.MATERIALAVAL' +
      'IADO,'#13#10'  OS_OSPECA.AVALIADOR,'#13#10'  OS_OSPECA.JUSTIFICATIVA,  '#13#10'  O' +
      'S_OSPECA.USUARIO'#13#10'  FROM'#13#10'  OS_OSPECA,'#13#10'  EF_PRODUTO'#13#10' WHERE'#13#10'  ' +
      'EF_PRODUTO.EMPRESAID (+) = OS_OSPECA.Empresaid'#13#10'  AND EF_PRODUTO' +
      '.PRODUTOID (+) = OS_OSPECA.PRODUTOID  '#13#10'  AND OS_OSPECA.OSID = :' +
      'OSID'
    DataSource = dsOsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'OSID'
        ParamType = ptInput
        Size = 13
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 132
    object sqldtsOsPecaOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOsPecaPECAID: TBCDField
      FieldName = 'PECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOsPecaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsPecaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsPecaL_DESCRICAOPRODUTO: TStringField
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsPecaL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsOsPecaNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsPecaDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object sqldtsOsPecaDATAPECA: TSQLTimeStampField
      FieldName = 'DATAPECA'
    end
    object sqldtsOsPecaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsOsPecaUTILIZADO: TBCDField
      FieldName = 'UTILIZADO'
      Precision = 1
      Size = 0
    end
    object sqldtsOsPecaIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object sqldtsOsPecaESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsOsPecaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 300
    end
    object sqldtsOsPecaDOCUMENTOENTRADA: TBCDField
      FieldName = 'DOCUMENTOENTRADA'
      Precision = 1
      Size = 0
    end
    object sqldtsOsPecaMATERIALAVALIADO: TBCDField
      FieldName = 'MATERIALAVALIADO'
      Precision = 1
      Size = 0
    end
    object sqldtsOsPecaAVALIADOR: TStringField
      FieldName = 'AVALIADOR'
    end
    object sqldtsOsPecaJUSTIFICATIVA: TMemoField
      FieldName = 'JUSTIFICATIVA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsOsPecaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOsTerceiro: TSQLDataSet
    CommandText = 
      'SELECT OS_OSTERCEIRO.EMPRESAID,'#13#10'       OS_OSTERCEIRO.NFSID,'#13#10'  ' +
      '     OS_OSTERCEIRO.DATAEMISSAOID,'#13#10'       OS_OSTERCEIRO.OSID,'#13#10' ' +
      '      OS_OSTERCEIRO.NOMENOTA,'#13#10'       OS_OSTERCEIRO.DATAPREVENTR' +
      'EGA,'#13#10'       OS_OSTERCEIRO.DESTINATARIOID,'#13#10'       OS_OSTERCEIRO' +
      '.MOTIVOATRASO,'#13#10'       OS_OSTERCEIRO.TIPOCONTROLE,'#13#10'       OS_OS' +
      'TERCEIRO.USUARIO,'#13#10'       EF_ENTIDADE.NOME L_NOMEDESTINATARIO,'#13#10 +
      '       EF_NFS.CIDADE L_CIDADE,'#13#10'       EF_NFS.SIGLAUFID L_SIGLAU' +
      'FID'#13#10'  FROM OS_OSTERCEIRO,'#13#10'       EF_ENTIDADE,'#13#10'       EF_NFS E' +
      'F_NFS'#13#10' WHERE EF_ENTIDADE.ENTIDADEID(+) = OS_OSTERCEIRO.DESTINAT' +
      'ARIOID'#13#10'       AND OS_OSTERCEIRO.EMPRESAID = EF_NFS.EMPRESAID(+)' +
      #13#10'       AND OS_OSTERCEIRO.NFSID = EF_NFS.NFSID(+)'#13#10'       AND O' +
      'S_OSTERCEIRO.DATAEMISSAOID = EF_NFS.DATAEMISSAOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 317
    object sqldtsOsTerceiroEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsOsTerceiroNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOsTerceiroDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsOsTerceiroOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsOsTerceiroNOMENOTA: TStringField
      FieldName = 'NOMENOTA'
      Size = 100
    end
    object sqldtsOsTerceiroDATAPREVENTREGA: TSQLTimeStampField
      FieldName = 'DATAPREVENTREGA'
    end
    object sqldtsOsTerceiroDESTINATARIOID: TBCDField
      FieldName = 'DESTINATARIOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsTerceiroMOTIVOATRASO: TStringField
      FieldName = 'MOTIVOATRASO'
      Size = 200
    end
    object sqldtsOsTerceiroTIPOCONTROLE: TStringField
      FieldName = 'TIPOCONTROLE'
      Size = 1
    end
    object sqldtsOsTerceiroUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object sqldtsOsTerceiroL_NOMEDESTINATARIO: TStringField
      FieldName = 'L_NOMEDESTINATARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsTerceiroL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsOsTerceiroL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsAparelhoLink: TDataSource
    DataSet = sqldtsAparelho
    Left = 176
    Top = 179
  end
  object dsprvAparelho: TDataSetProvider
    DataSet = sqldtsAparelho
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 135
  end
  object dsprvOsTerceiro: TDataSetProvider
    DataSet = sqldtsOsTerceiro
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 402
    Top = 317
  end
  object sqldtsTipoOsCfop: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_TIPOOSCFOP.TIPOOSID,'#13#10'  OS_TIPOOSCFOP.NATUREZAOPID,' +
      #13#10'  EF_NATUREZAOP.CFOP L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACA' +
      'OUSUARIO L_DESCRICAONATUREZA,'#13#10'  OS_TIPOOSCFOP.USUARIO'#13#10'  FROM'#13#10 +
      '  OS_TIPOOSCFOP,'#13#10'  EF_NATUREZAOP'#13#10' WHERE'#13#10'  EF_NATUREZAOP.NATUR' +
      'EZAOPID = OS_TIPOOSCFOP.NATUREZAOPID'#13#10'  AND OS_TIPOOSCFOP.TIPOOS' +
      'ID = :TIPOOSID'
    DataSource = dsTipoOSLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPOOSID'
        ParamType = ptInput
        Size = 2
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 62
    Top = 50
    object sqldtsTipoOsCfopTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 1
    end
    object sqldtsTipoOsCfopNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoOsCfopL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsTipoOsCfopL_DESCRICAONATUREZA: TStringField
      FieldName = 'L_DESCRICAONATUREZA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsTipoOsCfopUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsTipoOSLink: TDataSource
    DataSet = sqldtsTipoOs
    Left = 176
    Top = 50
  end
  object sqldtsDefeitoGrupo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_DEFEITOGRUPO.DEFEITOID,'#13#10'  OS_DEFEITOGRUPO.GRUPOID,' +
      #13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_GRUPO.DESCRICAO L_DE' +
      'SCRICAOGRUPO,'#13#10'  OS_DEFEITOGRUPO.USUARIO'#13#10'  FROM'#13#10'  OS_DEFEITOGR' +
      'UPO OS_DEFEITOGRUPO,'#13#10'  EF_GRUPO EF_GRUPO'#13#10' WHERE'#13#10'  OS_DEFEITOG' +
      'RUPO.GRUPOID = EF_GRUPO.GRUPOID(+)'#13#10'  AND OS_DEFEITOGRUPO.DEFEIT' +
      'OID = :DEFEITOID'
    DataSource = dsDefeitoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'DEFEITOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 61
    Top = 314
    object sqldtsDefeitoGrupoDEFEITOID: TBCDField
      FieldName = 'DEFEITOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDefeitoGrupoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDefeitoGrupoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsDefeitoGrupoL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDefeitoGrupoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsDefeitoLink: TDataSource
    DataSet = sqldtsDefeito
    Left = 176
    Top = 314
  end
  object sqldtsClassifPeca: TSQLDataSet
    CommandText = 
      'SELECT OS_CLASSIFPECA.CLASSIFPECAID,'#13#10'       OS_CLASSIFPECA.DESC' +
      'RICAO,'#13#10'       OS_CLASSIFPECA.USUARIO'#13#10'  FROM OS_CLASSIFPECA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 508
    Top = 317
    object sqldtsClassifPecaCLASSIFPECAID: TBCDField
      FieldName = 'CLASSIFPECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsClassifPecaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsClassifPecaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOsClassifPeca: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_OSCLASSIFPECA.OSID,'#13#10'  OS_OSCLASSIFPECA.PECAID,'#13#10'  ' +
      'OS_OSCLASSIFPECA.ITEMID,'#13#10'  OS_OSCLASSIFPECA.CODIGOBARRASID,'#13#10'  ' +
      'OS_OSCLASSIFPECA.SERIEID,'#13#10'  OS_OSCLASSIFPECA.MODELOID,'#13#10'  OS_OS' +
      'CLASSIFPECA.EMPRESAID,'#13#10'  OS_OSCLASSIFPECA.PRODUTOID,'#13#10'  EF_PROD' +
      'UTO.PARTNUMBERID L_PARTNUMBERID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUE' +
      'S L_DESCRICAOPORTUGUES,'#13#10'  EF_PRODUTO.DESCRICAOINGLES L_DESCRICA' +
      'OINGLES,'#13#10'  OS_OSCLASSIFPECA.CLASSIFPECAID,'#13#10'  OS_CLASSIFPECA.DE' +
      'SCRICAO L_DESCRICAOCLASSIFPECA,'#13#10'  OS_OSCLASSIFPECA.DATACLASSIFI' +
      'CACAO,'#13#10'  OS_OSCLASSIFPECA.QUANTIDADE,'#13#10'  OS_OSCLASSIFPECA.VLRFO' +
      'B,'#13#10'  OS_OSCLASSIFPECA.OBSERVACAO,'#13#10'  OS_OSCLASSIFPECA.USUARIO'#13#10 +
      '  FROM'#13#10'  OS_OSCLASSIFPECA,'#13#10'  OS_OS,'#13#10'  EF_PRODUTO,'#13#10'  OS_CLASS' +
      'IFPECA'#13#10' WHERE'#13#10'  OS_OS.OSID = OS_OSCLASSIFPECA.OSID'#13#10'  AND OS_C' +
      'LASSIFPECA.CLASSIFPECAID(+) = OS_OSCLASSIFPECA.CLASSIFPECAID  '#13#10 +
      '  AND EF_PRODUTO.EMPRESAID(+) = OS_OSCLASSIFPECA.EMPRESAID'#13#10'  AN' +
      'D EF_PRODUTO.PRODUTOID(+) = OS_OSCLASSIFPECA.PRODUTOID'#13#10'  AND OS' +
      '_CLASSIFPECA.CLASSIFPECAID(+) = OS_OSCLASSIFPECA.CLASSIFPECAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 508
    Top = 367
    object sqldtsOsClassifPecaOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOsClassifPecaPECAID: TBCDField
      FieldName = 'PECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOsClassifPecaITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOsClassifPecaCODIGOBARRASID: TBCDField
      FieldName = 'CODIGOBARRASID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsClassifPecaSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsOsClassifPecaMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsOsClassifPecaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsClassifPecaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsClassifPecaL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsClassifPecaL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsClassifPecaL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsOsClassifPecaCLASSIFPECAID: TBCDField
      FieldName = 'CLASSIFPECAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOsClassifPecaL_DESCRICAOCLASSIFPECA: TStringField
      FieldName = 'L_DESCRICAOCLASSIFPECA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOsClassifPecaDATACLASSIFICACAO: TSQLTimeStampField
      FieldName = 'DATACLASSIFICACAO'
    end
    object sqldtsOsClassifPecaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsOsClassifPecaVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsOsClassifPecaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsOsClassifPecaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvClassifPeca: TDataSetProvider
    DataSet = sqldtsClassifPeca
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 610
    Top = 317
  end
  object dsprvOSClassifPeca: TDataSetProvider
    DataSet = sqldtsOsClassifPeca
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 618
    Top = 367
  end
  object dsprvOSPecaClassif: TDataSetProvider
    DataSet = sqldtsOSPecaClassif
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 454
  end
  object sqldtsOSPecaClassif: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_OSPECA.OSID,'#13#10'  OS_OSPECA.PECAID,'#13#10'  OS_OSPECA.EMPR' +
      'ESAID,'#13#10'  OS_OSPECA.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUES ' +
      'L_DESCRICAOPRODUTO,'#13#10'  EF_PRODUTO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO' +
      '.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_PRODUTO.PARTNUMBERID L_PARTNUMBE' +
      'RID,  '#13#10'  OS_OSPECA.NFSID,'#13#10'  OS_OSPECA.DATAEMISSAOID,'#13#10'  OS_OSP' +
      'ECA.DATAPECA,'#13#10'  OS_OSPECA.QUANTIDADE,'#13#10'  OS_OSPECA.UTILIZADO,'#13#10 +
      '  OS_OSPECA.IMPRESSO,'#13#10'  OS_OSPECA.ESTOQUEUTILIZADO,'#13#10'  OS_OSPEC' +
      'A.MATERIALAVALIADO,'#13#10'  OS_OSPECA.AVALIADOR,'#13#10'  OS_OSPECA.JUSTIFI' +
      'CATIVA,  '#13#10'  OS_OSPECA.USUARIO'#13#10'  FROM'#13#10'  OS_OSPECA,'#13#10'  EF_PRODU' +
      'TO,'#13#10'  EF_GRUPO'#13#10' WHERE'#13#10'  EF_PRODUTO.EMPRESAID (+) = OS_OSPECA.' +
      'EMPRESAID'#13#10'  AND EF_PRODUTO.PRODUTOID (+) = OS_OSPECA.PRODUTOID ' +
      #13#10'  AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 59
    Top = 454
    object sqldtsOSPecaClassifOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOSPecaClassifPECAID: TBCDField
      FieldName = 'PECAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSPecaClassifEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSPecaClassifPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSPecaClassifL_DESCRICAOPRODUTO: TStringField
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOSPecaClassifL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsOSPecaClassifL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsOSPecaClassifL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsOSPecaClassifNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSPecaClassifDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object sqldtsOSPecaClassifDATAPECA: TSQLTimeStampField
      FieldName = 'DATAPECA'
    end
    object sqldtsOSPecaClassifQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsOSPecaClassifUTILIZADO: TBCDField
      FieldName = 'UTILIZADO'
      Precision = 1
      Size = 0
    end
    object sqldtsOSPecaClassifIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object sqldtsOSPecaClassifESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsOSPecaClassifMATERIALAVALIADO: TBCDField
      FieldName = 'MATERIALAVALIADO'
      Precision = 1
      Size = 0
    end
    object sqldtsOSPecaClassifAVALIADOR: TStringField
      FieldName = 'AVALIADOR'
    end
    object sqldtsOSPecaClassifJUSTIFICATIVA: TMemoField
      FieldName = 'JUSTIFICATIVA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsOSPecaClassifUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsLocalizacaoOS: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_LOCALIZACAOOS.LOCALIZACAOOSID,'#13#10'  OS_LOCALIZACAOOS.' +
      'DESCRICAO,'#13#10'  OS_LOCALIZACAOOS.FECHAROS,'#13#10'  OS_LOCALIZACAOOS.USU' +
      'ARIO'#13#10'  FROM'#13#10'  OS_LOCALIZACAOOS OS_LOCALIZACAOOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 62
    Top = 362
    object sqldtsLocalizacaoOSLOCALIZACAOOSID: TBCDField
      FieldName = 'LOCALIZACAOOSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsLocalizacaoOSDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsLocalizacaoOSFECHAROS: TBCDField
      FieldName = 'FECHAROS'
      Precision = 8
      Size = 0
    end
    object sqldtsLocalizacaoOSUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvLocalizacaoOS: TDataSetProvider
    DataSet = sqldtsLocalizacaoOS
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 362
  end
  object sqldtsPecaPendente: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_PECAPENDENTE.PECAPENDENTEID,'#13#10'  OS_PECAPENDENTE.DAT' +
      'AINCLUSAO,'#13#10'  OS_PECAPENDENTE.EMPRESAID,'#13#10'  OS_PECAPENDENTE.PROD' +
      'UTOID,'#13#10'  EF_PRODUTO.ORIGEM L_ORIGEM,'#13#10'  EF_PRODUTO.GRUPOID L_GR' +
      'UPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_PRODUTO.PARTNU' +
      'MBERID L_PARTNUMBER,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUES L_DESCRICA' +
      'OPORTUGUES,'#13#10'  EF_PRODUTO.DESCRICAOINGLES L_DESCRICAOINGLES,'#13#10'  ' +
      'EF_PRODUTO.ESTOQUETOTAL L_ESTOQUETOTAL,'#13#10'  OS_PECAPENDENTE.OSID,' +
      #13#10'  OS_OS.SERIEID L_SERIEID,'#13#10'  OS_OS.MODELOID L_MODELOID,'#13#10'  OS' +
      '_PECAPENDENTE.QUANTIDADE,'#13#10'  OS_PECAPENDENTE.LOCALPECAID,'#13#10'  OS_' +
      'PECAPENDENTE.OBSERVACAO,'#13#10'  OS_PECAPENDENTE.USUARIO'#13#10'  FROM'#13#10'  O' +
      'S_PECAPENDENTE OS_PECAPENDENTE,'#13#10'  OS_OS OS_OS,'#13#10'  EF_PRODUTO EF' +
      '_PRODUTO,'#13#10'  EF_GRUPO'#13#10' WHERE'#13#10'  OS_OS.OSID(+) = OS_PECAPENDENTE' +
      '.OSID'#13#10'  AND EF_PRODUTO.EMPRESAID(+) = OS_PECAPENDENTE.EMPRESAID' +
      #13#10'  AND EF_PRODUTO.PRODUTOID(+) = OS_PECAPENDENTE.PRODUTOID'#13#10'  A' +
      'ND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 508
    Top = 459
    object sqldtsPecaPendentePECAPENDENTEID: TBCDField
      FieldName = 'PECAPENDENTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPecaPendenteDATAINCLUSAO: TSQLTimeStampField
      FieldName = 'DATAINCLUSAO'
    end
    object sqldtsPecaPendenteEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPecaPendentePRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPecaPendenteL_ORIGEM: TStringField
      FieldName = 'L_ORIGEM'
      ProviderFlags = []
      Size = 1
    end
    object sqldtsPecaPendenteL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPecaPendenteL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPecaPendenteL_PARTNUMBER: TStringField
      FieldName = 'L_PARTNUMBER'
      ProviderFlags = []
    end
    object sqldtsPecaPendenteL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPecaPendenteL_DESCRICAOINGLES: TStringField
      FieldName = 'L_DESCRICAOINGLES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPecaPendenteL_ESTOQUETOTAL: TBCDField
      FieldName = 'L_ESTOQUETOTAL'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsPecaPendenteOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsPecaPendenteL_SERIEID: TStringField
      FieldName = 'L_SERIEID'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsPecaPendenteL_MODELOID: TStringField
      FieldName = 'L_MODELOID'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsPecaPendenteQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 14
      Size = 2
    end
    object sqldtsPecaPendenteLOCALPECAID: TBCDField
      FieldName = 'LOCALPECAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPecaPendenteOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsPecaPendenteUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvPecaPendente: TDataSetProvider
    DataSet = sqldtsPecaPendente
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 618
    Top = 459
  end
  object sqldtsOSMaterial: TSQLDataSet
    CommandText = 
      'SELECT OS_OSMATERIAL.OSID,'#13#10'       OS_OSMATERIAL.ITEMID,'#13#10'      ' +
      ' OS_OSMATERIAL.EMPRESAID,'#13#10'       OS_OSMATERIAL.PRODUTOID,'#13#10'    ' +
      '   EF_PRODUTO.DESCRICAOPORTUGUES L_DESCRICAOPRODUTO,'#13#10'       OS_' +
      'OSMATERIAL.DESCRICAOMATSERV,'#13#10'       OS_OSMATERIAL.QUANTIDADE,'#13#10 +
      '       OS_OSMATERIAL.ALIQUOTAIPI,       '#13#10'       OS_OSMATERIAL.V' +
      'LRPRECOUNITARIO,'#13#10'       OS_OSMATERIAL.VLRPRECOTOTAL,'#13#10'       OS' +
      '_OSMATERIAL.USUARIO       '#13#10'  FROM OS_OSMATERIAL OS_OSMATERIAL,'#13 +
      #10'       EF_PRODUTO EF_PRODUTO'#13#10' WHERE EF_PRODUTO.EMPRESAID(+) = ' +
      'OS_OSMATERIAL.EMPRESAID'#13#10'       AND EF_PRODUTO.PRODUTOID(+) = OS' +
      '_OSMATERIAL.PRODUTOID'#13#10'       AND OS_OSMATERIAL.OSID = :OSID'
    DataSource = dsOsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'OSID'
        ParamType = ptInput
        Size = 13
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 176
    object sqldtsOSMaterialOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOSMaterialITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSMaterialEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSMaterialPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSMaterialL_DESCRICAOPRODUTO: TStringField
      FieldName = 'L_DESCRICAOPRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOSMaterialDESCRICAOMATSERV: TStringField
      FieldName = 'DESCRICAOMATSERV'
      Size = 100
    end
    object sqldtsOSMaterialQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsOSMaterialALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsOSMaterialVLRPRECOUNITARIO: TFMTBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 20
    end
    object sqldtsOSMaterialVLRPRECOTOTAL: TFMTBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 20
    end
    object sqldtsOSMaterialUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqlOSProgSemanal: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_OSPROGSEMANAL.DATASERVICOID,'#13#10'  OS_OSPROGSEMANAL.IT' +
      'EMID,'#13#10'  OS_OSPROGSEMANAL.OSID,'#13#10'  OS_OSPROGSEMANAL.CLIENTEID,'#13#10 +
      '  OS_OSPROGSEMANAL.NOME,'#13#10'  OS_OSPROGSEMANAL.CIDADE,'#13#10'  OS_OSPRO' +
      'GSEMANAL.SIGLAUFID,'#13#10'  OS_OSPROGSEMANAL.SERIEID,'#13#10'  OS_OSPROGSEM' +
      'ANAL.MODELOID,'#13#10'  OS_OSPROGSEMANAL.HORATRABINICIAL,'#13#10'  OS_OSPROG' +
      'SEMANAL.HORATRABFINAL,'#13#10'  OS_OSPROGSEMANAL.COMENTARIO,'#13#10'  OS_OSP' +
      'ROGSEMANAL.USUARIO'#13#10'  FROM OS_OSPROGSEMANAL OS_OSPROGSEMANAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 56
    Top = 502
    object sqlOSProgSemanalDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlOSProgSemanalITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlOSProgSemanalOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqlOSProgSemanalCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqlOSProgSemanalNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqlOSProgSemanalCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqlOSProgSemanalSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqlOSProgSemanalSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqlOSProgSemanalMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqlOSProgSemanalHORATRABINICIAL: TSQLTimeStampField
      FieldName = 'HORATRABINICIAL'
    end
    object sqlOSProgSemanalHORATRABFINAL: TSQLTimeStampField
      FieldName = 'HORATRABFINAL'
    end
    object sqlOSProgSemanalCOMENTARIO: TMemoField
      FieldName = 'COMENTARIO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqlOSProgSemanalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqlOSProgSemanalItem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  OS_OSPROGSEMANALITEM.DATASERVICOID,'#13#10'  OS_OSPROGSEMANA' +
      'LITEM.ITEMID,'#13#10'  OS_OSPROGSEMANALITEM.TECNICOID,'#13#10'  OS_OSPROGSEM' +
      'ANALITEM.USUARIO'#13#10'  FROM'#13#10'  OS_OSPROGSEMANALITEM OS_OSPROGSEMANA' +
      'LITEM'#13#10' WHERE OS_OSPROGSEMANALITEM.DATASERVICOID = :DATASERVICOI' +
      'D'#13#10'  AND OS_OSPROGSEMANALITEM.ITEMID = :ITEMID'
    DataSource = dsOSProgSemanalLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftTimeStamp
        Name = 'DATASERVICOID'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 508
    Top = 410
    object sqlOSProgSemanalItemDATASERVICOID: TSQLTimeStampField
      FieldName = 'DATASERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlOSProgSemanalItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlOSProgSemanalItemTECNICOID: TBCDField
      FieldName = 'TECNICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqlOSProgSemanalItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvOSProgSemanal: TDataSetProvider
    DataSet = sqlOSProgSemanal
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 502
  end
  object dsOSProgSemanalLink: TDataSource
    DataSet = sqlOSProgSemanal
    Left = 618
    Top = 410
  end
  object sqldtsOSOcOperacional: TSQLDataSet
    CommandText = 
      'SELECT OS_OSOCOPERACIONAL.OSID,'#13#10'       OS_OSOCOPERACIONAL.ITEMI' +
      'D,'#13#10'       OS_OSOCOPERACIONAL.DATAOCORRENCIA,'#13#10'       OS_OSOCOPE' +
      'RACIONAL.OCOPERACIONALID,'#13#10'       OS_OCOPERACIONAL.DESCRICAO L_D' +
      'ESCRICAOOCOPERACIONAL,'#13#10'       OS_OSOCOPERACIONAL.DATAACAOTOMADA' +
      ','#13#10'       OS_OSOCOPERACIONAL.ACAOTOMADA,'#13#10'       OS_OSOCOPERACIO' +
      'NAL.USUARIOACAOTOMADA,       '#13#10'       OS_OSOCOPERACIONAL.USUARIO' +
      #13#10'  FROM OS_OSOCOPERACIONAL OS_OSOCOPERACIONAL,'#13#10'       OS_OCOPE' +
      'RACIONAL OS_OCOPERACIONAL'#13#10' WHERE OS_OCOPERACIONAL.OCOPERACIONAL' +
      'ID(+) = OS_OSOCOPERACIONAL.OCOPERACIONALID'#13#10'       AND OS_OSOCOP' +
      'ERACIONAL.OSID = :OSID'
    DataSource = dsOsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'OSID'
        ParamType = ptInput
        Size = 13
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 219
    object sqldtsOSOcOperacionalOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOSOcOperacionalITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSOcOperacionalDATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'DATAOCORRENCIA'
    end
    object sqldtsOSOcOperacionalOCOPERACIONALID: TBCDField
      FieldName = 'OCOPERACIONALID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSOcOperacionalL_DESCRICAOOCOPERACIONAL: TStringField
      FieldName = 'L_DESCRICAOOCOPERACIONAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOSOcOperacionalDATAACAOTOMADA: TSQLTimeStampField
      FieldName = 'DATAACAOTOMADA'
    end
    object sqldtsOSOcOperacionalUSUARIOACAOTOMADA: TStringField
      FieldName = 'USUARIOACAOTOMADA'
    end
    object sqldtsOSOcOperacionalACAOTOMADA: TMemoField
      FieldName = 'ACAOTOMADA'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsOSOcOperacionalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOcOperacional: TSQLDataSet
    CommandText = 
      'SELECT OCOPERACIONALID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FR' +
      'OM OS_OCOPERACIONAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 62
    Top = 411
    object sqldtsOcOperacionalOCOPERACIONALID: TBCDField
      FieldName = 'OCOPERACIONALID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOcOperacionalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsOcOperacionalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvOcOperacional: TDataSetProvider
    DataSet = sqldtsOcOperacional
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 176
    Top = 411
  end
  object cdsOFFOS: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dsprvOs'
    Left = 490
    Top = 2
    object cdsOFFOSOSID: TStringField
      FieldName = 'OSID'
      Required = True
      Size = 13
    end
    object cdsOFFOSFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSL_NOMEFANTASIAFILIAL: TStringField
      FieldName = 'L_NOMEFANTASIAFILIAL'
      Size = 50
    end
    object cdsOFFOSTIPOOSID: TStringField
      FieldName = 'TIPOOSID'
      Size = 1
    end
    object cdsOFFOSL_DESCRICAOTIPOOS: TStringField
      FieldName = 'L_DESCRICAOTIPOOS'
      Size = 100
    end
    object cdsOFFOSTIPOATENDIMENTO: TStringField
      FieldName = 'TIPOATENDIMENTO'
      Size = 1
    end
    object cdsOFFOSOSCORRELACAOID: TStringField
      FieldName = 'OSCORRELACAOID'
      Size = 13
    end
    object cdsOFFOSLOCALIZACAOOSID: TBCDField
      FieldName = 'LOCALIZACAOOSID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSL_LOCALIZACAOOS: TStringField
      FieldName = 'L_LOCALIZACAOOS'
      Size = 100
    end
    object cdsOFFOSDATAABERTURA: TSQLTimeStampField
      FieldName = 'DATAABERTURA'
    end
    object cdsOFFOSDATAVALIDADE: TSQLTimeStampField
      FieldName = 'DATAVALIDADE'
    end
    object cdsOFFOSDATACONCLUSAO: TSQLTimeStampField
      FieldName = 'DATACONCLUSAO'
    end
    object cdsOFFOSOSIMPRESSA: TBCDField
      FieldName = 'OSIMPRESSA'
      Precision = 1
      Size = 0
    end
    object cdsOFFOSOSELETRONICA: TBCDField
      FieldName = 'OSELETRONICA'
      Precision = 1
      Size = 0
    end
    object cdsOFFOSOSOFFLINE: TBCDField
      FieldName = 'OSOFFLINE'
      Precision = 1
      Size = 0
    end
    object cdsOFFOSOSOFFLINEUSUARIO: TStringField
      FieldName = 'OSOFFLINEUSUARIO'
    end
    object cdsOFFOSDATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'DATAFECHAMENTO'
    end
    object cdsOFFOSDATAENTRLABORATORIO: TSQLTimeStampField
      FieldName = 'DATAENTRLABORATORIO'
    end
    object cdsOFFOSDATASAIDALABORATORIO: TSQLTimeStampField
      FieldName = 'DATASAIDALABORATORIO'
    end
    object cdsOFFOSTIPOASSIST: TStringField
      FieldName = 'TIPOASSIST'
      Size = 1
    end
    object cdsOFFOSSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsOFFOSSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object cdsOFFOSMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object cdsOFFOSNUMCORTES: TBCDField
      FieldName = 'NUMCORTES'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSVERSAOSOFT: TStringField
      FieldName = 'VERSAOSOFT'
    end
    object cdsOFFOSL_VERSAOSOFT: TStringField
      FieldName = 'L_VERSAOSOFT'
    end
    object cdsOFFOSL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      Size = 50
    end
    object cdsOFFOSCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      Size = 100
    end
    object cdsOFFOSL_TELEFONE: TStringField
      FieldName = 'L_TELEFONE'
    end
    object cdsOFFOSL_FAX: TStringField
      FieldName = 'L_FAX'
    end
    object cdsOFFOSL_PASTA: TStringField
      FieldName = 'L_PASTA'
      Size = 10
    end
    object cdsOFFOSL_INSCRMUNICIPAL: TStringField
      FieldName = 'L_INSCRMUNICIPAL'
    end
    object cdsOFFOSL_INSCRESTADUAL: TStringField
      FieldName = 'L_INSCRESTADUAL'
    end
    object cdsOFFOSL_CPFCNPJ: TStringField
      FieldName = 'L_CPFCNPJ'
      Size = 18
    end
    object cdsOFFOSSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Size = 100
    end
    object cdsOFFOSSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object cdsOFFOSSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object cdsOFFOSOBSSERVICO: TStringField
      FieldName = 'OBSSERVICO'
      Size = 300
    end
    object cdsOFFOSTECNICOID: TBCDField
      FieldName = 'TECNICOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSL_NOMETECNICO: TStringField
      FieldName = 'L_NOMETECNICO'
      Size = 100
    end
    object cdsOFFOSDATAHORACHEGADA: TSQLTimeStampField
      FieldName = 'DATAHORACHEGADA'
    end
    object cdsOFFOSDATAHORASAIDA: TSQLTimeStampField
      FieldName = 'DATAHORASAIDA'
    end
    object cdsOFFOSRESPRECEBIMENTO: TStringField
      FieldName = 'RESPRECEBIMENTO'
      Size = 100
    end
    object cdsOFFOSOBSDEMO1: TStringField
      FieldName = 'OBSDEMO1'
      Size = 100
    end
    object cdsOFFOSOBSDEMO2: TStringField
      FieldName = 'OBSDEMO2'
      Size = 100
    end
    object cdsOFFOSORCAMENTOID: TStringField
      FieldName = 'ORCAMENTOID'
      Size = 30
    end
    object cdsOFFOSLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object cdsOFFOSLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object cdsOFFOSLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsOFFOSTENSAOLOCAL: TBCDField
      FieldName = 'TENSAOLOCAL'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSDATARETIRADA: TSQLTimeStampField
      FieldName = 'DATARETIRADA'
    end
    object cdsOFFOSDATAENTREGA: TSQLTimeStampField
      FieldName = 'DATAENTREGA'
    end
    object cdsOFFOSVLRORCADO: TBCDField
      FieldName = 'VLRORCADO'
      Precision = 14
      Size = 2
    end
    object cdsOFFOSMOEDAORCADA: TStringField
      FieldName = 'MOEDAORCADA'
      Size = 3
    end
    object cdsOFFOSCONDPAGTO: TStringField
      FieldName = 'CONDPAGTO'
      Size = 60
    end
    object cdsOFFOSVLRPAGTOANTEC: TBCDField
      FieldName = 'VLRPAGTOANTEC'
      Precision = 14
      Size = 2
    end
    object cdsOFFOSCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsOFFOSCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object cdsOFFOSENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsOFFOSBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object cdsOFFOSCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object cdsOFFOSSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object cdsOFFOSORCAMENTOREFID: TBCDField
      FieldName = 'ORCAMENTOREFID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFOSL_DESCR_CONDPAGTO: TStringField
      FieldName = 'L_DESCR_CONDPAGTO'
      Size = 100
    end
    object cdsOFFOSVLRDESCONTO: TFMTBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 20
    end
    object cdsOFFOSPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 20
    end
    object cdsOFFOSNOMELIBDESCONTO: TStringField
      FieldName = 'NOMELIBDESCONTO'
      Size = 100
    end
    object cdsOFFOSVLRMAODEOBRA: TFMTBCDField
      FieldName = 'VLRMAODEOBRA'
      Precision = 20
    end
    object cdsOFFOSVLRDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRDESLOCAMENTO'
      Precision = 20
    end
    object cdsOFFOSVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      Precision = 20
    end
    object cdsOFFOSVLRPECA: TFMTBCDField
      FieldName = 'VLRPECA'
      Precision = 20
    end
    object cdsOFFOSVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALMAODEOBRA: TFMTBCDField
      FieldName = 'VLRTOTALMAODEOBRA'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALDESLOCAMENTO: TFMTBCDField
      FieldName = 'VLRTOTALDESLOCAMENTO'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALORCCOMP: TFMTBCDField
      FieldName = 'VLRTOTALORCCOMP'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALFRETE: TFMTBCDField
      FieldName = 'VLRTOTALFRETE'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALPECA: TFMTBCDField
      FieldName = 'VLRTOTALPECA'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALOUTRO: TFMTBCDField
      FieldName = 'VLRTOTALOUTRO'
      Precision = 20
    end
    object cdsOFFOSVLRTOTALPAGAR: TFMTBCDField
      FieldName = 'VLRTOTALPAGAR'
      Precision = 20
    end
    object cdsOFFOSUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsOFFOSsqldtsOSDemo: TDataSetField
      FieldName = 'sqldtsOSDemo'
    end
    object cdsOFFOSsqldtsOSOcOperacional: TDataSetField
      FieldName = 'sqldtsOSOcOperacional'
    end
    object cdsOFFOSsqldtsOSMaterial: TDataSetField
      FieldName = 'sqldtsOSMaterial'
    end
    object cdsOFFOSsqldtsOsPeca: TDataSetField
      FieldName = 'sqldtsOsPeca'
    end
    object cdsOFFOSsqldtsOsDefeito: TDataSetField
      FieldName = 'sqldtsOsDefeito'
    end
    object cdsOFFOSsqldtsOsHora: TDataSetField
      FieldName = 'sqldtsOsHora'
    end
  end
  object sqldtsAdiantamento: TSQLDataSet
    CommandText = 
      'SELECT DISTINCT RD_ADIANTAMENTO.ADIANTAMENTOID,'#13#10'       RD_ADIAN' +
      'TAMENTO.DATASOLICITACAO,'#13#10'       RD_ADIANTAMENTO.DATADEPOSITO,'#13#10 +
      '       RD_ADIANTAMENTO.FUNCIONARIOID,'#13#10'       EF_ENTIDADE.NOME L' +
      '_NOMEFUNCIONARIO,'#13#10'       RD_ADIANTAMENTO.TIPOMOEDA,'#13#10'       RD_' +
      'ADIANTAMENTO.TIPODESPESAOS,'#13#10'       RD_ADIANTAMENTO.OSID,'#13#10'     ' +
      '  RD_ADIANTAMENTO.OPERACAOID,'#13#10'       RD_OPERACAO.DESCRICAO L_DE' +
      'SCRICAOOPERACAO,'#13#10'       RD_OPERACAO.OPERACAO L_OPERACAO,'#13#10'     ' +
      '  RD_RDV.VLRSALDO L_VLRSALDO,'#13#10'       RD_RDV.DATAFECHAMENTO AS L' +
      '_DATAFECHAMENTO,'#13#10'       RD_ADIANTAMENTO.VLROPERACAO,'#13#10'       RD' +
      '_ADIANTAMENTO.HORASOLICITADA,'#13#10'       RD_ADIANTAMENTO.HISTORICO,' +
      #13#10'       RD_ADIANTAMENTO.LIBCHEFIA,'#13#10'       RD_ADIANTAMENTO.NOME' +
      'LIBCHEFIA,'#13#10'       RD_ADIANTAMENTO.DATALIBCHEFIA,       '#13#10'      ' +
      ' RD_ADIANTAMENTO.LIBERADO,'#13#10'       RD_ADIANTAMENTO.KMSAIDA,'#13#10'   ' +
      '    RD_ADIANTAMENTO.KMCHEGADA,'#13#10'       RD_ADIANTAMENTO.IMPRESSO,' +
      #13#10'       RD_ADIANTAMENTO.USUARIO'#13#10'  FROM RD_ADIANTAMENTO,'#13#10'     ' +
      '  RD_OPERACAO,'#13#10'       EF_ENTIDADE,'#13#10'       RD_RDV'#13#10' WHERE RD_OP' +
      'ERACAO.OPERACAOID (+) = RD_ADIANTAMENTO.OPERACAOID'#13#10'       AND E' +
      'F_ENTIDADE.ENTIDADEID (+) = RD_ADIANTAMENTO.FUNCIONARIOID'#13#10'     ' +
      '  AND RD_RDV.RDVID (+) = RD_ADIANTAMENTO.FUNCIONARIOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 392
    Top = 88
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
    object sqldtsAdiantamentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object sqldtsAdiantamentoHORASOLICITADA: TSQLTimeStampField
      FieldName = 'HORASOLICITADA'
    end
    object sqldtsAdiantamentoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
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
    object sqldtsAdiantamentoLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsAdiantamentoLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqldtsAdiantamentoNOMELIBCHEFIA: TStringField
      FieldName = 'NOMELIBCHEFIA'
    end
    object sqldtsAdiantamentoVLROPERACAO: TBCDField
      FieldName = 'VLROPERACAO'
      Precision = 14
      Size = 2
    end
    object sqldtsAdiantamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvAdiantamento2: TDataSetProvider
    DataSet = sqldtsAdiantamento
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 496
    Top = 88
  end
  object sqldtsBancoHora: TSQLDataSet
    CommandText = 
      'SELECT '#13#10'  RD_BANCOHORA.BANCOHORAID,'#13#10'  RD_BANCOHORA.DATASOLICIT' +
      'ACAO,'#13#10'  RD_BANCOHORA.MULTILANCAMENTO,'#13#10'  RD_BANCOHORA.FILIALID,' +
      #13#10'  EF_FILIAL.NOMEFANTASIA L_NOMEFANTASIAFILIAL,  '#13#10'  RD_BANCOHO' +
      'RA.FUNCIONARIOID,'#13#10'  EF_ENTIDADE.NOME L_NOMEFUNCIONARIO,'#13#10'  EF_E' +
      'NTIDADE.FILIALID L_FILIALID,'#13#10'  RD_HORA.DATAFECHAMENTO L_DATAFEC' +
      'HAMENTO,'#13#10'  RD_HORA.DATAABERTURA L_DATAMESABERTO,'#13#10'  RD_BANCOHOR' +
      'A.TIPODESPESAOS,'#13#10'  RD_BANCOHORA.OSID,  '#13#10'  RD_BANCOHORA.OPERACA' +
      'OID,'#13#10'  RD_OPERACAO.DESCRICAO L_DESCRICAOOPERACAO,'#13#10'  RD_OPERACA' +
      'O.OPERACAO L_OPERACAO,'#13#10'  RD_BANCOHORA.HORAINI,'#13#10'  RD_BANCOHORA.' +
      'HORAFIM,'#13#10'  RD_BANCOHORA.DIFERENCAHORATRAB,'#13#10'  RD_BANCOHORA.DIFE' +
      'RENCAMINTRAB,'#13#10'  RD_BANCOHORA.HISTORICO,'#13#10'  RD_BANCOHORA.LIBCHEF' +
      'IA,'#13#10'  RD_BANCOHORA.NOMELIBCHEFIA,'#13#10'  RD_BANCOHORA.DATALIBCHEFIA' +
      ',  '#13#10'  RD_BANCOHORA.LIBERADO,'#13#10'  RD_BANCOHORA.IMPRESSO,'#13#10'  RD_BA' +
      'NCOHORA.USUARIO'#13#10'  FROM'#13#10'  RD_BANCOHORA,'#13#10'  RD_OPERACAO,'#13#10'  EF_E' +
      'NTIDADE,'#13#10'  RD_HORA,'#13#10'  EF_FILIAL'#13#10' WHERE'#13#10'  RD_BANCOHORA.OPERAC' +
      'AOID = RD_OPERACAO.OPERACAOID(+) '#13#10'  AND RD_BANCOHORA.FUNCIONARI' +
      'OID = EF_ENTIDADE.ENTIDADEID(+) '#13#10'  AND RD_BANCOHORA.FUNCIONARIO' +
      'ID = RD_HORA.HORAID(+) '#13#10'  AND RD_BANCOHORA.FILIALID = EF_FILIAL' +
      '.FILIALID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 392
    Top = 136
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
  object dsprvBancoHora2: TDataSetProvider
    DataSet = sqldtsBancoHora
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 496
    Top = 136
  end
  object cdsOFFAdiantamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvAdiantamento2'
    Left = 600
    Top = 88
    object cdsOFFAdiantamentoADIANTAMENTOID: TBCDField
      FieldName = 'ADIANTAMENTOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOFFAdiantamentoDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object cdsOFFAdiantamentoDATADEPOSITO: TSQLTimeStampField
      FieldName = 'DATADEPOSITO'
    end
    object cdsOFFAdiantamentoFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFAdiantamentoL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      Size = 100
    end
    object cdsOFFAdiantamentoTIPOMOEDA: TStringField
      FieldName = 'TIPOMOEDA'
      Size = 1
    end
    object cdsOFFAdiantamentoTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsOFFAdiantamentoOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsOFFAdiantamentoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsOFFAdiantamentoHORASOLICITADA: TSQLTimeStampField
      FieldName = 'HORASOLICITADA'
    end
    object cdsOFFAdiantamentoOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFAdiantamentoL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      Size = 100
    end
    object cdsOFFAdiantamentoL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      Size = 1
    end
    object cdsOFFAdiantamentoKMSAIDA: TBCDField
      FieldName = 'KMSAIDA'
      Precision = 8
      Size = 0
    end
    object cdsOFFAdiantamentoKMCHEGADA: TBCDField
      FieldName = 'KMCHEGADA'
      Precision = 8
      Size = 0
    end
    object cdsOFFAdiantamentoLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsOFFAdiantamentoLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsOFFAdiantamentoNOMELIBCHEFIA: TStringField
      FieldName = 'NOMELIBCHEFIA'
    end
    object cdsOFFAdiantamentoVLROPERACAO: TBCDField
      FieldName = 'VLROPERACAO'
      Precision = 14
      Size = 2
    end
    object cdsOFFAdiantamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsOFFBancoHora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvBancoHora2'
    Left = 600
    Top = 136
    object cdsOFFBancoHoraBANCOHORAID: TBCDField
      FieldName = 'BANCOHORAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsOFFBancoHoraDATASOLICITACAO: TSQLTimeStampField
      FieldName = 'DATASOLICITACAO'
    end
    object cdsOFFBancoHoraMULTILANCAMENTO: TBCDField
      FieldName = 'MULTILANCAMENTO'
      Precision = 1
      Size = 0
    end
    object cdsOFFBancoHoraFUNCIONARIOID: TBCDField
      FieldName = 'FUNCIONARIOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFBancoHoraL_NOMEFUNCIONARIO: TStringField
      FieldName = 'L_NOMEFUNCIONARIO'
      Size = 100
    end
    object cdsOFFBancoHoraL_FILIALID: TBCDField
      FieldName = 'L_FILIALID'
      Precision = 8
      Size = 0
    end
    object cdsOFFBancoHoraTIPODESPESAOS: TStringField
      FieldName = 'TIPODESPESAOS'
      Size = 1
    end
    object cdsOFFBancoHoraOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object cdsOFFBancoHoraOPERACAOID: TBCDField
      FieldName = 'OPERACAOID'
      Precision = 8
      Size = 0
    end
    object cdsOFFBancoHoraL_DESCRICAOOPERACAO: TStringField
      FieldName = 'L_DESCRICAOOPERACAO'
      Size = 100
    end
    object cdsOFFBancoHoraL_OPERACAO: TStringField
      FieldName = 'L_OPERACAO'
      Size = 1
    end
    object cdsOFFBancoHoraL_DATAFECHAMENTO: TSQLTimeStampField
      FieldName = 'L_DATAFECHAMENTO'
    end
    object cdsOFFBancoHoraL_DATAMESABERTO: TSQLTimeStampField
      FieldName = 'L_DATAMESABERTO'
    end
    object cdsOFFBancoHoraHORAINI: TSQLTimeStampField
      FieldName = 'HORAINI'
    end
    object cdsOFFBancoHoraHORAFIM: TSQLTimeStampField
      FieldName = 'HORAFIM'
    end
    object cdsOFFBancoHoraDIFERENCAHORATRAB: TStringField
      FieldName = 'DIFERENCAHORATRAB'
      Size = 7
    end
    object cdsOFFBancoHoraDIFERENCAMINTRAB: TFMTBCDField
      FieldName = 'DIFERENCAMINTRAB'
      Precision = 14
      Size = 10
    end
    object cdsOFFBancoHoraHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 200
    end
    object cdsOFFBancoHoraLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object cdsOFFBancoHoraNOMELIBCHEFIA: TStringField
      FieldName = 'NOMELIBCHEFIA'
    end
    object cdsOFFBancoHoraDATALIBCHEFIA: TSQLTimeStampField
      FieldName = 'DATALIBCHEFIA'
    end
    object cdsOFFBancoHoraLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object cdsOFFBancoHoraIMPRESSO: TBCDField
      FieldName = 'IMPRESSO'
      Precision = 1
      Size = 0
    end
    object cdsOFFBancoHoraUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOSTerceiroItem: TSQLDataSet
    CommandText = 
      'SELECT EF_NFSITEM.EMPRESAID,'#13#10'       EF_NFSITEM.NFSID,'#13#10'       E' +
      'F_NFSITEM.DATAEMISSAOID,'#13#10'       EF_NFSITEM.ITEMID,'#13#10'       EF_N' +
      'FSITEM.PRODUTOID,'#13#10'       EF_NFSITEM.DESCRICAOPRODUTO,'#13#10'       E' +
      'F_NFSITEM.QUANTIDADE,'#13#10'       EF_NFSITEM.VLRPRECOUNITARIO,'#13#10'    ' +
      '   EF_NFSITEM.VLRPRECOTOTAL,'#13#10'       EF_NFSITEM.USUARIO'#13#10'  FROM ' +
      'EF_NFSITEM EF_NFSITEM       '#13#10' WHERE EF_NFSITEM.EMPRESAID = :EMP' +
      'RESAID'#13#10'       AND EF_NFSITEM.NFSID = :NFSID'#13#10'       AND EF_NFSI' +
      'TEM.DATAEMISSAOID = :DATAEMISSAOID'
    DataSource = dsOSTerceiroLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 367
    object sqldtsOSTerceiroItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSTerceiroItemNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSTerceiroItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsOSTerceiroItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSTerceiroItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSTerceiroItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsOSTerceiroItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
    end
    object sqldtsOSTerceiroItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsOSTerceiroItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsOSTerceiroItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsOSTerceiroLink: TDataSource
    DataSet = sqldtsOsTerceiro
    Left = 402
    Top = 367
  end
  object sqldtsDemoCatalogo: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT OS_DEMOCATALOGO.DEMOCATALOGOID,'#13#10'       OS_DEMOCATALOGO.D' +
      'ESCRICAOEQUIPAMENTO,'#13#10'       OS_DEMOCATALOGO.EMPRESAID,'#13#10'       ' +
      'OS_DEMOCATALOGO.PRODUTOID,'#13#10'       EF_PRODUTO.DESCRICAOPORTUGUES' +
      ' L_DESCRICAOPORTUGUES,'#13#10'       EF_PRODUTO.PARTNUMBERID L_PARTNUM' +
      'BERID,'#13#10'       EF_PRODUTO.OBSERVACAO L_OBSERVACAO,'#13#10'       OS_DE' +
      'MOCATALOGO.SERIEID,'#13#10'       OS_DEMOCATALOGO.USUARIO'#13#10'  FROM OS_D' +
      'EMOCATALOGO, EF_PRODUTO EF_PRODUTO'#13#10' WHERE EF_PRODUTO.EMPRESAID(' +
      '+) = OS_DEMOCATALOGO.EMPRESAID'#13#10'   AND EF_PRODUTO.PRODUTOID(+) =' +
      ' OS_DEMOCATALOGO.PRODUTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 410
    object sqldtsDemoCatalogoDEMOCATALOGOID: TBCDField
      FieldName = 'DEMOCATALOGOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoDESCRICAOEQUIPAMENTO: TStringField
      FieldName = 'DESCRICAOEQUIPAMENTO'
      Size = 300
    end
    object sqldtsDemoCatalogoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDemoCatalogoL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsDemoCatalogoL_OBSERVACAO: TStringField
      FieldName = 'L_OBSERVACAO'
      ProviderFlags = []
      Size = 200
    end
    object sqldtsDemoCatalogoSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsDemoCatalogoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvDemoCatalogo: TDataSetProvider
    DataSet = sqldtsDemoCatalogo
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 400
    Top = 410
  end
  object dsDemoCatalogoLink: TDataSource
    DataSet = sqldtsDemoCatalogo
    Left = 402
    Top = 459
  end
  object sqldtsDemoCatalogoItem: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT OS_DEMOCATALOGOITEM.DEMOCATALOGOID,'#13#10'       OS_DEMOCATALO' +
      'GOITEM.ITEMID,'#13#10'       OS_DEMOCATALOGOITEM.EMPRESAID,'#13#10'       OS' +
      '_DEMOCATALOGOITEM.PRODUTOID,'#13#10'       EF_PRODUTO.DESCRICAOPORTUGU' +
      'ES L_DESCRICAOPORTUGUES,'#13#10'       EF_PRODUTO.PARTNUMBERID L_PARTN' +
      'UMBERID,'#13#10'       EF_PRODUTO.OBSERVACAO L_OBSERVACAO,'#13#10'       OS_' +
      'DEMOCATALOGOITEM.SERIEID,'#13#10'       OS_DEMOCATALOGOITEM.USUARIO'#13#10' ' +
      ' FROM OS_DEMOCATALOGOITEM, EF_PRODUTO EF_PRODUTO'#13#10' WHERE EF_PROD' +
      'UTO.EMPRESAID(+) = OS_DEMOCATALOGOITEM.EMPRESAID'#13#10'   AND EF_PROD' +
      'UTO.PRODUTOID(+) = OS_DEMOCATALOGOITEM.PRODUTOID'#13#10'   AND OS_DEMO' +
      'CATALOGOITEM.DEMOCATALOGOID = :DEMOCATALOGOID'
    DataSource = dsDemoCatalogoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'DEMOCATALOGOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 459
    object sqldtsDemoCatalogoItemDEMOCATALOGOID: TBCDField
      FieldName = 'DEMOCATALOGOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsDemoCatalogoItemL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDemoCatalogoItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsDemoCatalogoItemL_OBSERVACAO: TStringField
      FieldName = 'L_OBSERVACAO'
      ProviderFlags = []
      Size = 200
    end
    object sqldtsDemoCatalogoItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsDemoCatalogoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOSDemo: TSQLDataSet
    CommandText = 
      'SELECT OS_OSDEMO.OSID,'#13#10'       OS_OSDEMO.ITEMID,'#13#10'       OS_OSDE' +
      'MO.DEMOCATALOGOID,'#13#10'       OS_OSDEMO.EMPRESAID,'#13#10'       OS_OSDEM' +
      'O.PRODUTOID,'#13#10'       OS_OSDEMO.SERIEID,'#13#10'       OS_DEMOCATALOGO.' +
      'DESCRICAOEQUIPAMENTO L_DESCRICAODEMOCATALOGO,'#13#10'       EF_PRODUTO' +
      '.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,'#13#10'       EF_PRODUTO.PAR' +
      'TNUMBERID L_PARTNUMBERID,'#13#10'       EF_PRODUTO.OBSERVACAO L_OBSERV' +
      'ACAO,'#13#10'       OS_OSDEMO.USUARIO'#13#10'  FROM OS_OSDEMO,'#13#10'       OS_DE' +
      'MOCATALOGO,'#13#10'       EF_PRODUTO EF_PRODUTO'#13#10' WHERE  OS_OSDEMO.DEM' +
      'OCATALOGOID  = OS_DEMOCATALOGO.DEMOCATALOGOID(+) '#13#10'   AND EF_PRO' +
      'DUTO.EMPRESAID(+) = OS_OSDEMO.EMPRESAID'#13#10'   AND EF_PRODUTO.PRODU' +
      'TOID(+) = OS_OSDEMO.PRODUTOID'#13#10'   AND OS_OSDEMO.OSID = :OSID'
    DataSource = dsOsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'OSID'
        ParamType = ptInput
        Size = 13
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 284
    Top = 267
    object sqldtsOSDemoOSID: TStringField
      FieldName = 'OSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 13
    end
    object sqldtsOSDemoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsOSDemoDEMOCATALOGOID: TBCDField
      FieldName = 'DEMOCATALOGOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSDemoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSDemoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsOSDemoSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsOSDemoL_DESCRICAODEMOCATALOGO: TStringField
      FieldName = 'L_DESCRICAODEMOCATALOGO'
      ProviderFlags = []
      Size = 300
    end
    object sqldtsOSDemoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsOSDemoL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsOSDemoL_OBSERVACAO: TStringField
      FieldName = 'L_OBSERVACAO'
      ProviderFlags = []
      Size = 200
    end
    object sqldtsOSDemoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
end
