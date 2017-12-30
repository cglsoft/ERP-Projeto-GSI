object SrvAppEF: TSrvAppEF
  OldCreateOrder = False
  Height = 670
  Width = 981
  object sqldtsEmpresa: TSQLDataSet
    CommandText = 
      'SELECT EMPRESAID,'#13#10'       NOME,'#13#10'       NOMEFANTASIA,'#13#10'       CP' +
      'F_CNPJ,'#13#10'       INSCRMUNICIPAL,'#13#10'       INSCRESTADUAL,'#13#10'       B' +
      'LOQUEAR,'#13#10'       DIRETORIO,'#13#10'       CEPID,'#13#10'       NUMERO,'#13#10'    ' +
      '   COMPLEMENTO,'#13#10'       ENDERECO,'#13#10'       BAIRRO,'#13#10'       CIDADE' +
      ','#13#10'       SIGLAUFID,'#13#10'       NUMNF,'#13#10'       NUMNF3,'#13#10'       NUMP' +
      'RODUTO,'#13#10'       NUMDUPLICATA,'#13#10'       NUMPDE,'#13#10'       NUMPDS,'#13#10' ' +
      '      NUMNSU,'#13#10'       NUMRPS,'#13#10'       NUMTRANSFCONSUMO,'#13#10'       ' +
      'MODELOIMPRESSAONOTA,'#13#10'       ALIQUOTAISS,'#13#10'       ALIQUOTAICMSNA' +
      'OCONTRIB,'#13#10'       NUMEMPRESAEXP,'#13#10'       SIGLADUPLICATA'#13#10'  FROM ' +
      'EF_EMPRESA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 65535
    object sqldtsEmpresaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsEmpresaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 60
    end
    object sqldtsEmpresaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 18
    end
    object sqldtsEmpresaINSCRMUNICIPAL: TStringField
      FieldName = 'INSCRMUNICIPAL'
    end
    object sqldtsEmpresaINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
    end
    object sqldtsEmpresaBLOQUEAR: TBCDField
      FieldName = 'BLOQUEAR'
      Precision = 1
      Size = 0
    end
    object sqldtsEmpresaDIRETORIO: TStringField
      FieldName = 'DIRETORIO'
      Size = 100
    end
    object sqldtsEmpresaCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsEmpresaSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsEmpresaNUMNF: TBCDField
      FieldName = 'NUMNF'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMNF3: TBCDField
      FieldName = 'NUMNF3'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMPRODUTO: TBCDField
      FieldName = 'NUMPRODUTO'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMDUPLICATA: TBCDField
      FieldName = 'NUMDUPLICATA'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMPDE: TBCDField
      FieldName = 'NUMPDE'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMPDS: TBCDField
      FieldName = 'NUMPDS'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMNSU: TFMTBCDField
      FieldName = 'NUMNSU'
      Precision = 32
    end
    object sqldtsEmpresaNUMTRANSFCONSUMO: TBCDField
      FieldName = 'NUMTRANSFCONSUMO'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaNUMRPS: TBCDField
      FieldName = 'NUMRPS'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaMODELOIMPRESSAONOTA: TBCDField
      FieldName = 'MODELOIMPRESSAONOTA'
      Precision = 8
      Size = 0
    end
    object sqldtsEmpresaALIQUOTAISS: TFMTBCDField
      FieldName = 'ALIQUOTAISS'
      Precision = 14
      Size = 6
    end
    object sqldtsEmpresaALIQUOTAICMSNAOCONTRIB: TFMTBCDField
      FieldName = 'ALIQUOTAICMSNAOCONTRIB'
      Precision = 14
      Size = 6
    end
    object sqldtsEmpresaNUMEMPRESAEXP: TBCDField
      FieldName = 'NUMEMPRESAEXP'
      Precision = 8
      Size = 2
    end
    object sqldtsEmpresaSIGLADUPLICATA: TStringField
      FieldName = 'SIGLADUPLICATA'
      Size = 2
    end
  end
  object sqldtsContaContabil: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_CONTACONTABIL.CONTACONTABILID,'#13#10'  EF_CONTACONTABIL.' +
      'DESCRICAO,'#13#10'  EF_CONTACONTABIL.GRAU,'#13#10'  EF_CONTACONTABIL.CODIGOR' +
      'EDUZIDOID,'#13#10'  EF_CONTACONTABIL.NATUREZACONTA,'#13#10'  EF_CONTACONTABI' +
      'L.CONTALALUR,    '#13#10'  EF_CONTACONTABIL.EMPRESAID,'#13#10'  EF_EMPRESA.N' +
      'OMEFANTASIA L_NOMEFANTASIA,   '#13#10'  EF_CONTACONTABIL.USUARIO  '#13#10'  ' +
      'FROM'#13#10'  EF_CONTACONTABIL EF_CONTACONTABIL,'#13#10'  EF_EMPRESA EF_EMPR' +
      'ESA'#13#10' WHERE'#13#10'  EF_EMPRESA.EMPRESAID(+) = EF_CONTACONTABIL.EMPRES' +
      'AID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 40
    object sqldtsContaContabilCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sqldtsContaContabilDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsContaContabilGRAU: TBCDField
      FieldName = 'GRAU'
      Precision = 8
      Size = 0
    end
    object sqldtsContaContabilCODIGOREDUZIDOID: TBCDField
      FieldName = 'CODIGOREDUZIDOID'
      Precision = 8
      Size = 0
    end
    object sqldtsContaContabilNATUREZACONTA: TStringField
      FieldName = 'NATUREZACONTA'
      Size = 1
    end
    object sqldtsContaContabilCONTALALUR: TStringField
      FieldName = 'CONTALALUR'
      Size = 1
    end
    object sqldtsContaContabilEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsContaContabilL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsContaContabilUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsDepartamento: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_DEPARTAMENTO.DEPARTAMENTOID,'#13#10'  EF_DEPARTAMENTO.DES' +
      'CRICAO,'#13#10'  EF_DEPARTAMENTO.SIGLA,'#13#10'  EF_DEPARTAMENTO.FILIALID,'#13#10 +
      '  EF_FILIAL.NOMEFANTASIA L_FILIAL,'#13#10'  EF_DEPARTAMENTO.CONTACONTA' +
      'BILID,'#13#10'  EF_DEPARTAMENTO.CENTROCUSTOID,'#13#10'  EF_DEPARTAMENTO.BLOQ' +
      'LANCAMENTOS,'#13#10'  EF_DEPARTAMENTO.USUARIO'#13#10'  FROM'#13#10'  EF_DEPARTAMEN' +
      'TO EF_DEPARTAMENTO,'#13#10'  EF_FILIAL EF_FILIAL'#13#10' WHERE'#13#10'  EF_FILIAL.' +
      'FILIALID(+) = EF_DEPARTAMENTO.FILIALID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 81
    object sqldtsDepartamentoDEPARTAMENTOID: TBCDField
      FieldName = 'DEPARTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDepartamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsDepartamentoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object sqldtsDepartamentoFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsDepartamentoL_FILIAL: TStringField
      FieldName = 'L_FILIAL'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsDepartamentoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsDepartamentoCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 10
    end
    object sqldtsDepartamentoBLOQLANCAMENTOS: TBCDField
      FieldName = 'BLOQLANCAMENTOS'
      Precision = 1
      Size = 0
    end
    object sqldtsDepartamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsObservacao: TSQLDataSet
    CommandText = 
      'SELECT OBSERVACAOID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM ' +
      'EF_OBSERVACAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 208
    object sqldtsObservacaoOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsObservacaoDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsObservacaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsSiglaNatureza: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_SIGLANATUREZA.SIGLANATUREZAID,'#13#10'  EF_SIGLANATUREZA.' +
      'DESCRICAORESUMIDA,'#13#10'  EF_SIGLANATUREZA.DESCRICAO,'#13#10'  EF_SIGLANAT' +
      'UREZA.CONTACONTABILID,'#13#10'  EF_SIGLANATUREZA.CENTROCUSTOID,'#13#10'  EF_' +
      'SIGLANATUREZA.USUARIO'#13#10'  FROM'#13#10'  GSI.EF_SIGLANATUREZA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 335
    object sqldtsSiglaNaturezaSIGLANATUREZAID: TBCDField
      FieldName = 'SIGLANATUREZAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsSiglaNaturezaDESCRICAORESUMIDA: TStringField
      FieldName = 'DESCRICAORESUMIDA'
    end
    object sqldtsSiglaNaturezaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sqldtsSiglaNaturezaCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsSiglaNaturezaCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 10
    end
    object sqldtsSiglaNaturezaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNaturezaOp: TSQLDataSet
    CommandText = 
      'SELECT EF_NATUREZAOP.NATUREZAOPID,'#13#10'       EF_NATUREZAOP.CFOP,'#13#10 +
      '       EF_NATUREZAOP.TIPOMOVIMENTO,'#13#10'       EF_NATUREZAOP.DESCRI' +
      'CAOOPERACAOUSUARIO,'#13#10'       EF_NATUREZAOP.DESCRICAOOPERACAONOTA,' +
      #13#10'       EF_NATUREZAOP.DESCRICAOCOMPLETA,'#13#10'       EF_NATUREZAOP.' +
      'NATUREZAOPRETORNOID,'#13#10'       EF_NATOPRETORNO.DESCRICAOOPERACAOUS' +
      'UARIO AS L_DESCRNATRETORNO,'#13#10'       EF_NATUREZAOP.MOVIMENTOESTOQ' +
      'UE,'#13#10'       EF_NATUREZAOP.VENDADEFINITIVA,'#13#10'       EF_NATUREZAOP' +
      '.OUTRASSAIDA,'#13#10'       EF_NATUREZAOP.CALCULAPRECOMEDIO,'#13#10'       E' +
      'F_NATUREZAOP.UTILIZAEMPENHO,'#13#10'       EF_NATUREZAOP.GERARDUPLICAT' +
      'A,'#13#10'       EF_NATUREZAOP.TRANSFCONSUMO,'#13#10'       EF_NATUREZAOP.DE' +
      'SMEMBRCUSTO,'#13#10'       EF_NATUREZAOP.COBERTURACONTRATUAL,'#13#10'       ' +
      'EF_NATUREZAOP.ENTRADAPRECOTRANSF,'#13#10'       EF_NATUREZAOP.ENTRADAD' +
      'IPJ,'#13#10'       EF_NATUREZAOP.SAIDADIPJ,'#13#10'       EF_NATUREZAOP.DOCI' +
      'NTERNO,'#13#10'       EF_NATUREZAOP.CALCULOPIS,'#13#10'       EF_NATUREZAOP.' +
      'CALCULOCOFINS,'#13#10'       EF_NATUREZAOP.CREDITOPIS,'#13#10'       EF_NATU' +
      'REZAOP.CREDITOCOFINS,'#13#10'       EF_NATUREZAOP.CALCULOIPI,'#13#10'       ' +
      'EF_NATUREZAOP.CREDITOIPI,'#13#10'       EF_NATUREZAOP.IPIBASE,'#13#10'      ' +
      ' EF_NATUREZAOP.FRETEIPI,'#13#10'       EF_NATUREZAOP.DESPACESSORIABASE' +
      'ICMS,'#13#10'       EF_NATUREZAOP.DESTACAIPI,'#13#10'       EF_NATUREZAOP.CA' +
      'LCULOIRPJ,'#13#10'       EF_NATUREZAOP.GERAMOVIMENTO,'#13#10'       EF_NATUR' +
      'EZAOP.VENDAFATANTECIPADO,'#13#10'       EF_NATUREZAOP.TRIBUTADO,'#13#10'    ' +
      '   EF_NATUREZAOP.SUSPENSAOIPI,'#13#10'       EF_NATUREZAOP.ISENTOIPI,'#13 +
      #10'       EF_NATUREZAOP.SITTRIBESTADUAL,'#13#10'       EF_NATUREZAOP.CAL' +
      'CULOICMS,'#13#10'       EF_NATUREZAOP.CREDITOICMS,'#13#10'       EF_NATUREZA' +
      'OP.INCENTIVOICMS,'#13#10'       EF_NATUREZAOP.CONTRIBUINTEICMS,'#13#10'     ' +
      '  EF_NATUREZAOP.ISENTOINSCRICAOESTADUAL,'#13#10'       EF_NATUREZAOP.C' +
      'ALCULOISS,'#13#10'       EF_NATUREZAOP.OBSERVACAOID,'#13#10'       EF_OBSERV' +
      'ACAO.DESCRICAO AS L_DESCRICAOOBSERVACAO,'#13#10'       EF_NATUREZAOP.S' +
      'IGLANATUREZAID,'#13#10'       EF_SIGLANATUREZA.DESCRICAORESUMIDA AS L_' +
      'DESCRICAORESUMIDA,'#13#10'       EF_SIGLANATUREZA.DESCRICAO AS L_DESCR' +
      'ICAOSIGLA,'#13#10'       EF_NATUREZAOP.NATUREZASERVICO,'#13#10'       EF_NAT' +
      'UREZAOP.NUMPADRAO,'#13#10'       EF_NATUREZAOP.USUARIO'#13#10'  FROM EF_NATU' +
      'REZAOP EF_NATUREZAOP,'#13#10'       EF_SIGLANATUREZA EF_SIGLANATUREZA,' +
      #13#10'       EF_OBSERVACAO EF_OBSERVACAO,'#13#10'       EF_NATUREZAOP EF_N' +
      'ATOPRETORNO'#13#10' WHERE EF_SIGLANATUREZA.SIGLANATUREZAID(+) = EF_NAT' +
      'UREZAOP.SIGLANATUREZAID'#13#10'       AND EF_OBSERVACAO.OBSERVACAOID(+' +
      ') = EF_NATUREZAOP.OBSERVACAOID'#13#10'       AND EF_NATUREZAOP.NATUREZ' +
      'AOPRETORNOID = EF_NATOPRETORNO.NATUREZAOPID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 377
    object sqldtsNaturezaOpNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaOpCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object sqldtsNaturezaOpTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 1
    end
    object sqldtsNaturezaOpDESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'DESCRICAOOPERACAOUSUARIO'
      Size = 100
    end
    object sqldtsNaturezaOpDESCRICAOOPERACAONOTA: TStringField
      FieldName = 'DESCRICAOOPERACAONOTA'
      Size = 100
    end
    object sqldtsNaturezaOpDESCRICAOCOMPLETA: TStringField
      FieldName = 'DESCRICAOCOMPLETA'
      Size = 300
    end
    object sqldtsNaturezaOpNATUREZAOPRETORNOID: TBCDField
      FieldName = 'NATUREZAOPRETORNOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaOpL_DESCRNATRETORNO: TStringField
      FieldName = 'L_DESCRNATRETORNO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNaturezaOpMOVIMENTOESTOQUE: TStringField
      FieldName = 'MOVIMENTOESTOQUE'
      Size = 1
    end
    object sqldtsNaturezaOpVENDADEFINITIVA: TBCDField
      FieldName = 'VENDADEFINITIVA'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpOUTRASSAIDA: TBCDField
      FieldName = 'OUTRASSAIDA'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCALCULAPRECOMEDIO: TBCDField
      FieldName = 'CALCULAPRECOMEDIO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpUTILIZAEMPENHO: TBCDField
      FieldName = 'UTILIZAEMPENHO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpGERARDUPLICATA: TBCDField
      FieldName = 'GERARDUPLICATA'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpTRANSFCONSUMO: TBCDField
      FieldName = 'TRANSFCONSUMO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpDESMEMBRCUSTO: TBCDField
      FieldName = 'DESMEMBRCUSTO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCOBERTURACONTRATUAL: TBCDField
      FieldName = 'COBERTURACONTRATUAL'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpENTRADAPRECOTRANSF: TBCDField
      FieldName = 'ENTRADAPRECOTRANSF'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpENTRADADIPJ: TBCDField
      FieldName = 'ENTRADADIPJ'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpSAIDADIPJ: TBCDField
      FieldName = 'SAIDADIPJ'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpDOCINTERNO: TBCDField
      FieldName = 'DOCINTERNO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCALCULOPIS: TBCDField
      FieldName = 'CALCULOPIS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCALCULOCOFINS: TBCDField
      FieldName = 'CALCULOCOFINS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCREDITOPIS: TBCDField
      FieldName = 'CREDITOPIS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCREDITOCOFINS: TBCDField
      FieldName = 'CREDITOCOFINS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCALCULOIPI: TBCDField
      FieldName = 'CALCULOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCREDITOIPI: TBCDField
      FieldName = 'CREDITOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpIPIBASE: TBCDField
      FieldName = 'IPIBASE'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpFRETEIPI: TBCDField
      FieldName = 'FRETEIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpDESPACESSORIABASEICMS: TBCDField
      FieldName = 'DESPACESSORIABASEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpDESTACAIPI: TBCDField
      FieldName = 'DESTACAIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCALCULOIRPJ: TBCDField
      FieldName = 'CALCULOIRPJ'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpGERAMOVIMENTO: TBCDField
      FieldName = 'GERAMOVIMENTO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpVENDAFATANTECIPADO: TBCDField
      FieldName = 'VENDAFATANTECIPADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpTRIBUTADO: TBCDField
      FieldName = 'TRIBUTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpSUSPENSAOIPI: TBCDField
      FieldName = 'SUSPENSAOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpISENTOIPI: TBCDField
      FieldName = 'ISENTOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpSITTRIBESTADUAL: TStringField
      FieldName = 'SITTRIBESTADUAL'
      Size = 2
    end
    object sqldtsNaturezaOpCALCULOICMS: TBCDField
      FieldName = 'CALCULOICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCREDITOICMS: TBCDField
      FieldName = 'CREDITOICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpISENTOINSCRICAOESTADUAL: TBCDField
      FieldName = 'ISENTOINSCRICAOESTADUAL'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpCALCULOISS: TBCDField
      FieldName = 'CALCULOISS'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaOpL_DESCRICAOOBSERVACAO: TMemoField
      FieldName = 'L_DESCRICAOOBSERVACAO'
      ProviderFlags = []
      BlobType = ftFmtMemo
      Size = 1
    end
    object sqldtsNaturezaOpSIGLANATUREZAID: TBCDField
      FieldName = 'SIGLANATUREZAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaOpL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
    end
    object sqldtsNaturezaOpL_DESCRICAOSIGLA: TStringField
      FieldName = 'L_DESCRICAOSIGLA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNaturezaOpNATUREZASERVICO: TBCDField
      FieldName = 'NATUREZASERVICO'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaOpNUMPADRAO: TStringField
      FieldName = 'NUMPADRAO'
      Size = 6
    end
    object sqldtsNaturezaOpUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNaturezaEmpresa: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_NATUREZAEMPRESA.NATUREZAOPID,'#13#10'  EF_NATUREZAEMPRESA' +
      '.EMPRESAID,'#13#10'  EF_EMPRESA.NOMEFANTASIA AS L_NOMEFANTASIA,'#13#10'  EF_' +
      'NATUREZAEMPRESA.USUARIO'#13#10'  FROM'#13#10'  EF_NATUREZAEMPRESA EF_NATUREZ' +
      'AEMPRESA,'#13#10'  EF_EMPRESA EF_EMPRESA'#13#10' WHERE EF_EMPRESA.EMPRESAID ' +
      '(+) = EF_NATUREZAEMPRESA.EMPRESAID'#13#10'  AND EF_NATUREZAEMPRESA.NAT' +
      'UREZAOPID = :NATUREZAOPID'
    DataSource = dsNaturezaOpLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'NATUREZAOPID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 421
    object sqldtsNaturezaEmpresaNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaEmpresaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaEmpresaL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsNaturezaEmpresaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsFilial: TSQLDataSet
    CommandText = 
      'SELECT EF_FILIAL.FILIALID,'#13#10'       EF_FILIAL.CPF_CNPJ,'#13#10'       E' +
      'F_FILIAL.INSCRESTADUAL,'#13#10'       EF_FILIAL.INSCRMUNICIPAL,'#13#10'     ' +
      '  EF_FILIAL.NOME,'#13#10'       EF_FILIAL.NOMEFANTASIA,'#13#10'       EF_FIL' +
      'IAL.CEPID,'#13#10'       EF_FILIAL.NUMERO,'#13#10'       EF_FILIAL.COMPLEMEN' +
      'TO,'#13#10'       EF_FILIAL.ENDERECO,'#13#10'       EF_FILIAL.BAIRRO,'#13#10'     ' +
      '  EF_FILIAL.CIDADE,'#13#10'       EF_FILIAL.SIGLAUFID,'#13#10'       EF_FILI' +
      'AL.CONTATO,'#13#10'       EF_FILIAL.TELEFONE,'#13#10'       EF_FILIAL.TELEFO' +
      'NE2,'#13#10'       EF_FILIAL.CELULAR,'#13#10'       EF_FILIAL.CELULAR2,'#13#10'   ' +
      '    EF_FILIAL.FAX,'#13#10'       EF_FILIAL.EMAIL,'#13#10'       EF_FILIAL.PA' +
      'GINA,'#13#10'       EF_FILIAL.IDENTIFICADOR,'#13#10'       EF_FILIAL.ULTIMAO' +
      'S,'#13#10'       EF_FILIAL.CONTABANCARIA,'#13#10'       EF_FILIAL.CONTACAIXA' +
      ','#13#10'       EF_FILIAL.HORAINICIOTRABALHO,'#13#10'       EF_FILIAL.HORAFI' +
      'NALTRABALHO,'#13#10'       EF_FILIAL.HORASALMOCO,'#13#10'       EF_FILIAL.LI' +
      'MITEBCOHORAS,'#13#10'       EF_FILIAL.USUARIO'#13#10'  FROM EF_FILIAL EF_FIL' +
      'IAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 463
    object sqldtsFilialFILIALID: TBCDField
      FieldName = 'FILIALID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFilialCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 18
    end
    object sqldtsFilialINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
    end
    object sqldtsFilialINSCRMUNICIPAL: TStringField
      FieldName = 'INSCRMUNICIPAL'
    end
    object sqldtsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsFilialNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object sqldtsFilialCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsFilialNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsFilialSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsFilialCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object sqldtsFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object sqldtsFilialTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object sqldtsFilialCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object sqldtsFilialCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object sqldtsFilialFAX: TStringField
      FieldName = 'FAX'
    end
    object sqldtsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sqldtsFilialPAGINA: TStringField
      FieldName = 'PAGINA'
      Size = 100
    end
    object sqldtsFilialIDENTIFICADOR: TStringField
      FieldName = 'IDENTIFICADOR'
      Size = 1
    end
    object sqldtsFilialULTIMAOS: TBCDField
      FieldName = 'ULTIMAOS'
      Precision = 8
      Size = 0
    end
    object sqldtsFilialCONTABANCARIA: TStringField
      FieldName = 'CONTABANCARIA'
      Size = 10
    end
    object sqldtsFilialCONTACAIXA: TStringField
      FieldName = 'CONTACAIXA'
      Size = 10
    end
    object sqldtsFilialHORAINICIOTRABALHO: TSQLTimeStampField
      FieldName = 'HORAINICIOTRABALHO'
    end
    object sqldtsFilialHORAFINALTRABALHO: TSQLTimeStampField
      FieldName = 'HORAFINALTRABALHO'
    end
    object sqldtsFilialHORASALMOCO: TFMTBCDField
      FieldName = 'HORASALMOCO'
      Precision = 14
      Size = 10
    end
    object sqldtsFilialLIMITEBCOHORAS: TFMTBCDField
      FieldName = 'LIMITEBCOHORAS'
      Precision = 14
      Size = 10
    end
    object sqldtsFilialUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvEmpresa: TDataSetProvider
    DataSet = sqldtsEmpresa
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 65535
  end
  object dsprvContaContabil: TDataSetProvider
    DataSet = sqldtsContaContabil
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 40
  end
  object dsprvDepartamento: TDataSetProvider
    DataSet = sqldtsDepartamento
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 81
  end
  object dsprvCargo: TDataSetProvider
    DataSet = sqldtsCargo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 122
  end
  object dsprvObservacao: TDataSetProvider
    DataSet = sqldtsObservacao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 208
  end
  object dsprvSiglaNatureza: TDataSetProvider
    DataSet = sqldtsSiglaNatureza
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 335
  end
  object dsNaturezaOpLink: TDataSource
    DataSet = sqldtsNaturezaOp
    Left = 142
    Top = 421
  end
  object dsprvNaturezaOp: TDataSetProvider
    DataSet = sqldtsNaturezaOp
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 377
  end
  object dsprvFilial: TDataSetProvider
    DataSet = sqldtsFilial
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 463
  end
  object sqldtsCategoria: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_CATEGORIA.CATEGORIAID,'#13#10'  EF_CATEGORIA.DESCRICAO,'#13#10 +
      '  EF_CATEGORIA.FUNCAOVENDA,'#13#10'  EF_CATEGORIA.USUARIO'#13#10'  FROM'#13#10'  E' +
      'F_CATEGORIA EF_CATEGORIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 65535
    object sqldtsCategoriaCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsCategoriaFUNCAOVENDA: TBCDField
      FieldName = 'FUNCAOVENDA'
      Precision = 1
      Size = 0
    end
    object sqldtsCategoriaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsEntidade: TSQLDataSet
    CommandText = 
      'SELECT EF_ENTIDADE.ENTIDADEID,'#13#10'       EF_ENTIDADE.CPFCNPJ,'#13#10'   ' +
      '    EF_ENTIDADE.FISICAJURIDICA,'#13#10'       EF_ENTIDADE.INSCRESTADUA' +
      'L,'#13#10'       EF_ENTIDADE.INSCRMUNICIPAL,'#13#10'       EF_ENTIDADE.NOME,' +
      #13#10'       EF_ENTIDADE.NOMEFANTASIA,'#13#10'       EF_ENTIDADE.PASTA,'#13#10' ' +
      '      EF_ENTIDADE.STATUSCOMERCIAL,'#13#10'       EF_ENTIDADE.STATUSFIN' +
      'ANCEIRO,'#13#10'       EF_ENTIDADE.NATUREZAJURIDICAID,'#13#10'       EF_ENTI' +
      'DADE.DESLIGADO,'#13#10'       EF_NATUREZAJURIDICA.DESCRICAO L_NATUREZA' +
      'JURIDICA,'#13#10'       EF_CATEGJURIDICA.DESCRICAO L_CATEGJURIDICA,'#13#10' ' +
      '      EF_ENTIDADE.CEPID,'#13#10'       EF_ENTIDADE.NUMERO,'#13#10'       EF_' +
      'ENTIDADE.COMPLEMENTO,'#13#10'       EF_ENTIDADE.ENDERECO,'#13#10'       EF_E' +
      'NTIDADE.BAIRRO,'#13#10'       EF_ENTIDADE.CIDADE,'#13#10'       EF_ENTIDADE.' +
      'SIGLAUFID,'#13#10'       EF_ENTIDADE.PAIS,'#13#10'       EF_ENTIDADE.CEPCOBI' +
      'D,'#13#10'       EF_ENTIDADE.NUMEROCOB,'#13#10'       EF_ENTIDADE.COMPLEMENT' +
      'OCOB,'#13#10'       EF_ENTIDADE.ENDERECOCOB,'#13#10'       EF_ENTIDADE.BAIRR' +
      'OCOB,'#13#10'       EF_ENTIDADE.CIDADECOB,'#13#10'       EF_ENTIDADE.SIGLAUF' +
      'COBID,'#13#10'       EF_ENTIDADE.PAISCOB,'#13#10'       EF_ENTIDADE.CEPINSTI' +
      'D,'#13#10'       EF_ENTIDADE.NUMEROINST,'#13#10'       EF_ENTIDADE.COMPLEMEN' +
      'TOINST,'#13#10'       EF_ENTIDADE.ENDERECOINST,'#13#10'       EF_ENTIDADE.BA' +
      'IRROINST,'#13#10'       EF_ENTIDADE.CIDADEINST,'#13#10'       EF_ENTIDADE.SI' +
      'GLAUFINSTID,'#13#10'       EF_ENTIDADE.PAISINST,'#13#10'       EF_ENTIDADE.C' +
      'ONTATO,'#13#10'       EF_ENTIDADE.CONTATOCOB,'#13#10'       EF_ENTIDADE.CONT' +
      'ATOINST,'#13#10'       EF_ENTIDADE.TELEFONE,'#13#10'       EF_ENTIDADE.TELEF' +
      'ONE2,'#13#10'       EF_ENTIDADE.TELEFONE3,'#13#10'       EF_ENTIDADE.CELULAR' +
      ','#13#10'       EF_ENTIDADE.CELULAR2,'#13#10'       EF_ENTIDADE.CELULAR3,'#13#10' ' +
      '      EF_ENTIDADE.FAX,'#13#10'       EF_ENTIDADE.EMAIL,'#13#10'       EF_ENT' +
      'IDADE.EMAILNFE,'#13#10'       EF_ENTIDADE.PAGINA,'#13#10'       EF_ENTIDADE.' +
      'OBSERVACAO,'#13#10'       EF_ENTIDADE.CONTRIBUINTEICMS,'#13#10'       EF_ENT' +
      'IDADE.RG,'#13#10'       EF_ENTIDADE.RGORGAOEMISSOR,'#13#10'       EF_ENTIDAD' +
      'E.HABILITACAO,'#13#10'       EF_ENTIDADE.VALIDADEHABILITACAO,'#13#10'       ' +
      'EF_ENTIDADE.CRM,'#13#10'       EF_ENTIDADE.CRMORGAOEMISSOR,'#13#10'       EF' +
      '_ENTIDADE.CARGOID,'#13#10'       EF_CARGO.DESCRICAO AS L_DESCRICAOCARG' +
      'O,'#13#10'       EF_ENTIDADE.FILIALID,'#13#10'       EF_FILIAL.NOMEFANTASIA ' +
      'AS L_NOMEFANTASIA,'#13#10'       EF_ENTIDADE.DEPARTAMENTOID,'#13#10'       E' +
      'F_DEPARTAMENTO.DESCRICAO AS L_DESCRICAODEPTO,'#13#10'       EF_ENTIDAD' +
      'E.CONTACONTABILID,'#13#10'       EF_ENTIDADE.HORASCFGTRABID,'#13#10'       R' +
      'D_HORASCFGTRAB.DESCRICAO L_DESCRICAOHORASCFGTRAB,'#13#10'       EF_ENT' +
      'IDADE.USUARIO'#13#10'  FROM EF_ENTIDADE EF_ENTIDADE,'#13#10'       EF_FILIAL' +
      ' EF_FILIAL,'#13#10'       EF_DEPARTAMENTO EF_DEPARTAMENTO,'#13#10'       EF_' +
      'CARGO,'#13#10'       EF_NATUREZAJURIDICA EF_NATUREZAJURIDICA,'#13#10'       ' +
      'EF_CATEGJURIDICA EF_CATEGJURIDICA,'#13#10'       RD_HORASCFGTRAB RD_HO' +
      'RASCFGTRAB'#13#10' WHERE EF_ENTIDADE.FILIALID = EF_FILIAL.FILIALID (+)' +
      #13#10'       AND EF_ENTIDADE.DEPARTAMENTOID = EF_DEPARTAMENTO.DEPART' +
      'AMENTOID(+)'#13#10'       AND EF_ENTIDADE.CARGOID = EF_CARGO.CARGOID(+' +
      ')'#13#10'       AND EF_NATUREZAJURIDICA.NATUREZAJURIDICAID(+) = EF_ENT' +
      'IDADE.NATUREZAJURIDICAID'#13#10'       AND EF_CATEGJURIDICA.CATEGJURID' +
      'ICAID(+) = EF_NATUREZAJURIDICA.CATEGJURIDICAID'#13#10'       AND EF_EN' +
      'TIDADE.HORASCFGTRABID = RD_HORASCFGTRAB.HORASCFGTRABID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 40
    object sqldtsEntidadeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 18
    end
    object sqldtsEntidadeFISICAJURIDICA: TStringField
      FieldName = 'FISICAJURIDICA'
      Size = 1
    end
    object sqldtsEntidadeINSCRESTADUAL: TStringField
      FieldName = 'INSCRESTADUAL'
    end
    object sqldtsEntidadeINSCRMUNICIPAL: TStringField
      FieldName = 'INSCRMUNICIPAL'
    end
    object sqldtsEntidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsEntidadeNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Size = 50
    end
    object sqldtsEntidadePASTA: TStringField
      FieldName = 'PASTA'
      Size = 10
    end
    object sqldtsEntidadeSTATUSCOMERCIAL: TBCDField
      FieldName = 'STATUSCOMERCIAL'
      Precision = 1
      Size = 0
    end
    object sqldtsEntidadeSTATUSFINANCEIRO: TBCDField
      FieldName = 'STATUSFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsEntidadeNATUREZAJURIDICAID: TBCDField
      FieldName = 'NATUREZAJURIDICAID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeDESLIGADO: TBCDField
      FieldName = 'DESLIGADO'
      Precision = 1
      Size = 0
    end
    object sqldtsEntidadeL_NATUREZAJURIDICA: TStringField
      FieldName = 'L_NATUREZAJURIDICA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeL_CATEGJURIDICA: TStringField
      FieldName = 'L_CATEGJURIDICA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsEntidadeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsEntidadeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsEntidadeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsEntidadeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsEntidadeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsEntidadePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsEntidadeCEPCOBID: TBCDField
      FieldName = 'CEPCOBID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeNUMEROCOB: TStringField
      FieldName = 'NUMEROCOB'
    end
    object sqldtsEntidadeCOMPLEMENTOCOB: TStringField
      FieldName = 'COMPLEMENTOCOB'
    end
    object sqldtsEntidadeENDERECOCOB: TStringField
      FieldName = 'ENDERECOCOB'
      Size = 100
    end
    object sqldtsEntidadeBAIRROCOB: TStringField
      FieldName = 'BAIRROCOB'
      Size = 72
    end
    object sqldtsEntidadeCIDADECOB: TStringField
      FieldName = 'CIDADECOB'
      Size = 72
    end
    object sqldtsEntidadeSIGLAUFCOBID: TStringField
      FieldName = 'SIGLAUFCOBID'
      Size = 2
    end
    object sqldtsEntidadePAISCOB: TStringField
      FieldName = 'PAISCOB'
      Size = 72
    end
    object sqldtsEntidadePAISINST: TStringField
      FieldName = 'PAISINST'
      Size = 72
    end
    object sqldtsEntidadeSIGLAUFINSTID: TStringField
      FieldName = 'SIGLAUFINSTID'
      Size = 2
    end
    object sqldtsEntidadeCIDADEINST: TStringField
      FieldName = 'CIDADEINST'
      Size = 72
    end
    object sqldtsEntidadeBAIRROINST: TStringField
      FieldName = 'BAIRROINST'
      Size = 72
    end
    object sqldtsEntidadeENDERECOINST: TStringField
      FieldName = 'ENDERECOINST'
      Size = 100
    end
    object sqldtsEntidadeCOMPLEMENTOINST: TStringField
      FieldName = 'COMPLEMENTOINST'
    end
    object sqldtsEntidadeNUMEROINST: TStringField
      FieldName = 'NUMEROINST'
    end
    object sqldtsEntidadeCEPINSTID: TBCDField
      FieldName = 'CEPINSTID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object sqldtsEntidadeCONTATOCOB: TStringField
      FieldName = 'CONTATOCOB'
      Size = 100
    end
    object sqldtsEntidadeCONTATOINST: TStringField
      FieldName = 'CONTATOINST'
      Size = 100
    end
    object sqldtsEntidadeTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 70
    end
    object sqldtsEntidadeTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 70
    end
    object sqldtsEntidadeTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
      Size = 70
    end
    object sqldtsEntidadeCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object sqldtsEntidadeCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object sqldtsEntidadeCELULAR3: TStringField
      FieldName = 'CELULAR3'
    end
    object sqldtsEntidadeFAX: TStringField
      FieldName = 'FAX'
    end
    object sqldtsEntidadeEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sqldtsEntidadeEMAILNFE: TStringField
      FieldName = 'EMAILNFE'
      Size = 100
    end
    object sqldtsEntidadePAGINA: TStringField
      FieldName = 'PAGINA'
      Size = 100
    end
    object sqldtsEntidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsEntidadeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsEntidadeRG: TStringField
      FieldName = 'RG'
      Size = 12
    end
    object sqldtsEntidadeRGORGAOEMISSOR: TStringField
      FieldName = 'RGORGAOEMISSOR'
      Size = 10
    end
    object sqldtsEntidadeHABILITACAO: TStringField
      FieldName = 'HABILITACAO'
      Size = 10
    end
    object sqldtsEntidadeVALIDADEHABILITACAO: TSQLTimeStampField
      FieldName = 'VALIDADEHABILITACAO'
    end
    object sqldtsEntidadeCRM: TStringField
      FieldName = 'CRM'
      Size = 15
    end
    object sqldtsEntidadeCRMORGAOEMISSOR: TStringField
      FieldName = 'CRMORGAOEMISSOR'
      Size = 10
    end
    object sqldtsEntidadeCARGOID: TBCDField
      FieldName = 'CARGOID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeL_DESCRICAOCARGO: TStringField
      FieldName = 'L_DESCRICAOCARGO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeFILIALID: TBCDField
      FieldName = 'FILIALID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsEntidadeDEPARTAMENTOID: TBCDField
      FieldName = 'DEPARTAMENTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeL_DESCRICAODEPTO: TStringField
      FieldName = 'L_DESCRICAODEPTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsEntidadeHORASCFGTRABID: TBCDField
      FieldName = 'HORASCFGTRABID'
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeL_DESCRICAOHORASCFGTRAB: TStringField
      FieldName = 'L_DESCRICAOHORASCFGTRAB'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsEntidadeGrupo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_ENTIDADEGRUPO.ENTIDADEID,'#13#10'  EF_ENTIDADEGRUPO.CATEG' +
      'ORIAID,'#13#10'  EF_CATEGORIA.DESCRICAO AS L_DESCRICAO,'#13#10'  EF_ENTIDADE' +
      'GRUPO.USUARIO'#13#10'  FROM'#13#10'  EF_ENTIDADEGRUPO EF_ENTIDADEGRUPO,'#13#10'  E' +
      'F_CATEGORIA EF_CATEGORIA'#13#10' WHERE'#13#10'  EF_CATEGORIA.CATEGORIAID = E' +
      'F_ENTIDADEGRUPO.CATEGORIAID'#13#10'AND EF_ENTIDADEGRUPO.ENTIDADEID = :' +
      'ENTIDADEID'
    DataSource = dsEntidadeLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'ENTIDADEID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 81
    object sqldtsEntidadeGrupoENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeGrupoCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeGrupoL_DESCRICAO: TStringField
      FieldName = 'L_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeGrupoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsBanco: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_BANCO.BANCOID,'#13#10'  EF_BANCO.NOME,'#13#10'  EF_BANCO.NUMBAN' +
      'CO,'#13#10'  EF_BANCO.AGENCIA,'#13#10'  EF_BANCO.CONTA,'#13#10'  EF_BANCO.CEPID,'#13#10 +
      '  EF_BANCO.NUMERO,'#13#10'  EF_BANCO.COMPLEMENTO,'#13#10'  EF_BANCO.ENDERECO' +
      ','#13#10'  EF_BANCO.BAIRRO,'#13#10'  EF_BANCO.CIDADE,'#13#10'  EF_BANCO.SIGLAUFID,' +
      #13#10'  EF_BANCO.TELEFONE,'#13#10'  EF_BANCO.FAX,'#13#10'  EF_BANCO.CONTATO,'#13#10'  ' +
      'EF_BANCO.CONTACONTABILID,'#13#10'  EF_BANCO.USUARIO'#13#10'  FROM'#13#10'  EF_BANC' +
      'O EF_BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 170
    object sqldtsBancoBANCOID: TBCDField
      FieldName = 'BANCOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 18
    end
    object sqldtsBancoNUMBANCO: TStringField
      FieldName = 'NUMBANCO'
    end
    object sqldtsBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
    end
    object sqldtsBancoCONTA: TStringField
      FieldName = 'CONTA'
      Size = 100
    end
    object sqldtsBancoNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsBancoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsBancoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsBancoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sqldtsBancoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqldtsBancoSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsBancoCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsBancoTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object sqldtsBancoFAX: TStringField
      FieldName = 'FAX'
    end
    object sqldtsBancoCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object sqldtsBancoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsBancoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsCondPagto: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_CONDPAGTO.CONDPAGTOID,'#13#10'  EF_CONDPAGTO.DESCRICAO,'#13#10 +
      '  EF_CONDPAGTO.NUMPARCELA,'#13#10'  EF_CONDPAGTO.DIASPRIMEIRA,'#13#10'  EF_C' +
      'ONDPAGTO.DIASENTREPARC,'#13#10'  EF_CONDPAGTO.MULTA,'#13#10'  EF_CONDPAGTO.D' +
      'IASJUROS,'#13#10'  EF_CONDPAGTO.JUROS,'#13#10'  EF_CONDPAGTO.DESCONTO,'#13#10'  EF' +
      '_CONDPAGTO.EMITEDUPLICATA,'#13#10'  EF_CONDPAGTO.DIAUNICO,'#13#10'  EF_CONDP' +
      'AGTO.IMPRIMEDESCRICAO,'#13#10'  EF_CONDPAGTO.DESCRICAOPAGTO,'#13#10'  EF_CON' +
      'DPAGTO.DATAIGUALEMISSAO,'#13#10'  EF_CONDPAGTO.IMPRIMEDUPLIC1PARCELA,'#13 +
      #10'  EF_CONDPAGTO.USUARIO'#13#10'  FROM'#13#10'  EF_CONDPAGTO EF_CONDPAGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 212
    object sqldtsCondPagtoCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsCondPagtoNUMPARCELA: TBCDField
      FieldName = 'NUMPARCELA'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoDIASPRIMEIRA: TBCDField
      FieldName = 'DIASPRIMEIRA'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoDIASENTREPARC: TBCDField
      FieldName = 'DIASENTREPARC'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoMULTA: TBCDField
      FieldName = 'MULTA'
      Precision = 8
      Size = 2
    end
    object sqldtsCondPagtoDIASJUROS: TBCDField
      FieldName = 'DIASJUROS'
      Precision = 8
      Size = 0
    end
    object sqldtsCondPagtoJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 8
      Size = 2
    end
    object sqldtsCondPagtoDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 8
      Size = 2
    end
    object sqldtsCondPagtoEMITEDUPLICATA: TBCDField
      FieldName = 'EMITEDUPLICATA'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoDIAUNICO: TBCDField
      FieldName = 'DIAUNICO'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoIMPRIMEDESCRICAO: TBCDField
      FieldName = 'IMPRIMEDESCRICAO'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoDESCRICAOPAGTO: TMemoField
      FieldName = 'DESCRICAOPAGTO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsCondPagtoDATAIGUALEMISSAO: TBCDField
      FieldName = 'DATAIGUALEMISSAO'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoIMPRIMEDUPLIC1PARCELA: TBCDField
      FieldName = 'IMPRIMEDUPLIC1PARCELA'
      Precision = 1
      Size = 0
    end
    object sqldtsCondPagtoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsImposto: TSQLDataSet
    CommandText = 
      'SELECT EF_IMPOSTO.IMPOSTOID, EF_IMPOSTO.VLRALIQUOTA, EF_IMPOSTO.' +
      'USUARIO'#13#10'  FROM EF_IMPOSTO EF_IMPOSTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 253
    object sqldtsImpostoIMPOSTOID: TStringField
      FieldName = 'IMPOSTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsImpostoVLRALIQUOTA: TFMTBCDField
      FieldName = 'VLRALIQUOTA'
      Precision = 8
      Size = 6
    end
    object sqldtsImpostoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsGrupo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_GRUPO.GRUPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO,'#13#10'  EF_GRUPO.' +
      'DESCRICAO,'#13#10'  EF_GRUPO.USUARIO'#13#10'  FROM'#13#10'  EF_GRUPO EF_GRUPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 295
    object sqldtsGrupoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsGrupoSIGLAGRUPO: TStringField
      FieldName = 'SIGLAGRUPO'
      Size = 50
    end
    object sqldtsGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsGrupoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsSubGrupo: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_SUBGRUPO.SUBGRUPOID,'#13#10'  EF_SUBGRUPO.TIPO,'#13#10'  EF_SUB' +
      'GRUPO.SIGLAGRUPO,'#13#10'  EF_SUBGRUPO.DESCRICAO,'#13#10'  EF_SUBGRUPO.USUAR' +
      'IO'#13#10'  FROM'#13#10'  EF_SUBGRUPO EF_SUBGRUPO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 339
    object sqldtsSubGrupoSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsSubGrupoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sqldtsSubGrupoSIGLAGRUPO: TStringField
      FieldName = 'SIGLAGRUPO'
      Size = 5
    end
    object sqldtsSubGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsSubGrupoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsOpPrestInterestadual: TSQLDataSet
    CommandText = 
      'SELECT EF_OPPRESTINTERESTADUAL.ORIGEMUFID,'#13#10'       CP_UF_ORIGEM.' +
      'NOMEUF L_DESCRICAOORIGEM,'#13#10'       EF_OPPRESTINTERESTADUAL.DESTIN' +
      'OUFID,'#13#10'       CP_UF_DESTINO.NOMEUF L_DESCRICAODESTINO,'#13#10'       ' +
      'EF_OPPRESTINTERESTADUAL.INTERNACIONAL,'#13#10'       EF_OPPRESTINTERES' +
      'TADUAL.ALIQUOTAICMSCONTRIB,'#13#10'       EF_OPPRESTINTERESTADUAL.ALIQ' +
      'UOTAICMSNAOCONTRIB,'#13#10'       EF_OPPRESTINTERESTADUAL.USUARIO'#13#10'  F' +
      'ROM EF_OPPRESTINTERESTADUAL,'#13#10'       CP_UNIDADESFEDERACAO CP_UF_' +
      'ORIGEM,'#13#10'       CP_UNIDADESFEDERACAO CP_UF_DESTINO       '#13#10' WHER' +
      'E CP_UF_ORIGEM.SIGLAUFID(+) = EF_OPPRESTINTERESTADUAL.ORIGEMUFID' +
      ' AND'#13#10'       CP_UF_DESTINO.SIGLAUFID(+) = EF_OPPRESTINTERESTADUA' +
      'L.DESTINOUFID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 381
    object sqldtsOpPrestInterestadualORIGEMUFID: TStringField
      FieldName = 'ORIGEMUFID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sqldtsOpPrestInterestadualL_DESCRICAOORIGEM: TStringField
      FieldName = 'L_DESCRICAOORIGEM'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsOpPrestInterestadualDESTINOUFID: TStringField
      FieldName = 'DESTINOUFID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 2
    end
    object sqldtsOpPrestInterestadualL_DESCRICAODESTINO: TStringField
      FieldName = 'L_DESCRICAODESTINO'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsOpPrestInterestadualINTERNACIONAL: TBCDField
      FieldName = 'INTERNACIONAL'
      Precision = 1
      Size = 0
    end
    object sqldtsOpPrestInterestadualALIQUOTAICMSCONTRIB: TFMTBCDField
      FieldName = 'ALIQUOTAICMSCONTRIB'
      Precision = 14
      Size = 6
    end
    object sqldtsOpPrestInterestadualALIQUOTAICMSNAOCONTRIB: TFMTBCDField
      FieldName = 'ALIQUOTAICMSNAOCONTRIB'
      Precision = 14
      Size = 6
    end
    object sqldtsOpPrestInterestadualUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsUnidade: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_UNIDADE.UNIDADEID,'#13#10'  EF_UNIDADE.DESCRICAO,'#13#10'  EF_U' +
      'NIDADE.USUARIO'#13#10'  FROM'#13#10'  EF_UNIDADE EF_UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 424
    object sqldtsUnidadeUNIDADEID: TStringField
      FieldName = 'UNIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 5
    end
    object sqldtsUnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsUnidadeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsTecWin: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_TECWIN.NCMID,'#13#10'  EF_TECWIN.DESCRICAO,'#13#10'  EF_TECWIN.' +
      'ALIQUOTAII,'#13#10'  EF_TECWIN.ALIQUOTAIPI,'#13#10'  EF_TECWIN.ISENTOIPI,'#13#10' ' +
      ' EF_TECWIN.SITTRIBISENTO,'#13#10'  EF_TECWIN.ARTIGOISENTO,'#13#10'  EF_TECWI' +
      'N.SUSPENSAOIPI,'#13#10'  EF_TECWIN.SITTRIBSUSPENSAO,'#13#10'  EF_TECWIN.ARTI' +
      'GOSUSPENSAO,'#13#10'  EF_TECWIN.TRIBUTADO,'#13#10'  EF_TECWIN.SITTRIBTRIBUTA' +
      'DO,'#13#10'  EF_TECWIN.ARTIGOTRIBUTADO,'#13#10'  EF_TECWIN.SITTRIBNAOTRIBUTA' +
      'DO,'#13#10'  EF_TECWIN.ARTIGONAOTRIBUTADO,'#13#10'  EF_TECWIN.DATAINICIALIPI' +
      ','#13#10'  EF_TECWIN.DATAFINALIPI,'#13#10'  EF_TECWIN.DATAINICIALII,'#13#10'  EF_T' +
      'ECWIN.DATAFINALII,'#13#10'  EF_TECWIN.ALIQUOTATEMPIPI,'#13#10'  EF_TECWIN.AL' +
      'IQUOTATEMPII,'#13#10'  EF_TECWIN.INCENTIVOICMS,'#13#10'  EF_TECWIN.USUARIO'#13#10 +
      '  FROM'#13#10'  EF_TECWIN EF_TECWIN'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 466
    object sqldtsTecWinNCMID: TStringField
      FieldName = 'NCMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object sqldtsTecWinDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 300
    end
    object sqldtsTecWinALIQUOTAII: TFMTBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 6
    end
    object sqldtsTecWinALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsTecWinISENTOIPI: TBCDField
      FieldName = 'ISENTOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsTecWinSITTRIBISENTO: TBCDField
      FieldName = 'SITTRIBISENTO'
      Precision = 8
      Size = 0
    end
    object sqldtsTecWinARTIGOISENTO: TStringField
      FieldName = 'ARTIGOISENTO'
      Size = 200
    end
    object sqldtsTecWinSUSPENSAOIPI: TBCDField
      FieldName = 'SUSPENSAOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsTecWinSITTRIBSUSPENSAO: TBCDField
      FieldName = 'SITTRIBSUSPENSAO'
      Precision = 8
      Size = 0
    end
    object sqldtsTecWinARTIGOSUSPENSAO: TStringField
      FieldName = 'ARTIGOSUSPENSAO'
      Size = 200
    end
    object sqldtsTecWinTRIBUTADO: TBCDField
      FieldName = 'TRIBUTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsTecWinSITTRIBTRIBUTADO: TBCDField
      FieldName = 'SITTRIBTRIBUTADO'
      Precision = 8
      Size = 0
    end
    object sqldtsTecWinARTIGOTRIBUTADO: TStringField
      FieldName = 'ARTIGOTRIBUTADO'
      Size = 200
    end
    object sqldtsTecWinSITTRIBNAOTRIBUTADO: TBCDField
      FieldName = 'SITTRIBNAOTRIBUTADO'
      Precision = 8
      Size = 0
    end
    object sqldtsTecWinARTIGONAOTRIBUTADO: TStringField
      FieldName = 'ARTIGONAOTRIBUTADO'
      Size = 200
    end
    object sqldtsTecWinDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsTecWinDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsTecWinDATAINICIALII: TSQLTimeStampField
      FieldName = 'DATAINICIALII'
    end
    object sqldtsTecWinDATAFINALII: TSQLTimeStampField
      FieldName = 'DATAFINALII'
    end
    object sqldtsTecWinALIQUOTATEMPIPI: TFMTBCDField
      FieldName = 'ALIQUOTATEMPIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsTecWinALIQUOTATEMPII: TFMTBCDField
      FieldName = 'ALIQUOTATEMPII'
      Precision = 14
      Size = 6
    end
    object sqldtsTecWinINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsTecWinUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsReceita: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT EF_RECEITA.RECEITAID,'#13#10'       EF_RECEITA.SIGLA,'#13#10'       E' +
      'F_RECEITA.DESCRICAO,'#13#10'       EF_RECEITA.TIPORECEITA,'#13#10'       EF_' +
      'RECEITA.ORIGEM,'#13#10'       EF_RECEITA.SERVICOPRESTADOID,'#13#10'       EF' +
      '_RECEITA.IMPOSTOSERVQLDNATID,'#13#10'       EF_RECEITA.CONTACONTABILID' +
      ','#13#10'       EF_RECEITA.CENTROCUSTOID,'#13#10'       EF_RECEITA.RETENCAO1' +
      ','#13#10'       EF_RECEITA.RETENCAO2,'#13#10'       EF_RECEITA.RETENCAO3,'#13#10' ' +
      '      EF_RECEITA.RETENCAO4,'#13#10'       EF_RECEITA.USUARIO'#13#10'  FROM E' +
      'F_RECEITA EF_RECEITA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 389
    object sqldtsReceitaRECEITAID: TBCDField
      FieldName = 'RECEITAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsReceitaSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object sqldtsReceitaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsReceitaTIPORECEITA: TStringField
      FieldName = 'TIPORECEITA'
      Size = 1
    end
    object sqldtsReceitaORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object sqldtsReceitaCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsReceitaCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 10
    end
    object sqldtsReceitaSERVICOPRESTADOID: TFMTBCDField
      FieldName = 'SERVICOPRESTADOID'
      Precision = 32
    end
    object sqldtsReceitaIMPOSTOSERVQLDNATID: TStringField
      FieldName = 'IMPOSTOSERVQLDNATID'
      Size = 50
    end
    object sqldtsReceitaRETENCAO1: TBCDField
      FieldName = 'RETENCAO1'
      Precision = 1
      Size = 0
    end
    object sqldtsReceitaRETENCAO2: TBCDField
      FieldName = 'RETENCAO2'
      Precision = 1
      Size = 0
    end
    object sqldtsReceitaRETENCAO3: TBCDField
      FieldName = 'RETENCAO3'
      Precision = 1
      Size = 0
    end
    object sqldtsReceitaRETENCAO4: TBCDField
      FieldName = 'RETENCAO4'
      Precision = 1
      Size = 0
    end
    object sqldtsReceitaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsServico: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT EF_SERVICO.EMPRESAID,'#13#10'       EF_SERVICO.SERVICOID,'#13#10'    ' +
      '   EF_SERVICO.RECEITAID,'#13#10'       EF_RECEITA.SIGLA L_SIGLARECEITA' +
      ','#13#10'       EF_RECEITA.DESCRICAO L_DESCRICAORECEITA,'#13#10'       EF_SE' +
      'RVICO.DESCRICAORESUMIDA,'#13#10'       EF_SERVICO.DESCRICAOCOMPLETA,'#13#10 +
      '       EF_SERVICO.GRUPOID,'#13#10'       EF_GRUPO.SIGLAGRUPO L_SIGLAGR' +
      'UPO,'#13#10'       EF_GRUPO.DESCRICAO L_DESCRICAOGRUPO,'#13#10'       EF_SER' +
      'VICO.SUBGRUPOID,'#13#10'       EF_SUBGRUPO.DESCRICAO L_DESCRICAO_SUBGR' +
      'UPO,'#13#10'       EF_SERVICO.IMPOSTOSERVICOID,'#13#10'       EF_IMPOSTOSERV' +
      'ICO.ATIVIDADE L_ATIVIDADE,'#13#10'       EF_SERVICO.CALCULARPIS,'#13#10'    ' +
      '   EF_SERVICO.CALCULARCOFINS,'#13#10'       EF_SERVICO.ALIQUOTAISS,'#13#10' ' +
      '      EF_SERVICO.USUARIO'#13#10'  FROM EF_SERVICO EF_SERVICO,'#13#10'       ' +
      'EF_RECEITA EF_RECEITA,'#13#10'       EF_GRUPO EF_GRUPO,'#13#10'       EF_SUB' +
      'GRUPO,'#13#10'       EF_IMPOSTOSERVICO EF_IMPOSTOSERVICO'#13#10' WHERE EF_RE' +
      'CEITA.RECEITAID(+) = EF_SERVICO.RECEITAID'#13#10'       AND EF_GRUPO.G' +
      'RUPOID(+) = EF_SERVICO.GRUPOID'#13#10'       AND EF_SUBGRUPO.SUBGRUPOI' +
      'D(+) = EF_SERVICO.SUBGRUPOID'#13#10'       AND EF_IMPOSTOSERVICO.IMPOS' +
      'TOSERVICOID(+) = EF_SERVICO.IMPOSTOSERVICOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 390
    Top = 81
    object sqldtsServicoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsServicoRECEITAID: TBCDField
      FieldName = 'RECEITAID'
      Precision = 8
      Size = 0
    end
    object sqldtsServicoL_SIGLARECEITA: TStringField
      FieldName = 'L_SIGLARECEITA'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsServicoL_DESCRICAORECEITA: TStringField
      FieldName = 'L_DESCRICAORECEITA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsServicoDESCRICAORESUMIDA: TStringField
      FieldName = 'DESCRICAORESUMIDA'
      Size = 100
    end
    object sqldtsServicoDESCRICAOCOMPLETA: TMemoField
      FieldName = 'DESCRICAOCOMPLETA'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsServicoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsServicoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsServicoL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsServicoSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsServicoL_DESCRICAO_SUBGRUPO: TStringField
      FieldName = 'L_DESCRICAO_SUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsServicoIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsServicoL_ATIVIDADE: TStringField
      FieldName = 'L_ATIVIDADE'
      ProviderFlags = []
      Size = 300
    end
    object sqldtsServicoCALCULARPIS: TBCDField
      FieldName = 'CALCULARPIS'
      Precision = 1
      Size = 0
    end
    object sqldtsServicoCALCULARCOFINS: TBCDField
      FieldName = 'CALCULARCOFINS'
      Precision = 1
      Size = 0
    end
    object sqldtsServicoALIQUOTAISS: TFMTBCDField
      FieldName = 'ALIQUOTAISS'
      Precision = 14
      Size = 6
    end
    object sqldtsServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsProduto: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT EF_PRODUTO.EMPRESAID,'#13#10'       EF_EMPRESA.NOMEFANTASIA L_N' +
      'OMEFANTASIA,'#13#10'       EF_PRODUTO.PRODUTOID,'#13#10'       EF_PRODUTO.OR' +
      'IGEM,'#13#10'       EF_PRODUTO.ATIVO,'#13#10'       EF_PRODUTO.NOVOUSADO,'#13#10' ' +
      '      EF_PRODUTO.GRUPOID,'#13#10'       EF_GRUPO.SIGLAGRUPO L_SIGLAGRU' +
      'PO,'#13#10'       EF_GRUPO.DESCRICAO AS L_DESCRICAO_GRUPO,'#13#10'       EF_' +
      'PRODUTO.SUBGRUPOID,'#13#10'       EF_SUBGRUPO.DESCRICAO AS L_DESCRICAO' +
      '_SUBGRUPO,'#13#10'       EF_PRODUTO.PARTNUMBERID,'#13#10'       EF_PRODUTO.D' +
      'ESCRICAOPORTUGUES,'#13#10'       EF_PRODUTO.DESCRICAOINGLES,'#13#10'       E' +
      'F_PRODUTO.FORNECEDORID,'#13#10'       EF_ENTIDADE.NOME L_NOMEFORNECEDO' +
      'R,'#13#10'       EF_PRODUTO.TIPOITEMID,'#13#10'       EF_TIPOITEM.DESCRICAO ' +
      'L_DESCRICAOTIPOITEM,'#13#10'       EF_PRODUTO.GENEROITEMID,'#13#10'       EF' +
      '_GENEROITEM.DESCRICAO L_DESCRICAOGENEROITEM,'#13#10'       EF_PRODUTO.' +
      'GERACODBARRA,'#13#10'       EF_PRODUTO.LOCALIZACAO,'#13#10'       EF_PRODUTO' +
      '.UNIDADEID,'#13#10'       EF_UNIDADE.DESCRICAO L_DESCRICAOUNIDADE,'#13#10'  ' +
      '     EF_PRODUTO.PESO,'#13#10'       EF_PRODUTO.CUBAGEM,'#13#10'       EF_PRO' +
      'DUTO.APLICACAO,'#13#10'       EF_PRODUTO.MODELOID,'#13#10'       EF_PRODUTO.' +
      'OBSERVACAO,'#13#10'       EF_PRODUTO.EMPRESASIMILARID,'#13#10'       EF_EMPR' +
      'ESA.NOMEFANTASIA L_NOMEFANTASIASIMILAR,'#13#10'       EF_PRODUTO.PRODU' +
      'TOSIMILARID,'#13#10'       EF_PROD_SIMILAR.DESCRICAOPORTUGUES L_DESCRI' +
      'CAOPORTUGUES,'#13#10'       EF_PRODUTO.NCMID,'#13#10'       EF_PRODUTO.DESCR' +
      'ICAONCM,'#13#10'       EF_PRODUTO.INCENTIVOICMS,'#13#10'       EF_PRODUTO.RE' +
      'DUCAOICMS,'#13#10'       EF_PRODUTO.ALIQUOTAII,'#13#10'       EF_PRODUTO.DAT' +
      'AINICIALII,'#13#10'       EF_PRODUTO.DATAFINALII,'#13#10'       EF_PRODUTO.A' +
      'LIQUOTAIPI,'#13#10'       EF_PRODUTO.DATAINICIALIPI,'#13#10'       EF_PRODUT' +
      'O.DATAFINALIPI,'#13#10'       EF_PRODUTO.SUSPENSAOIPI,'#13#10'       EF_PROD' +
      'UTO.ISENTOIPI,'#13#10'       EF_PRODUTO.CONTACTBATIVO,'#13#10'       EF_PROD' +
      'UTO.CONTACTBDESPESA,'#13#10'       EF_PRODUTO.CONTACTBRECEITA,'#13#10'      ' +
      ' EF_PRODUTO.CUSTOMEDIOUS,'#13#10'       EF_PRODUTO.CUSTOMEDIO,'#13#10'      ' +
      ' EF_PRODUTO.CUSTOTOTAL,'#13#10'       EF_PRODUTO.PRECOVENDA,'#13#10'       E' +
      'F_PRODUTO.PRECOVENDAMINIMO,'#13#10'       EF_PRODUTO.VLRFOB,'#13#10'       E' +
      'F_PRODUTO.VLRFOBUS,'#13#10'       EF_PRODUTO.ESTOQUENOVO,'#13#10'       EF_P' +
      'RODUTO.ESTOQUEREVISADO,'#13#10'       EF_PRODUTO.ESTOQUEDEMO,'#13#10'       ' +
      'EF_PRODUTO.ESTOQUEFISICO,'#13#10'       EF_PRODUTO.ESTOQUEPEDENTRADA,'#13 +
      #10'       EF_PRODUTO.ESTOQUEPEDSAIDA,'#13#10'       EF_PRODUTO.ESTOQUEEM' +
      'TERCEIRO,'#13#10'       EF_PRODUTO.ESTOQUEDETERCEIRO,'#13#10'       EF_PRODU' +
      'TO.ESTOQUEMINIMO,'#13#10'       EF_PRODUTO.ESTOQUEEMPENHO,'#13#10'       EF_' +
      'PRODUTO.ESTOQUEVALE,'#13#10'       EF_PRODUTO.ESTOQUEESTORNO,'#13#10'       ' +
      'EF_PRODUTO.ESTOQUEQUARENTENA,'#13#10'       EF_PRODUTO.ESTOQUERESERVA,' +
      #13#10'       EF_PRODUTO.ESTOQUETOTAL,'#13#10'       EF_PRODUTO.NCM2ID,'#13#10'  ' +
      '     EF_PRODUTO.NCM3ID,'#13#10'       EF_PRODUTO.DATANCM,'#13#10'       EF_P' +
      'RODUTO.DATANCM2,'#13#10'       EF_PRODUTO.DATANCM3,'#13#10'       EF_PRODUTO' +
      '.ALIQUOTATEMPIPI,'#13#10'       EF_PRODUTO.ALIQUOTATEMPII,'#13#10'       EF_' +
      'PRODUTO.USUARIO'#13#10'  FROM EF_PRODUTO EF_PRODUTO,'#13#10'       EF_EMPRES' +
      'A,'#13#10'       EF_EMPRESA EF_EMPRESA_SIMILAR,'#13#10'       EF_GRUPO EF_GR' +
      'UPO,'#13#10'       EF_SUBGRUPO EF_SUBGRUPO,'#13#10'       EF_ENTIDADE,'#13#10'    ' +
      '   EF_UNIDADE,'#13#10'       EF_PRODUTO EF_PROD_SIMILAR,'#13#10'       GSI.E' +
      'F_TIPOITEM,'#13#10'       GSI.EF_GENEROITEM'#13#10' WHERE EF_PRODUTO.EMPRESA' +
      'ID = EF_EMPRESA.EMPRESAID(+)'#13#10'       AND EF_PRODUTO.GRUPOID = EF' +
      '_GRUPO.GRUPOID (+)'#13#10'       AND EF_PRODUTO.SUBGRUPOID = EF_SUBGRU' +
      'PO.SUBGRUPOID (+)'#13#10'       AND EF_PRODUTO.FORNECEDORID = EF_ENTID' +
      'ADE.ENTIDADEID (+)'#13#10'       AND EF_PRODUTO.UNIDADEID = EF_UNIDADE' +
      '.UNIDADEID (+)'#13#10'       AND EF_PRODUTO.EMPRESASIMILARID = EF_PROD' +
      '_SIMILAR.EMPRESAID(+)'#13#10'       AND EF_PRODUTO.PRODUTOSIMILARID = ' +
      'EF_PROD_SIMILAR.PRODUTOID(+)'#13#10'       AND EF_PRODUTO.EMPRESASIMIL' +
      'ARID = EF_EMPRESA_SIMILAR.EMPRESAID(+)'#13#10'       AND EF_TIPOITEM.T' +
      'IPOITEMID(+) = EF_PRODUTO.TIPOITEMID'#13#10'       AND EF_GENEROITEM.G' +
      'ENEROITEMID(+) = EF_PRODUTO.GENEROITEMID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 392
    Top = 121
    object sqldtsProdutoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsProdutoPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 1
    end
    object sqldtsProdutoATIVO: TBCDField
      FieldName = 'ATIVO'
      Precision = 1
      Size = 0
    end
    object sqldtsProdutoNOVOUSADO: TStringField
      FieldName = 'NOVOUSADO'
      Size = 1
    end
    object sqldtsProdutoGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsProdutoL_DESCRICAO_GRUPO: TStringField
      FieldName = 'L_DESCRICAO_GRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProdutoSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_DESCRICAO_SUBGRUPO: TStringField
      FieldName = 'L_DESCRICAO_SUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProdutoPARTNUMBERID: TStringField
      FieldName = 'PARTNUMBERID'
    end
    object sqldtsProdutoDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object sqldtsProdutoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object sqldtsProdutoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProdutoTIPOITEMID: TBCDField
      FieldName = 'TIPOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_DESCRICAOTIPOITEM: TStringField
      FieldName = 'L_DESCRICAOTIPOITEM'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsProdutoGENEROITEMID: TBCDField
      FieldName = 'GENEROITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_DESCRICAOGENEROITEM: TStringField
      FieldName = 'L_DESCRICAOGENEROITEM'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsProdutoGERACODBARRA: TBCDField
      FieldName = 'GERACODBARRA'
      Precision = 1
      Size = 0
    end
    object sqldtsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object sqldtsProdutoUNIDADEID: TStringField
      FieldName = 'UNIDADEID'
      Size = 3
    end
    object sqldtsProdutoL_DESCRICAOUNIDADE: TStringField
      FieldName = 'L_DESCRICAOUNIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProdutoPESO: TFMTBCDField
      FieldName = 'PESO'
      Precision = 14
      Size = 6
    end
    object sqldtsProdutoCUBAGEM: TFMTBCDField
      FieldName = 'CUBAGEM'
      Precision = 14
      Size = 6
    end
    object sqldtsProdutoAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 30
    end
    object sqldtsProdutoMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsProdutoEMPRESASIMILARID: TBCDField
      FieldName = 'EMPRESASIMILARID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_NOMEFANTASIASIMILAR: TStringField
      FieldName = 'L_NOMEFANTASIASIMILAR'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsProdutoPRODUTOSIMILARID: TBCDField
      FieldName = 'PRODUTOSIMILARID'
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProdutoNCMID: TStringField
      FieldName = 'NCMID'
      Size = 10
    end
    object sqldtsProdutoDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Size = 300
    end
    object sqldtsProdutoINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsProdutoREDUCAOICMS: TFMTBCDField
      FieldName = 'REDUCAOICMS'
      Precision = 8
      Size = 6
    end
    object sqldtsProdutoALIQUOTAII: TFMTBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 6
    end
    object sqldtsProdutoDATAINICIALII: TSQLTimeStampField
      FieldName = 'DATAINICIALII'
    end
    object sqldtsProdutoDATAFINALII: TSQLTimeStampField
      FieldName = 'DATAFINALII'
    end
    object sqldtsProdutoALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsProdutoDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsProdutoDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsProdutoSUSPENSAOIPI: TBCDField
      FieldName = 'SUSPENSAOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsProdutoISENTOIPI: TBCDField
      FieldName = 'ISENTOIPI'
      Precision = 1
      Size = 0
    end
    object sqldtsProdutoCONTACTBATIVO: TStringField
      FieldName = 'CONTACTBATIVO'
      Size = 10
    end
    object sqldtsProdutoCONTACTBDESPESA: TStringField
      FieldName = 'CONTACTBDESPESA'
      Size = 10
    end
    object sqldtsProdutoCONTACTBRECEITA: TStringField
      FieldName = 'CONTACTBRECEITA'
      Size = 10
    end
    object sqldtsProdutoCUSTOMEDIOUS: TBCDField
      FieldName = 'CUSTOMEDIOUS'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoCUSTOTOTAL: TBCDField
      FieldName = 'CUSTOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoPRECOVENDAMINIMO: TBCDField
      FieldName = 'PRECOVENDAMINIMO'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      Precision = 14
      Size = 2
    end
    object sqldtsProdutoESTOQUENOVO: TBCDField
      FieldName = 'ESTOQUENOVO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEREVISADO: TBCDField
      FieldName = 'ESTOQUEREVISADO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEDEMO: TBCDField
      FieldName = 'ESTOQUEDEMO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEPEDENTRADA: TBCDField
      FieldName = 'ESTOQUEPEDENTRADA'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEPEDSAIDA: TBCDField
      FieldName = 'ESTOQUEPEDSAIDA'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'ESTOQUEEMTERCEIRO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEDETERCEIRO: TBCDField
      FieldName = 'ESTOQUEDETERCEIRO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEEMPENHO: TBCDField
      FieldName = 'ESTOQUEEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEVALE: TBCDField
      FieldName = 'ESTOQUEVALE'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEESTORNO: TBCDField
      FieldName = 'ESTOQUEESTORNO'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUERESERVA: TBCDField
      FieldName = 'ESTOQUERESERVA'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoESTOQUETOTAL: TBCDField
      FieldName = 'ESTOQUETOTAL'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoNCM2ID: TStringField
      FieldName = 'NCM2ID'
      Size = 10
    end
    object sqldtsProdutoNCM3ID: TStringField
      FieldName = 'NCM3ID'
      Size = 10
    end
    object sqldtsProdutoDATANCM: TSQLTimeStampField
      FieldName = 'DATANCM'
    end
    object sqldtsProdutoDATANCM2: TSQLTimeStampField
      FieldName = 'DATANCM2'
    end
    object sqldtsProdutoDATANCM3: TSQLTimeStampField
      FieldName = 'DATANCM3'
    end
    object sqldtsProdutoALIQUOTATEMPIPI: TFMTBCDField
      FieldName = 'ALIQUOTATEMPIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsProdutoALIQUOTATEMPII: TFMTBCDField
      FieldName = 'ALIQUOTATEMPII'
      Precision = 14
      Size = 6
    end
    object sqldtsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsProdutoItem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PRODUTOITEM.EMPRESAID,'#13#10'  EF_PRODUTOITEM.PRODUTOID,' +
      #13#10'  EF_PRODUTOITEM.PRODUTOITEMID,'#13#10'  EF_PRODUTOITEM.DATAENTRADA,' +
      #13#10'  EF_PRODUTOITEM.CODIGOBARRA,'#13#10'  EF_PRODUTOITEM.SERIEID,'#13#10'  EF' +
      '_PRODUTOITEM.REVISAO,'#13#10'  EF_PRODUTOITEM.DATAULTIMAREVISAO,'#13#10'  EF' +
      '_PRODUTOITEM.TIPOPRODUTO,'#13#10'  EF_PRODUTOITEM.QUANTIDADE,'#13#10'  EF_PR' +
      'ODUTOITEM.QTDUTILIZADA,'#13#10'  EF_PRODUTOITEM.STATUS,'#13#10'  EF_PRODUTOI' +
      'TEM.INCENTIVOICMS,'#13#10'  EF_PRODUTOITEM.NCMID,'#13#10'  EF_PRODUTOITEM.DA' +
      'TANCM,'#13#10'  EF_PRODUTOITEM.OBSERVACAO,'#13#10'  EF_PRODUTOITEM.USUARIO'#13#10 +
      '  FROM'#13#10'  EF_PRODUTOITEM EF_PRODUTOITEM'#13#10' WHERE'#13#10'  EF_PRODUTOITE' +
      'M.EMPRESAID = :EMPRESAID'#13#10'  AND EF_PRODUTOITEM.PRODUTOID = :PROD' +
      'UTOID'
    DataSource = dsProdutoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'PRODUTOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 392
    Top = 164
    object sqldtsProdutoItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoItemPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProdutoItemDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
    end
    object sqldtsProdutoItemCODIGOBARRA: TStringField
      FieldName = 'CODIGOBARRA'
      Size = 15
    end
    object sqldtsProdutoItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsProdutoItemREVISAO: TBCDField
      FieldName = 'REVISAO'
      Precision = 2
      Size = 0
    end
    object sqldtsProdutoItemDATAULTIMAREVISAO: TSQLTimeStampField
      FieldName = 'DATAULTIMAREVISAO'
    end
    object sqldtsProdutoItemTIPOPRODUTO: TStringField
      FieldName = 'TIPOPRODUTO'
      Size = 1
    end
    object sqldtsProdutoItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoItemQTDUTILIZADA: TBCDField
      FieldName = 'QTDUTILIZADA'
      Precision = 8
      Size = 2
    end
    object sqldtsProdutoItemSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sqldtsProdutoItemINCENTIVOICMS: TBCDField
      FieldName = 'INCENTIVOICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsProdutoItemNCMID: TStringField
      FieldName = 'NCMID'
      Size = 10
    end
    object sqldtsProdutoItemDATANCM: TSQLTimeStampField
      FieldName = 'DATANCM'
    end
    object sqldtsProdutoItemOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsProdutoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvCategoria: TDataSetProvider
    DataSet = sqldtsCategoria
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 65535
  end
  object dsprvEntidade: TDataSetProvider
    DataSet = sqldtsEntidade
    Options = [poCascadeDeletes, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 40
  end
  object dsEntidadeLink: TDataSource
    DataSet = sqldtsEntidade
    Left = 319
    Top = 81
  end
  object dsprvBanco: TDataSetProvider
    DataSet = sqldtsBanco
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 170
  end
  object dsprvCondPagto: TDataSetProvider
    DataSet = sqldtsCondPagto
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 212
  end
  object dsprvImposto: TDataSetProvider
    DataSet = sqldtsImposto
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 253
  end
  object dsprvGrupo: TDataSetProvider
    DataSet = sqldtsGrupo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 295
  end
  object dsprvSubGrupo: TDataSetProvider
    DataSet = sqldtsSubGrupo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 339
  end
  object dsprvOpPrestInterestadual: TDataSetProvider
    DataSet = sqldtsOpPrestInterestadual
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 381
  end
  object dsprvUnidade: TDataSetProvider
    DataSet = sqldtsUnidade
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 424
  end
  object dsprvTecWin: TDataSetProvider
    DataSet = sqldtsTecWin
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 319
    Top = 466
  end
  object dsprvReceita: TDataSetProvider
    DataSet = sqldtsReceita
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 501
  end
  object dsprvServico: TDataSetProvider
    DataSet = sqldtsServico
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 501
    Top = 81
  end
  object dsprvProduto: TDataSetProvider
    DataSet = sqldtsProduto
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 501
    Top = 121
  end
  object sqldtsKardex: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_KARDEX.EMPRESAID,'#13#10'  EF_KARDEX.KARDEXID,'#13#10'  EF_KARD' +
      'EX.DATAOCORRENCIA,'#13#10'  EF_KARDEX.NUMDOCUMENTO,'#13#10'  EF_KARDEX.TIPOD' +
      'OCUMENTO,'#13#10'  EF_KARDEX.TIPOESTOQUE,'#13#10'  EF_KARDEX.OSID,'#13#10'  EF_KAR' +
      'DEX.DIID,'#13#10'  EF_KARDEX.NATUREZAOPID,'#13#10'  EF_NATUREZAOP.CFOP AS L_' +
      'CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO AS L_DESCRICAOOP' +
      'ERACAOUSUARIO,'#13#10'  EF_KARDEX.TIPOOPERACAO,'#13#10'  EF_KARDEX.ITEMID,'#13#10 +
      '  EF_KARDEX.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUES AS L_DES' +
      'CRICAOPORTUGUES,'#13#10'  EF_KARDEX.QUANTIDADE,'#13#10'  EF_KARDEX.VLRCUSTOU' +
      'NITARIO,'#13#10'  EF_KARDEX.VLRCUSTOTOTAL,'#13#10'  EF_KARDEX.QUANTIDADESALD' +
      'O,'#13#10'  EF_KARDEX.VLRCUSTOMEDIO,'#13#10'  EF_KARDEX.VLRCUSTOMEDIOTOTAL,'#13 +
      #10'  EF_KARDEX.VLRCUSTOMEDIOANTERIOR,'#13#10'  EF_KARDEX.ESTOQUENOVO,'#13#10' ' +
      ' EF_KARDEX.ESTOQUEREVISADO,'#13#10'  EF_KARDEX.ESTOQUEFISICO,'#13#10'  EF_KA' +
      'RDEX.ESTOQUEPEDENTRADA,'#13#10'  EF_KARDEX.ESTOQUEPEDSAIDA,'#13#10'  EF_KARD' +
      'EX.ESTOQUEEMTERCEIRO,'#13#10'  EF_KARDEX.ESTOQUEDETERCEIRO,'#13#10'  EF_KARD' +
      'EX.ESTOQUEMINIMO,'#13#10'  EF_KARDEX.ESTOQUEEMPENHO,'#13#10'  EF_KARDEX.ESTO' +
      'QUEVALE,'#13#10'  EF_KARDEX.ESTOQUEESTORNO,'#13#10'  EF_KARDEX.ESTOQUEQUAREN' +
      'TENA,'#13#10'  EF_KARDEX.ESTOQUETOTAL,'#13#10'  EF_KARDEX.USUARIO'#13#10'  FROM'#13#10' ' +
      ' EF_KARDEX EF_KARDEX,'#13#10'  EF_NATUREZAOP EF_NATUREZAOP,'#13#10'  EF_PROD' +
      'UTO EF_PRODUTO'#13#10' WHERE'#13#10'  EF_NATUREZAOP.NATUREZAOPID (+) = EF_KA' +
      'RDEX.NATUREZAOPID'#13#10'  AND EF_PRODUTO.EMPRESAID (+) = EF_KARDEX.EM' +
      'PRESAID'#13#10'  AND EF_PRODUTO.PRODUTOID (+) = EF_KARDEX.PRODUTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 394
    Top = 210
    object sqldtsKardexEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsKardexKARDEXID: TBCDField
      FieldName = 'KARDEXID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsKardexDATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'DATAOCORRENCIA'
    end
    object sqldtsKardexNUMDOCUMENTO: TBCDField
      FieldName = 'NUMDOCUMENTO'
      Precision = 8
      Size = 0
    end
    object sqldtsKardexTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      Size = 3
    end
    object sqldtsKardexTIPOESTOQUE: TStringField
      FieldName = 'TIPOESTOQUE'
      Size = 3
    end
    object sqldtsKardexOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsKardexDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsKardexNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsKardexL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsKardexL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsKardexTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      Size = 1
    end
    object sqldtsKardexITEMID: TBCDField
      FieldName = 'ITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsKardexPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsKardexL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsKardexQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexVLRCUSTOUNITARIO: TFMTBCDField
      FieldName = 'VLRCUSTOUNITARIO'
      Precision = 20
    end
    object sqldtsKardexVLRCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOTOTAL'
      Precision = 20
    end
    object sqldtsKardexQUANTIDADESALDO: TBCDField
      FieldName = 'QUANTIDADESALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsKardexVLRCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 20
    end
    object sqldtsKardexVLRCUSTOMEDIOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOTOTAL'
      Precision = 20
    end
    object sqldtsKardexVLRCUSTOMEDIOANTERIOR: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOANTERIOR'
      Precision = 20
    end
    object sqldtsKardexESTOQUENOVO: TBCDField
      FieldName = 'ESTOQUENOVO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEREVISADO: TBCDField
      FieldName = 'ESTOQUEREVISADO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEPEDENTRADA: TBCDField
      FieldName = 'ESTOQUEPEDENTRADA'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEPEDSAIDA: TBCDField
      FieldName = 'ESTOQUEPEDSAIDA'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'ESTOQUEEMTERCEIRO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEDETERCEIRO: TBCDField
      FieldName = 'ESTOQUEDETERCEIRO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEEMPENHO: TBCDField
      FieldName = 'ESTOQUEEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEVALE: TBCDField
      FieldName = 'ESTOQUEVALE'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEESTORNO: TBCDField
      FieldName = 'ESTOQUEESTORNO'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexESTOQUETOTAL: TBCDField
      FieldName = 'ESTOQUETOTAL'
      Precision = 8
      Size = 2
    end
    object sqldtsKardexUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPde: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDE.EMPRESAID,'#13#10'  EF_PDE.PDEID,'#13#10'  EF_PDE.DATAPEDID' +
      'O,'#13#10'  EF_PDE.DATAPREVISAO,'#13#10'  EF_PDE.DIID,'#13#10'  EF_PDE.DESCRICAOIM' +
      'PORTACAO,'#13#10'  EF_PDE.OSID,'#13#10'  EF_PDE.LIBCHEFIA,'#13#10'  EF_PDE.LIBCHEF' +
      'IANOME,'#13#10'  EF_PDE.LIBCHEFIADATA,'#13#10'  EF_PDE.LIBFINANCEIRO,'#13#10'  EF_' +
      'PDE.LIBFINANCEIRONOME,'#13#10'  EF_PDE.LIBFINANCEIRODATA,'#13#10'  EF_PDE.LI' +
      'BCONTABIL,'#13#10'  EF_PDE.LIBCONTABILNOME,'#13#10'  EF_PDE.LIBCONTABILDATA,' +
      #13#10'  EF_PDE.MOVIMENTAESTOQUE,'#13#10'  EF_PDE.NFEID,'#13#10'  EF_PDE.DATAEMIS' +
      'SAONFEID,'#13#10'  EF_PDE.DATAENTRADANFEID,'#13#10'  EF_PDE.MODELODOCFISCALI' +
      'D,'#13#10'  EF_MODELODOCFISCAL.MODELO L_MODELODOCFISCAL,'#13#10'  EF_PDE.SER' +
      'IE,'#13#10'  EF_PDE.NFSID,'#13#10'  EF_PDE.DATAEMISSAONFSID,'#13#10'  EF_PDE.TIPON' +
      'OTA,'#13#10'  EF_PDE.CATEGORIAID,'#13#10'  EF_PDE.ENTIDADEID,'#13#10'  EF_PDE.NOME' +
      ','#13#10'  EF_PDE.CEPID,'#13#10'  EF_PDE.NUMERO,'#13#10'  EF_PDE.COMPLEMENTO,'#13#10'  E' +
      'F_PDE.ENDERECO,'#13#10'  EF_PDE.BAIRRO,'#13#10'  EF_PDE.CIDADE,'#13#10'  EF_PDE.SI' +
      'GLAUFID,'#13#10'  EF_PDE.PAIS,'#13#10'  EF_PDE.CONTRIBUINTEICMS,'#13#10'  EF_PDE.N' +
      'ATUREZAOPID,'#13#10'  EF_NATUREZAOP.CFOP AS L_CFOP,'#13#10'  EF_NATUREZAOP.D' +
      'ESCRICAOOPERACAOUSUARIO AS L_DESCRICAOOPERACAOUSUARIO,'#13#10'  EF_PDE' +
      '.OBSERVACAOID,'#13#10'  EF_PDE.DESCRICAOOBSERVACAO,'#13#10'  EF_PDE.TRANSPOR' +
      'TADORID,'#13#10'  EF_ENTIDADE.NOME AS L_NOMETRANSPORTADOR,'#13#10'  EF_PDE.P' +
      'LACAVEICULO,'#13#10'  EF_PDE.MODALIDADEFRETE,'#13#10'  EF_PDE.VLRFRETE,'#13#10'  E' +
      'F_PDE.VLRSEGURO,'#13#10'  EF_PDE.VLRDESPESAACESSORIA,'#13#10'  EF_PDE.EMBQTD' +
      'VOLUMES,'#13#10'  EF_PDE.EMBNUMERO,'#13#10'  EF_PDE.EMBMARCA,'#13#10'  EF_PDE.EMBE' +
      'SPECIE,'#13#10'  EF_PDE.EMBPESOBRUTO,'#13#10'  EF_PDE.EMBPESOLIQUIDO,'#13#10'  EF_' +
      'PDE.VLRTOTALCOFINS,'#13#10'  EF_PDE.VLRTOTALPIS,'#13#10'  EF_PDE.VLRTOTALCRE' +
      'DCOFINS,'#13#10'  EF_PDE.VLRTOTALCREDPIS,'#13#10'  EF_PDE.VLRTOTALBASEICMS,'#13 +
      #10'  EF_PDE.VLRTOTALICMS,'#13#10'  EF_PDE.VLRTOTALISENTASICMS,'#13#10'  EF_PDE' +
      '.VLRTOTALOUTRASICMS,'#13#10'  EF_PDE.VLRTOTALBASEIPI,'#13#10'  EF_PDE.VLRTOT' +
      'ALIPI,'#13#10'  EF_PDE.VLRTOTALISENTASIPI,'#13#10'  EF_PDE.VLRTOTALOUTRASIPI' +
      ','#13#10'  EF_PDE.VLRTOTALPRODUTO,'#13#10'  EF_PDE.VLRTOTALNOTA,'#13#10'  EF_PDE.U' +
      'SUARIO'#13#10'  FROM'#13#10'  EF_PDE,'#13#10'  EF_ENTIDADE,'#13#10'  EF_NATUREZAOP,'#13#10'  E' +
      'F_MODELODOCFISCAL EF_MODELODOCFISCAL'#13#10' WHERE'#13#10'  EF_ENTIDADE.ENTI' +
      'DADEID (+) = EF_PDE.TRANSPORTADORID'#13#10'  AND EF_NATUREZAOP.NATUREZ' +
      'AOPID (+) = EF_PDE.NATUREZAOPID'#13#10'  AND EF_MODELODOCFISCAL.MODELO' +
      'DOCFISCALID(+) = EF_PDE.MODELODOCFISCALID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 592
    Top = 65535
    object sqldtsPdeEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdePDEID: TBCDField
      FieldName = 'PDEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsPdeDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object sqldtsPdeDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsPdeDESCRICAOIMPORTACAO: TMemoField
      FieldName = 'DESCRICAOIMPORTACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdeOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsPdeLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsPdeLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsPdeLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object sqldtsPdeLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object sqldtsPdeLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object sqldtsPdeLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object sqldtsPdeMOVIMENTAESTOQUE: TBCDField
      FieldName = 'MOVIMENTAESTOQUE'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsPdeDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object sqldtsPdeMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeL_MODELODOCFISCAL: TStringField
      FieldName = 'L_MODELODOCFISCAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sqldtsPdeNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object sqldtsPdeTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object sqldtsPdeCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsPdeCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 100
    end
    object sqldtsPdeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsPdeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsPdeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsPdeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsPdeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsPdePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsPdeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsPdeL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdeOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdeTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdePLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object sqldtsPdeMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object sqldtsPdeVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object sqldtsPdeEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object sqldtsPdeEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object sqldtsPdeEMBPESOBRUTO: TBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 8
      Size = 3
    end
    object sqldtsPdeEMBPESOLIQUIDO: TBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 8
      Size = 3
    end
    object sqldtsPdeVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALCREDCOFINS: TBCDField
      FieldName = 'VLRTOTALCREDCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALCREDPIS: TBCDField
      FieldName = 'VLRTOTALCREDPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPdeItem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDEITEM.EMPRESAID,'#13#10'  EF_PDEITEM.PDEID,'#13#10'  EF_PDEIT' +
      'EM.ITEMID,'#13#10'  EF_PDEITEM.NATUREZAOPID,'#13#10'  EF_NATUREZAOP.CFOP AS ' +
      'L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO AS L_DESCRICAO' +
      'OPERACAOUSUARIO,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAONOTA AS L_DES' +
      'CRICAOOPERACAONOTA,'#13#10'  EF_PDEITEM.OBSERVACAOID,'#13#10'  EF_PDEITEM.DE' +
      'SCRICAOOBSERVACAO,'#13#10'  EF_PDEITEM.PRODUTOID,'#13#10'  EF_PDEITEM.DESCRI' +
      'CAOPRODUTO,'#13#10'  EF_PDEITEM.QUANTIDADE,'#13#10'  EF_PDEITEM.VLRPRECOUNIT' +
      'ARIO,'#13#10'  EF_PDEITEM.VLRPRECOTOTAL,'#13#10'  EF_PDEITEM.NFSID,  '#13#10'  EF_' +
      'PDEITEM.DATAEMISSAONFSID,'#13#10'  EF_PDEITEM.EMPENHO,'#13#10'  EF_PDEITEM.Q' +
      'UANTIDADEEMPENHO,'#13#10'  EF_PDEITEM.RETORNO,'#13#10'  EF_PDEITEM.QTDRETORN' +
      'A,'#13#10'  EF_PDEITEM.VLRBASEICMS,'#13#10'  EF_PDEITEM.ALIQUOTAICMS,'#13#10'  EF_' +
      'PDEITEM.VLRICMS,'#13#10'  EF_PDEITEM.VLRISENTASICMS,'#13#10'  EF_PDEITEM.VLR' +
      'OUTRASICMS,'#13#10'  EF_PDEITEM.PORCREDUCAOICMS,'#13#10'  EF_PDEITEM.SITTRIB' +
      'UTARIAESTADUAL,'#13#10'  EF_PDEITEM.ALIQUOTACOFINS,'#13#10'  EF_PDEITEM.VLRC' +
      'OFINS,'#13#10'  EF_PDEITEM.VLRCREDCOFINS,'#13#10'  EF_PDEITEM.ALIQUOTAPIS,'#13#10 +
      '  EF_PDEITEM.VLRPIS,'#13#10'  EF_PDEITEM.VLRCREDPIS,'#13#10'  EF_PDEITEM.VLR' +
      'BASEIPI,'#13#10'  EF_PDEITEM.ALIQUOTAIPI,'#13#10'  EF_PDEITEM.VLRIPI,'#13#10'  EF_' +
      'PDEITEM.VLRISENTASIPI,'#13#10'  EF_PDEITEM.VLROUTRASIPI,'#13#10'  EF_PDEITEM' +
      '.TIPOIPI,'#13#10'  EF_PDEITEM.SITTRIBUTARIAFEDERAL,'#13#10'  EF_PDEITEM.ARTI' +
      'GO,'#13#10'  EF_PDEITEM.DATAINICIALIPI,'#13#10'  EF_PDEITEM.DATAFINALIPI,'#13#10' ' +
      ' EF_PDEITEM.PRODINCENTIVADO,'#13#10'  EF_PDEITEM.USUARIO'#13#10'  FROM'#13#10'  EF' +
      '_PDEITEM EF_PDEITEM,'#13#10'  EF_NATUREZAOP EF_NATUREZAOP'#13#10' WHERE'#13#10'  E' +
      'F_PDEITEM.EMPRESAID = :EMPRESAID'#13#10'  AND EF_PDEITEM.PDEID = :PDEI' +
      'D'#13#10'  AND EF_NATUREZAOP.NATUREZAOPID(+) = EF_PDEITEM.NATUREZAOPID'
    DataSource = dsPdeLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'PDEID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 592
    Top = 40
    object sqldtsPdeItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemPDEID: TBCDField
      FieldName = 'PDEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsPdeItemL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdeItemL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdeItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdeItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsPdeItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsPdeItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object sqldtsPdeItemEMPENHO: TBCDField
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeItemQUANTIDADEEMPENHO: TBCDField
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsPdeItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object sqldtsPdeItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object sqldtsPdeItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsPdeItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object sqldtsPdeItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsPdeItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLRCREDCOFINS: TBCDField
      FieldName = 'VLRCREDCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsPdeItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLRCREDPIS: TBCDField
      FieldName = 'VLRCREDPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsPdeItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdeItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object sqldtsPdeItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object sqldtsPdeItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsPdeItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsPdeItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object sqldtsPdeItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPds: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT EF_PDS.EMPRESAID,'#13#10'       EF_PDS.PDSID,'#13#10'       EF_PDS.DA' +
      'TAPEDIDO,'#13#10'       EF_PDS.STATUS,'#13#10'       EF_PDS.PRENOTA,'#13#10'      ' +
      ' EF_PDS.DESCRICAOPRENOTA,'#13#10'       EF_PDS.OSID,'#13#10'       EF_PDS.LI' +
      'BCHEFIA,'#13#10'       EF_PDS.LIBCHEFIANOME,'#13#10'       EF_PDS.LIBCHEFIAD' +
      'ATA,'#13#10'       EF_PDS.LIBFINANCEIRO,'#13#10'       EF_PDS.LIBFINANCEIRON' +
      'OME,'#13#10'       EF_PDS.LIBFINANCEIRODATA,'#13#10'       EF_PDS.LIBCONTABI' +
      'L,'#13#10'       EF_PDS.LIBCONTABILNOME,'#13#10'       EF_PDS.LIBCONTABILDAT' +
      'A,'#13#10'       EF_PDS.NFEID,'#13#10'       EF_PDS.DATAEMISSAONFEID,'#13#10'     ' +
      '  EF_PDS.EMPRESANFSREFID,'#13#10'       EF_PDS.NFSREFID,'#13#10'       EF_PD' +
      'S.DATANFSREFID,       '#13#10'       EF_PDS.TIPONOTAENTRADA,'#13#10'       E' +
      'F_PDS.TIPONOTA,'#13#10'       EF_PDS.CATEGORIAID,'#13#10'       EF_PDS.ENTID' +
      'ADEID,'#13#10'       EF_PDS.NOME,'#13#10'       EF_PDS.CEPID,'#13#10'       EF_PDS' +
      '.NUMERO,'#13#10'       EF_PDS.COMPLEMENTO,'#13#10'       EF_PDS.ENDERECO,'#13#10' ' +
      '      EF_PDS.BAIRRO,'#13#10'       EF_PDS.CIDADE,'#13#10'       EF_PDS.SIGLA' +
      'UFID,'#13#10'       EF_PDS.PAIS,'#13#10'       EF_PDS.CONTRIBUINTEICMS,'#13#10'   ' +
      '    EF_PDS.ENDERECOENTREGA,'#13#10'       EF_PDS.ENDERECOCOBRANCA,'#13#10'  ' +
      '     EF_PDS.NATUREZAOPID,'#13#10'       EF_NATUREZAOP.CFOP AS L_CFOP,'#13 +
      #10'       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO AS L_DESCRICAOOPE' +
      'RACAOUSUARIO,'#13#10'       EF_PDS.CONDPAGTOID,'#13#10'       EF_CONDPAGTO.D' +
      'ESCRICAO L_CONDICAOPAGTO,'#13#10'       EF_PDS.DESCRICAOCONDPAGTO,'#13#10'  ' +
      '     EF_PDS.OBSERVACAOID,'#13#10'       EF_PDS.DESCRICAOOBSERVACAO,'#13#10' ' +
      '      EF_PDS.TRANSPORTADORID,'#13#10'       EF_ENTIDADE.NOME AS L_NOME' +
      'TRANSPORTADOR,'#13#10'       EF_PDS.PLACAVEICULO,'#13#10'       EF_PDS.MODAL' +
      'IDADEFRETE,'#13#10'       EF_PDS.VLRFRETE,'#13#10'       EF_PDS.VLRSEGURO,'#13#10 +
      '       EF_PDS.VLRDESPESAACESSORIA,'#13#10'       EF_PDS.EMBQTDVOLUMES,' +
      #13#10'       EF_PDS.EMBNUMERO,'#13#10'       EF_PDS.EMBMARCA,'#13#10'       EF_P' +
      'DS.EMBESPECIE,'#13#10'       EF_PDS.EMBPESOBRUTO,'#13#10'       EF_PDS.EMBPE' +
      'SOLIQUIDO,'#13#10'       EF_PDS.VLRTOTALSERVICO,'#13#10'       EF_PDS.VLRTOT' +
      'ALISS,'#13#10'       EF_PDS.VLRTOTALCOFINS,'#13#10'       EF_PDS.VLRTOTALPIS' +
      ','#13#10'       EF_PDS.VLRTOTALRETCOFINS,'#13#10'       EF_PDS.VLRTOTALRETPI' +
      'S,'#13#10'       EF_PDS.VLRTOTALRETCSLL,'#13#10'       EF_PDS.VLRTOTALRETIRP' +
      'J,'#13#10'       EF_PDS.VLRTOTALRETIRPF,'#13#10'       EF_PDS.VLRTOTALBASEIC' +
      'MS,'#13#10'       EF_PDS.VLRTOTALICMS,'#13#10'       EF_PDS.VLRTOTALISENTASI' +
      'CMS,'#13#10'       EF_PDS.VLRTOTALOUTRASICMS,'#13#10'       EF_PDS.VLRTOTALB' +
      'ASEIPI,'#13#10'       EF_PDS.VLRTOTALIPI,'#13#10'       EF_PDS.VLRTOTALISENT' +
      'ASIPI,'#13#10'       EF_PDS.VLRTOTALOUTRASIPI,'#13#10'       EF_PDS.VLRTOTAL' +
      'PRODUTO,'#13#10'       EF_PDS.VLRTOTALNOTA,'#13#10'       EF_PDS.USUARIO'#13#10'  ' +
      'FROM EF_PDS EF_PDS,'#13#10'       EF_NATUREZAOP EF_NATUREZAOP,'#13#10'      ' +
      ' EF_ENTIDADE EF_ENTIDADE,'#13#10'       EF_CONDPAGTO EF_CONDPAGTO'#13#10' WH' +
      'ERE EF_NATUREZAOP.NATUREZAOPID (+) = EF_PDS.NATUREZAOPID'#13#10'      ' +
      ' AND EF_ENTIDADE.ENTIDADEID (+) = EF_PDS.TRANSPORTADORID'#13#10'      ' +
      ' AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_PDS.CONDPAGTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 65535
    object sqldtsPdsEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsPdsSTATUS: TBCDField
      FieldName = 'STATUS'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsPRENOTA: TBCDField
      FieldName = 'PRENOTA'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsDESCRICAOPRENOTA: TMemoField
      FieldName = 'DESCRICAOPRENOTA'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdsOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsPdsEMPRESANFSREFID: TBCDField
      FieldName = 'EMPRESANFSREFID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsNFSREFID: TBCDField
      FieldName = 'NFSREFID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsDATANFSREFID: TSQLTimeStampField
      FieldName = 'DATANFSREFID'
    end
    object sqldtsPdsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsPdsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsPdsLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object sqldtsPdsLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object sqldtsPdsLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object sqldtsPdsLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object sqldtsPdsNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsPdsTIPONOTAENTRADA: TStringField
      FieldName = 'TIPONOTAENTRADA'
      Size = 1
    end
    object sqldtsPdsTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object sqldtsPdsCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsPdsCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsPdsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsPdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsPdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sqldtsPdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sqldtsPdsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsPdsPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsPdsCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 100
    end
    object sqldtsPdsENDERECOCOBRANCA: TStringField
      FieldName = 'ENDERECOCOBRANCA'
      Size = 100
    end
    object sqldtsPdsNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsPdsL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsL_CONDICAOPAGTO: TStringField
      FieldName = 'L_CONDICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdsOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdsTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object sqldtsPdsMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object sqldtsPdsVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object sqldtsPdsEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object sqldtsPdsEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object sqldtsPdsEMBPESOBRUTO: TBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 8
      Size = 3
    end
    object sqldtsPdsEMBPESOLIQUIDO: TBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 8
      Size = 3
    end
    object sqldtsPdsVLRTOTALSERVICO: TBCDField
      FieldName = 'VLRTOTALSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALISS: TBCDField
      FieldName = 'VLRTOTALISS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALRETCOFINS: TBCDField
      FieldName = 'VLRTOTALRETCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALRETPIS: TBCDField
      FieldName = 'VLRTOTALRETPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALRETCSLL: TBCDField
      FieldName = 'VLRTOTALRETCSLL'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALRETIRPJ: TBCDField
      FieldName = 'VLRTOTALRETIRPJ'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALRETIRPF: TBCDField
      FieldName = 'VLRTOTALRETIRPF'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvKardex: TDataSetProvider
    DataSet = sqldtsKardex
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 501
    Top = 210
  end
  object dsprvPde: TDataSetProvider
    DataSet = sqldtsPde
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 678
    Top = 65535
  end
  object dsprvPds: TDataSetProvider
    DataSet = sqldtsPds
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 892
    Top = 65535
  end
  object dsPdeLink: TDataSource
    DataSet = sqldtsPde
    Left = 678
    Top = 40
  end
  object sqldtsPdsItem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDSITEM.EMPRESAID,'#13#10'  EF_PDSITEM.PDSID,'#13#10'  EF_PDSIT' +
      'EM.ITEMID,'#13#10'  EF_PDSITEM.NATUREZAOPID,'#13#10'  EF_PDSITEM.OBSERVACAOI' +
      'D,'#13#10'  EF_PDSITEM.DESCRICAOOBSERVACAO,'#13#10'  EF_PDSITEM.PRODUTOID,'#13#10 +
      '  EF_PDSITEM.DESCRICAOPRODUTO,'#13#10'  EF_PRODUTO.PARTNUMBERID L_PART' +
      'NUMBERID,'#13#10'  EF_PRODUTO.LOCALIZACAO L_LOCALIZACAO,'#13#10'  EF_PRODUTO' +
      '.UNIDADEID L_UNIDADEID,'#13#10'  EF_PDSITEM.QUANTIDADE,'#13#10'  EF_PDSITEM.' +
      'VLRPRECOUNITARIO,'#13#10'  EF_PDSITEM.VLRPRECOTOTAL,'#13#10'  EF_PDSITEM.POR' +
      'CDESCONTO,'#13#10'  EF_PDSITEM.VLRDESCONTO,'#13#10'  EF_PDSITEM.VLRPRECOUNIT' +
      'DESC,'#13#10'  EF_PDSITEM.VLRPRECOTOTALDESC,'#13#10'  EF_PDSITEM.NFEID,'#13#10'  E' +
      'F_PDSITEM.DATAEMISSAONFEID,'#13#10'  EF_PDSITEM.EMPENHO,'#13#10'  EF_PDSITEM' +
      '.EMPENHOITEMID,'#13#10'  EF_PDSITEM.QUANTIDADEEMPENHO,'#13#10'  EF_PDSITEM.R' +
      'ETORNO,'#13#10'  EF_PDSITEM.QTDRETORNA,'#13#10'  EF_PDSITEM.VLRBASEICMS,'#13#10'  ' +
      'EF_PDSITEM.ALIQUOTAICMS,'#13#10'  EF_PDSITEM.VLRICMS,'#13#10'  EF_PDSITEM.VL' +
      'RISENTASICMS,'#13#10'  EF_PDSITEM.VLROUTRASICMS,'#13#10'  EF_PDSITEM.PORCRED' +
      'UCAOICMS,'#13#10'  EF_PDSITEM.SITTRIBUTARIAESTADUAL,'#13#10'  EF_PDSITEM.ALI' +
      'QUOTACOFINS,'#13#10'  EF_PDSITEM.VLRCOFINS,'#13#10'  EF_PDSITEM.ALIQUOTAPIS,' +
      #13#10'  EF_PDSITEM.VLRPIS,'#13#10'  EF_PDSITEM.VLRBASEIPI,'#13#10'  EF_PDSITEM.A' +
      'LIQUOTAIPI,'#13#10'  EF_PDSITEM.VLRIPI,'#13#10'  EF_PDSITEM.VLRISENTASIPI,'#13#10 +
      '  EF_PDSITEM.VLROUTRASIPI,'#13#10'  EF_PDSITEM.TIPOIPI,'#13#10'  EF_PDSITEM.' +
      'SITTRIBUTARIAFEDERAL,'#13#10'  EF_PDSITEM.ARTIGO,'#13#10'  EF_PDSITEM.DATAIN' +
      'ICIALIPI,'#13#10'  EF_PDSITEM.DATAFINALIPI,'#13#10'  EF_PDSITEM.PRODINCENTIV' +
      'ADO,'#13#10'  EF_PDSITEM.ESTOQUEUTILIZADO,'#13#10'  EF_PDSITEM.USUARIO'#13#10'  FR' +
      'OM'#13#10'  EF_PDSITEM EF_PDSITEM,'#13#10'  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13#10' ' +
      ' EF_PDSITEM.EMPRESAID = EF_PRODUTO.EMPRESAID(+)'#13#10'  AND EF_PDSITE' +
      'M.PRODUTOID = EF_PRODUTO.PRODUTOID(+)'#13#10'  AND EF_PDSITEM.EMPRESAI' +
      'D = :EMPRESAID'#13#10'  AND EF_PDSITEM.PDSID = :PDSID'
    DataSource = dsPdsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PDSID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 40
    object sqldtsPdsItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdsItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemDESCRICAO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsPdsItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsPdsItemL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPdsItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object sqldtsPdsItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsPdsItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 8
      Size = 6
    end
    object sqldtsPdsItemVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLRPRECOUNITDESC: TBCDField
      FieldName = 'VLRPRECOUNITDESC'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLRPRECOTOTALDESC: TBCDField
      FieldName = 'VLRPRECOTOTALDESC'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsPdsItemEMPENHO: TBCDField
      FieldName = 'EMPENHO'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemEMPENHOITEMID: TBCDField
      FieldName = 'EMPENHOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemQUANTIDADEEMPENHO: TFMTBCDField
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 14
    end
    object sqldtsPdsItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object sqldtsPdsItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsPdsItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object sqldtsPdsItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 8
      Size = 6
    end
    object sqldtsPdsItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 8
      Size = 6
    end
    object sqldtsPdsItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 8
      Size = 6
    end
    object sqldtsPdsItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemVLROUTRASIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object sqldtsPdsItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object sqldtsPdsItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsPdsItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsPdsItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsPdsItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPdsParcela: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDSPARCELA.EMPRESAID,'#13#10'  EF_PDSPARCELA.PDSID,'#13#10'  EF' +
      '_PDSPARCELA.PARCELAID,'#13#10'  EF_PDSPARCELA.DATAVENCIMENTO,'#13#10'  EF_PD' +
      'SPARCELA.VLRPARCELA,'#13#10'  EF_PDSPARCELA.USUARIO'#13#10'  FROM'#13#10'  EF_PDSP' +
      'ARCELA EF_PDSPARCELA'#13#10' WHERE'#13#10'  EF_PDSPARCELA.EMPRESAID = :EMPRE' +
      'SAID'#13#10'  AND EF_PDSPARCELA.PDSID = :PDSID'
    DataSource = dsPdsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'PDSID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 122
    object sqldtsPdsParcelaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsParcelaPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsParcelaPARCELAID: TBCDField
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsParcelaDATAVENCIMENTO: TSQLTimeStampField
      FieldName = 'DATAVENCIMENTO'
    end
    object sqldtsPdsParcelaVLRPARCELA: TBCDField
      FieldName = 'VLRPARCELA'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPdsServico: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDSSERVICO.EMPRESAID,'#13#10'  EF_PDSSERVICO.PDSID,'#13#10'  EF' +
      '_PDSSERVICO.ITEMID,'#13#10'  EF_PDSSERVICO.SERVICOID,'#13#10'  EF_SERVICO.GR' +
      'UPOID L_GRUPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_SERV' +
      'ICO.DESCRICAORESUMIDA L_DESCRICAORESUMIDA,'#13#10'  EF_PDSSERVICO.DESC' +
      'RICAOSERVICO,'#13#10'  EF_PDSSERVICO.VLRISS,'#13#10'  EF_PDSSERVICO.VLRSERVI' +
      'CO,'#13#10'  EF_PDSSERVICO.ALIQUOTACOFINS,'#13#10'  EF_PDSSERVICO.VLRCOFINS,' +
      #13#10'  EF_PDSSERVICO.ALIQUOTAPIS,'#13#10'  EF_PDSSERVICO.VLRPIS,'#13#10'  EF_PD' +
      'SSERVICO.VLRRETCOFINS,'#13#10'  EF_PDSSERVICO.VLRRETPIS,'#13#10'  EF_PDSSERV' +
      'ICO.VLRRETCSLL,'#13#10'  EF_PDSSERVICO.VLRRETIRPJ,'#13#10'  EF_PDSSERVICO.VL' +
      'RRETIRPF,  '#13#10'  EF_PDSSERVICO.USUARIO'#13#10'  FROM'#13#10'  EF_PDSSERVICO EF' +
      '_PDSSERVICO,'#13#10'  EF_SERVICO EF_SERVICO,'#13#10'  EF_GRUPO'#13#10' WHERE'#13#10'  EF' +
      '_SERVICO.EMPRESAID(+) = EF_PDSSERVICO.EMPRESAID'#13#10'  AND EF_SERVIC' +
      'O.SERVICOID(+) = EF_PDSSERVICO.SERVICOID'#13#10'  AND EF_SERVICO.GRUPO' +
      'ID = EF_GRUPO.GRUPOID(+)'#13#10'  AND EF_PDSSERVICO.EMPRESAID = :EMPRE' +
      'SAID'#13#10'  AND EF_PDSSERVICO.PDSID = :PDSID'
    DataSource = dsPdsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PDSID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 162
    object sqldtsPdsServicoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsServicoPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsServicoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsServicoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPdsServicoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPdsServicoL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsServicoDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdsServicoVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 8
      Size = 6
    end
    object sqldtsPdsServicoVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 8
      Size = 6
    end
    object sqldtsPdsServicoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoVLRRETCOFINS: TBCDField
      FieldName = 'VLRRETCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoVLRRETPIS: TBCDField
      FieldName = 'VLRRETPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoVLRRETCSLL: TBCDField
      FieldName = 'VLRRETCSLL'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoVLRRETIRPJ: TBCDField
      FieldName = 'VLRRETIRPJ'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoVLRRETIRPF: TBCDField
      FieldName = 'VLRRETIRPF'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPdsLink: TDataSource
    DataSet = sqldtsPds
    Left = 892
    Top = 40
  end
  object sqldtsNfe: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_NFE.EMPRESAID,'#13#10'  EF_NFE.NFEID,'#13#10'  EF_NFE.DATAEMISS' +
      'AOID,'#13#10'  EF_NFE.ENTIDADEID,'#13#10'  EF_NFE.CATEGORIAID,'#13#10'  EF_NFE.MOD' +
      'ELODOCFISCALID,'#13#10'  EF_MODELODOCFISCAL.MODELO L_MODELODOCFISCAL,'#13 +
      #10'  EF_NFE.SERIE,'#13#10'  EF_NFE.DATAENTRADA,'#13#10'  EF_NFE.CANCELADA,'#13#10'  ' +
      'EF_NFE.EXPORTADO,'#13#10'  EF_NFE.DIID,'#13#10'  EF_NFE.DESCRICAOIMPORTACAO,' +
      #13#10'  EF_NFE.OSID,'#13#10'  EF_NFE.CREDITARICMS,'#13#10'  EF_NFE.LIBCHEFIA,'#13#10' ' +
      ' EF_NFE.LIBCHEFIANOME,'#13#10'  EF_NFE.LIBCHEFIADATA,'#13#10'  EF_NFE.LIBFIN' +
      'ANCEIRO,'#13#10'  EF_NFE.LIBFINANCEIRONOME,'#13#10'  EF_NFE.LIBFINANCEIRODAT' +
      'A,'#13#10'  EF_NFE.LIBCONTABIL,'#13#10'  EF_NFE.LIBCONTABILNOME,'#13#10'  EF_NFE.L' +
      'IBCONTABILDATA,'#13#10'  EF_NFE.PDEID,'#13#10'  EF_NFE.DATAPEDIDO,'#13#10'  EF_NFE' +
      '.REQUISITANTE,'#13#10'  EF_NFE.NFSID,'#13#10'  EF_NFE.DATAEMISSAONFSID,'#13#10'  E' +
      'F_NFE.TIPONOTA,'#13#10'  EF_NFE.NOME,'#13#10'  EF_NFE.CEPID,'#13#10'  EF_NFE.NUMER' +
      'O,'#13#10'  EF_NFE.COMPLEMENTO,'#13#10'  EF_NFE.ENDERECO,'#13#10'  EF_NFE.BAIRRO,'#13 +
      #10'  EF_NFE.CIDADE,'#13#10'  EF_NFE.SIGLAUFID,'#13#10'  EF_NFE.PAIS,'#13#10'  EF_NFE' +
      '.CONTRIBUINTEICMS,'#13#10'  EF_NFE.NATUREZAOPID,'#13#10'  EF_NATUREZAOP.CFOP' +
      ' AS L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO AS L_DESCR' +
      'ICAOOPERACAOUSUARIO,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAONOTA AS L' +
      '_DESCRICAOOPERACAONOTA,'#13#10'  EF_NFE.OBSERVACAOID,'#13#10'  EF_NFE.DESCRI' +
      'CAOOBSERVACAO,'#13#10'  EF_NFE.TRANSPORTADORID,'#13#10'  EF_ENTIDADE.NOME AS' +
      ' L_NOMETRANSPORTADOR,'#13#10'  EF_NFE.PLACAVEICULO,'#13#10'  EF_NFE.MODALIDA' +
      'DEFRETE,'#13#10'  EF_NFE.VLRFRETE,'#13#10'  EF_NFE.VLRSEGURO,'#13#10'  EF_NFE.VLRD' +
      'ESPESAACESSORIA,'#13#10'  EF_NFE.NSUID,'#13#10'  EF_NFE.EMBQTDVOLUMES,'#13#10'  EF' +
      '_NFE.EMBNUMERO,'#13#10'  EF_NFE.EMBMARCA,'#13#10'  EF_NFE.EMBESPECIE,'#13#10'  EF_' +
      'NFE.EMBPESOBRUTO,'#13#10'  EF_NFE.EMBPESOLIQUIDO,'#13#10'  EF_NFE.VLRTOTALCO' +
      'FINS,'#13#10'  EF_NFE.VLRTOTALPIS,'#13#10'  EF_NFE.VLRTOTALCREDCOFINS,'#13#10'  EF' +
      '_NFE.VLRTOTALCREDPIS,'#13#10'  EF_NFE.VLRTOTALBASEICMS,'#13#10'  EF_NFE.VLRT' +
      'OTALICMS,'#13#10'  EF_NFE.VLRTOTALISENTASICMS,'#13#10'  EF_NFE.VLRTOTALOUTRA' +
      'SICMS,'#13#10'  EF_NFE.VLRTOTALBASEIPI,'#13#10'  EF_NFE.VLRTOTALIPI,'#13#10'  EF_N' +
      'FE.VLRTOTALISENTASIPI,'#13#10'  EF_NFE.VLRTOTALOUTRASIPI,'#13#10'  EF_NFE.VL' +
      'RTOTALPRODUTO,'#13#10'  EF_NFE.VLRTOTALNOTA,'#13#10'  EF_NFE.DATAIMPRESSAO,'#13 +
      #10'  EF_NFE.USUARIO'#13#10'  FROM'#13#10'  EF_NFE EF_NFE,'#13#10'  EF_ENTIDADE EF_EN' +
      'TIDADE,'#13#10'  EF_NATUREZAOP EF_NATUREZAOP,'#13#10'  EF_MODELODOCFISCAL EF' +
      '_MODELODOCFISCAL'#13#10' WHERE'#13#10'  EF_ENTIDADE.ENTIDADEID (+) = EF_NFE.' +
      'TRANSPORTADORID'#13#10'  AND EF_NATUREZAOP.NATUREZAOPID (+) = EF_NFE.N' +
      'ATUREZAOPID'#13#10'  AND EF_MODELODOCFISCAL.MODELODOCFISCALID(+) = EF_' +
      'NFE.MODELODOCFISCALID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 592
    Top = 204
    object sqldtsNfeEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfeENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeL_MODELODOCFISCAL: TStringField
      FieldName = 'L_MODELODOCFISCAL'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object sqldtsNfeDATAENTRADA: TSQLTimeStampField
      FieldName = 'DATAENTRADA'
    end
    object sqldtsNfeCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsNfeDESCRICAOIMPORTACAO: TMemoField
      FieldName = 'DESCRICAOIMPORTACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfeOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsNfeNSUID: TFMTBCDField
      FieldName = 'NSUID'
      Precision = 32
    end
    object sqldtsNfeCREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsNfeLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsNfeLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object sqldtsNfeLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object sqldtsNfeLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object sqldtsNfeLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object sqldtsNfePDEID: TBCDField
      FieldName = 'PDEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsNfeREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
      Size = 30
    end
    object sqldtsNfeNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object sqldtsNfeTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object sqldtsNfeNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsNfeCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsNfeCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsNfeENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsNfeBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsNfeCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsNfeSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsNfePAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsNfeCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsNfeL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfeTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfePLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object sqldtsNfeMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object sqldtsNfeVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object sqldtsNfeEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object sqldtsNfeEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALCREDCOFINS: TBCDField
      FieldName = 'VLRTOTALCREDCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALCREDPIS: TBCDField
      FieldName = 'VLRTOTALCREDPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object sqldtsNfeUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfeItem: TSQLDataSet
    CommandText = 
      'SELECT EF_NFEITEM.EMPRESAID,'#13#10'       EF_NFEITEM.NFEID,'#13#10'       E' +
      'F_NFEITEM.DATAEMISSAOID,'#13#10'       EF_NFEITEM.ENTIDADEID,'#13#10'       ' +
      'EF_NFEITEM.ITEMID,'#13#10'       EF_NFEITEM.NATUREZAOPID,'#13#10'       EF_N' +
      'ATUREZAOP.CFOP AS L_CFOP,'#13#10'       EF_NATUREZAOP.DESCRICAOOPERACA' +
      'OUSUARIO AS L_DESCRICAOOPERACAOUSUARIO,'#13#10'       EF_NATUREZAOP.DE' +
      'SCRICAOOPERACAONOTA AS L_DESCRICAOOPERACAONOTA,'#13#10'       EF_NFEIT' +
      'EM.OBSERVACAOID,'#13#10'       EF_NFEITEM.DESCRICAOOBSERVACAO,'#13#10'      ' +
      ' EF_NFEITEM.PRODUTOID,'#13#10'       EF_NFEITEM.DESCRICAOPRODUTO,'#13#10'   ' +
      '    EF_NFEITEM.QUANTIDADE,'#13#10'       EF_NFEITEM.VLRPRECOUNITARIO,'#13 +
      #10'       EF_NFEITEM.VLRPRECOTOTAL,'#13#10'       EF_NFEITEM.NFSID,'#13#10'   ' +
      '    EF_NFEITEM.DATAEMISSAONFSID,'#13#10'       EF_NFEITEM.EMPENHO,'#13#10'  ' +
      '     EF_NFEITEM.QTDEMPENHO,'#13#10'       EF_NFEITEM.RETORNO,'#13#10'       ' +
      'EF_NFEITEM.QTDRETORNA,'#13#10'       EF_NFEITEM.VLRBASEICMS,'#13#10'       E' +
      'F_NFEITEM.ALIQUOTAICMS,'#13#10'       EF_NFEITEM.VLRICMS,'#13#10'       EF_N' +
      'FEITEM.VLRISENTASICMS,'#13#10'       EF_NFEITEM.VLROUTRASICMS,'#13#10'      ' +
      ' EF_NFEITEM.PORCREDUCAOICMS,'#13#10'       EF_NFEITEM.SITTRIBUTARIAEST' +
      'ADUAL,'#13#10'       EF_NFEITEM.ALIQUOTACOFINS,'#13#10'       EF_NFEITEM.VLR' +
      'COFINS,'#13#10'       EF_NFEITEM.VLRCREDCOFINS,'#13#10'       EF_NFEITEM.ALI' +
      'QUOTAPIS,'#13#10'       EF_NFEITEM.VLRPIS,'#13#10'       EF_NFEITEM.VLRCREDP' +
      'IS,'#13#10'       EF_NFEITEM.VLRBASEIPI,'#13#10'       EF_NFEITEM.ALIQUOTAIP' +
      'I,'#13#10'       EF_NFEITEM.VLRIPI,'#13#10'       EF_NFEITEM.VLRISENTASIPI,'#13 +
      #10'       EF_NFEITEM.VLROUTRASIPI,'#13#10'       EF_NFEITEM.TIPOIPI,'#13#10'  ' +
      '     EF_NFEITEM.SITTRIBUTARIAFEDERAL,'#13#10'       EF_NFEITEM.ARTIGO,' +
      #13#10'       EF_NFEITEM.DATAINICIALIPI,'#13#10'       EF_NFEITEM.DATAFINAL' +
      'IPI,'#13#10'       EF_NFEITEM.PRODINCENTIVADO,'#13#10'       EF_PRODUTO.NCMI' +
      'D L_NCMID,'#13#10'       EF_PRODUTO.UNIDADEID L_UNIDADEID,'#13#10'       EF_' +
      'NFEITEM.USUARIO'#13#10'  FROM EF_NFEITEM EF_NFEITEM,'#13#10'       EF_NATURE' +
      'ZAOP EF_NATUREZAOP,'#13#10'       GSI.EF_PRODUTO'#13#10' WHERE EF_NFEITEM.EM' +
      'PRESAID = :EMPRESAID'#13#10'       AND  EF_NFEITEM.NFEID = :NFEID'#13#10'   ' +
      '    AND EF_NFEITEM.DATAEMISSAOID = :DATAEMISSAOID'#13#10'       AND EF' +
      '_NFEITEM.ENTIDADEID = :ENTIDADEID'#13#10'       AND EF_NATUREZAOP.NATU' +
      'REZAOPID(+) = EF_NFEITEM.NATUREZAOPID'#13#10'       AND EF_PRODUTO.EMP' +
      'RESAID(+) = EF_NFEITEM.EMPRESAID'#13#10'       AND EF_PRODUTO.PRODUTOI' +
      'D(+) = EF_NFEITEM.PRODUTOID'
    DataSource = dsNfeLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFEID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end
      item
        DataType = ftBCD
        Name = 'ENTIDADEID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 592
    Top = 245
    object sqldtsNfeItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfeItemENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsNfeItemL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeItemL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfeItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfeItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsNfeItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemNFSID: TBCDField
      FieldName = 'NFSID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemDATAEMISSAONFSID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFSID'
    end
    object sqldtsNfeItemEMPENHO: TBCDField
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeItemQTDEMPENHO: TBCDField
      FieldName = 'QTDEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object sqldtsNfeItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object sqldtsNfeItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRCREDCOFINS: TBCDField
      FieldName = 'VLRCREDCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfeItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRCREDPIS: TBCDField
      FieldName = 'VLRCREDPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemALIQUOTAIPI: TBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLRISENTOIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemVLROUTROIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfeItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object sqldtsNfeItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object sqldtsNfeItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsNfeItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsNfeItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfeItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfeItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object sqldtsNfeItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNfe: TDataSetProvider
    DataSet = sqldtsNfe
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 678
    Top = 204
  end
  object dsNfeLink: TDataSource
    DataSet = sqldtsNfe
    Left = 678
    Top = 245
  end
  object sqldtsNfs: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT EF_NFS.EMPRESAID,'#13#10'       EF_NFS.NFSID,'#13#10'       EF_NFS.DA' +
      'TAEMISSAOID,'#13#10'       EF_NFS.CANCELADA,'#13#10'       EF_NFS.EXPORTADO,' +
      #13#10'       EF_NFS.OSID,'#13#10'       EF_NFS.PDSID,'#13#10'       EF_NFS.DATAP' +
      'EDIDO,'#13#10'       EF_NFS.REQUISITANTE,'#13#10'       EF_NFS.DESCRICAOPREN' +
      'OTA,'#13#10'       EF_NFS.LIBCHEFIA,'#13#10'       EF_NFS.LIBCHEFIANOME,'#13#10'  ' +
      '     EF_NFS.LIBCHEFIADATA,'#13#10'       EF_NFS.LIBFINANCEIRO,'#13#10'      ' +
      ' EF_NFS.LIBFINANCEIRONOME,'#13#10'       EF_NFS.LIBFINANCEIRODATA,'#13#10'  ' +
      '     EF_NFS.LIBCONTABIL,'#13#10'       EF_NFS.LIBCONTABILNOME,'#13#10'      ' +
      ' EF_NFS.LIBCONTABILDATA,'#13#10'       EF_NFS.NFEID,'#13#10'       EF_NFS.DA' +
      'TAEMISSAONFEID,'#13#10'       EF_NFS.TIPONOTAENTRADA,'#13#10'       EF_NFS.E' +
      'MPRESANFSREFID,'#13#10'       EF_NFS.NFSREFID,'#13#10'       EF_NFS.DATANFSR' +
      'EFID,'#13#10'       EF_NFS.TIPONOTA,'#13#10'       EF_NFS.CATEGORIAID,'#13#10'    ' +
      '   EF_NFS.ENTIDADEID,'#13#10'       EF_NFS.NOME,'#13#10'       EF_NFS.CEPID,' +
      #13#10'       EF_NFS.NUMERO,'#13#10'       EF_NFS.COMPLEMENTO,'#13#10'       EF_N' +
      'FS.ENDERECO,'#13#10'       EF_NFS.BAIRRO,'#13#10'       EF_NFS.CIDADE,'#13#10'    ' +
      '   EF_NFS.SIGLAUFID,'#13#10'       EF_NFS.PAIS,'#13#10'       EF_NFS.ENDEREC' +
      'OENTREGA,'#13#10'       EF_NFS.ENDERECOCOBRANCA,'#13#10'       EF_NFS.CONTRI' +
      'BUINTEICMS,'#13#10'       EF_NFS.NATUREZAOPID,'#13#10'       EF_NATUREZAOP.C' +
      'FOP AS L_CFOP,'#13#10'       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO AS' +
      ' L_DESCRICAOOPERACAOUSUARIO,'#13#10'       EF_NATUREZAOP.DESCRICAOOPER' +
      'ACAONOTA AS L_DESCRICAOOPERACAONOTA,'#13#10'       EF_NFS.CONDPAGTOID,' +
      #13#10'       EF_CONDPAGTO.DESCRICAO L_CONDICAOPAGTO,'#13#10'       EF_NFS.' +
      'DESCRICAOCONDPAGTO,'#13#10'       EF_NFS.OBSERVACAOID,'#13#10'       EF_NFS.' +
      'DESCRICAOOBSERVACAO,'#13#10'       EF_NFS.TRANSPORTADORID,'#13#10'       EF_' +
      'ENTIDADE.NOME AS L_NOMETRANSPORTADOR,'#13#10'       EF_NFS.PLACAVEICUL' +
      'O,'#13#10'       EF_NFS.MODALIDADEFRETE,'#13#10'       EF_NFS.VLRFRETE,'#13#10'   ' +
      '    EF_NFS.VLRSEGURO,'#13#10'       EF_NFS.VLRDESPESAACESSORIA,'#13#10'     ' +
      '  EF_NFS.EMBQTDVOLUMES,'#13#10'       EF_NFS.EMBNUMERO,'#13#10'       EF_NFS' +
      '.EMBMARCA,'#13#10'       EF_NFS.EMBESPECIE,'#13#10'       EF_NFS.EMBPESOBRUT' +
      'O,'#13#10'       EF_NFS.EMBPESOLIQUIDO,'#13#10'       EF_NFS.REEID,'#13#10'       ' +
      'EF_NFS.DDEID,'#13#10'       EF_NFS.NF_E1ID,'#13#10'       EF_NFS.NSUID,'#13#10'   ' +
      '    EF_NFS.VLRTOTALSERVICO,'#13#10'       EF_NFS.VLRTOTALISS,'#13#10'       ' +
      'EF_NFS.VLRTOTALCOFINS,'#13#10'       EF_NFS.VLRTOTALPIS,'#13#10'       EF_NF' +
      'S.VLRTOTALRETCOFINS,'#13#10'       EF_NFS.VLRTOTALRETPIS,'#13#10'       EF_N' +
      'FS.VLRTOTALRETCSLL,'#13#10'       EF_NFS.VLRTOTALRETIRPJ,'#13#10'       EF_N' +
      'FS.VLRTOTALRETIRPF,'#13#10'       EF_NFS.VLRTOTALBASEICMS,'#13#10'       EF_' +
      'NFS.VLRTOTALICMS,'#13#10'       EF_NFS.VLRTOTALISENTASICMS,'#13#10'       EF' +
      '_NFS.VLRTOTALOUTRASICMS,'#13#10'       EF_NFS.VLRTOTALBASEIPI,'#13#10'      ' +
      ' EF_NFS.VLRTOTALIPI,'#13#10'       EF_NFS.VLRTOTALISENTASIPI,'#13#10'       ' +
      'EF_NFS.VLRTOTALOUTRASIPI,'#13#10'       EF_NFS.VLRTOTALPRODUTO,'#13#10'     ' +
      '  EF_NFS.VLRTOTALNOTA,'#13#10'       EF_NFS.DATAIMPRESSAO,'#13#10'       EF_' +
      'NFS.USUARIO'#13#10'  FROM EF_NFS EF_NFS,'#13#10'       EF_NATUREZAOP EF_NATU' +
      'REZAOP,'#13#10'       EF_ENTIDADE EF_ENTIDADE,'#13#10'       EF_CONDPAGTO EF' +
      '_CONDPAGTO'#13#10' WHERE EF_NATUREZAOP.NATUREZAOPID (+) = EF_NFS.NATUR' +
      'EZAOPID'#13#10'       AND EF_ENTIDADE.ENTIDADEID (+) = EF_NFS.TRANSPOR' +
      'TADORID'#13#10'       AND EF_CONDPAGTO.CONDPAGTOID (+) = EF_NFS.CONDPA' +
      'GTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 285
    object sqldtsNfsEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsCANCELADA: TBCDField
      FieldName = 'CANCELADA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsEXPORTADO: TBCDField
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsNfsPDSID: TBCDField
      FieldName = 'PDSID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATAPEDIDO: TSQLTimeStampField
      FieldName = 'DATAPEDIDO'
    end
    object sqldtsNfsREQUISITANTE: TStringField
      FieldName = 'REQUISITANTE'
    end
    object sqldtsNfsDESCRICAOPRENOTA: TMemoField
      FieldName = 'DESCRICAOPRENOTA'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfsLIBCHEFIA: TBCDField
      FieldName = 'LIBCHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsLIBCHEFIANOME: TStringField
      FieldName = 'LIBCHEFIANOME'
    end
    object sqldtsNfsLIBCHEFIADATA: TSQLTimeStampField
      FieldName = 'LIBCHEFIADATA'
    end
    object sqldtsNfsLIBFINANCEIRO: TBCDField
      FieldName = 'LIBFINANCEIRO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsLIBFINANCEIRONOME: TStringField
      FieldName = 'LIBFINANCEIRONOME'
    end
    object sqldtsNfsLIBFINANCEIRODATA: TSQLTimeStampField
      FieldName = 'LIBFINANCEIRODATA'
    end
    object sqldtsNfsLIBCONTABIL: TBCDField
      FieldName = 'LIBCONTABIL'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsLIBCONTABILNOME: TStringField
      FieldName = 'LIBCONTABILNOME'
    end
    object sqldtsNfsLIBCONTABILDATA: TSQLTimeStampField
      FieldName = 'LIBCONTABILDATA'
    end
    object sqldtsNfsNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsNfsTIPONOTAENTRADA: TStringField
      FieldName = 'TIPONOTAENTRADA'
      Size = 1
    end
    object sqldtsNfsEMPRESANFSREFID: TBCDField
      FieldName = 'EMPRESANFSREFID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNFSREFID: TBCDField
      FieldName = 'NFSREFID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDATANFSREFID: TSQLTimeStampField
      FieldName = 'DATANFSREFID'
    end
    object sqldtsNfsTIPONOTA: TStringField
      FieldName = 'TIPONOTA'
      Size = 1
    end
    object sqldtsNfsCATEGORIAID: TBCDField
      FieldName = 'CATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsNfsCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sqldtsNfsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
    end
    object sqldtsNfsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sqldtsNfsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object sqldtsNfsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsNfsSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsNfsPAIS: TStringField
      FieldName = 'PAIS'
      Size = 72
    end
    object sqldtsNfsENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Size = 100
    end
    object sqldtsNfsENDERECOCOBRANCA: TStringField
      FieldName = 'ENDERECOCOBRANCA'
      Size = 100
    end
    object sqldtsNfsCONTRIBUINTEICMS: TBCDField
      FieldName = 'CONTRIBUINTEICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsNfsL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsL_DESCRICAOOPERACAONOTA: TStringField
      FieldName = 'L_DESCRICAOOPERACAONOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsCONDPAGTOID: TBCDField
      FieldName = 'CONDPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsL_CONDICAOPAGTO: TStringField
      FieldName = 'L_CONDICAOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsDESCRICAOCONDPAGTO: TMemoField
      FieldName = 'DESCRICAOCONDPAGTO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfsOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfsTRANSPORTADORID: TBCDField
      FieldName = 'TRANSPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsL_NOMETRANSPORTADOR: TStringField
      FieldName = 'L_NOMETRANSPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsPLACAVEICULO: TStringField
      FieldName = 'PLACAVEICULO'
      Size = 7
    end
    object sqldtsNfsMODALIDADEFRETE: TStringField
      FieldName = 'MODALIDADEFRETE'
      Size = 1
    end
    object sqldtsNfsVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRSEGURO: TBCDField
      FieldName = 'VLRSEGURO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRDESPESAACESSORIA: TBCDField
      FieldName = 'VLRDESPESAACESSORIA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsEMBQTDVOLUMES: TBCDField
      FieldName = 'EMBQTDVOLUMES'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsEMBNUMERO: TBCDField
      FieldName = 'EMBNUMERO'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsEMBMARCA: TStringField
      FieldName = 'EMBMARCA'
      Size = 50
    end
    object sqldtsNfsEMBESPECIE: TStringField
      FieldName = 'EMBESPECIE'
      Size = 50
    end
    object sqldtsNfsEMBPESOBRUTO: TFMTBCDField
      FieldName = 'EMBPESOBRUTO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsEMBPESOLIQUIDO: TFMTBCDField
      FieldName = 'EMBPESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsREEID: TBCDField
      FieldName = 'REEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsDDEID: TBCDField
      FieldName = 'DDEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsNF_E1ID: TFMTBCDField
      FieldName = 'NF_E1ID'
      Precision = 32
    end
    object sqldtsNfsNSUID: TFMTBCDField
      FieldName = 'NSUID'
      Precision = 32
    end
    object sqldtsNfsVLRTOTALSERVICO: TBCDField
      FieldName = 'VLRTOTALSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALISS: TBCDField
      FieldName = 'VLRTOTALISS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALRETCOFINS: TBCDField
      FieldName = 'VLRTOTALRETCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALRETPIS: TBCDField
      FieldName = 'VLRTOTALRETPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALRETCSLL: TBCDField
      FieldName = 'VLRTOTALRETCSLL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALRETIRPJ: TBCDField
      FieldName = 'VLRTOTALRETIRPJ'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALRETIRPF: TBCDField
      FieldName = 'VLRTOTALRETIRPF'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALBASEICMS: TBCDField
      FieldName = 'VLRTOTALBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALISENTASICMS: TBCDField
      FieldName = 'VLRTOTALISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALOUTRASICMS: TBCDField
      FieldName = 'VLRTOTALOUTRASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALBASEIPI: TBCDField
      FieldName = 'VLRTOTALBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALISENTASIPI: TBCDField
      FieldName = 'VLRTOTALISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALOUTRASIPI: TBCDField
      FieldName = 'VLRTOTALOUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALPRODUTO: TBCDField
      FieldName = 'VLRTOTALPRODUTO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsVLRTOTALNOTA: TBCDField
      FieldName = 'VLRTOTALNOTA'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsDATAIMPRESSAO: TSQLTimeStampField
      FieldName = 'DATAIMPRESSAO'
    end
    object sqldtsNfsUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfsItem: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT EF_NFSITEM.EMPRESAID,'#13#10'       EF_NFSITEM.NFSID,'#13#10'       E' +
      'F_NFSITEM.DATAEMISSAOID,'#13#10'       EF_NFSITEM.ITEMID,'#13#10'       EF_N' +
      'FSITEM.NATUREZAOPID,'#13#10'       EF_NFSITEM.OBSERVACAOID,'#13#10'       EF' +
      '_NFSITEM.DESCRICAOOBSERVACAO,'#13#10'       EF_NFSITEM.PRODUTOID,'#13#10'   ' +
      '    EF_NFSITEM.DESCRICAOPRODUTO,'#13#10'       EF_NFSITEM.QUANTIDADE,'#13 +
      #10'       EF_NFSITEM.VLRPRECOUNITARIO,'#13#10'       EF_NFSITEM.VLRPRECO' +
      'TOTAL,'#13#10'       EF_NFSITEM.PORCDESCONTO,'#13#10'       EF_NFSITEM.VLRDE' +
      'SCONTO,'#13#10'       EF_NFSITEM.VLRPRECOUNITDESC,'#13#10'       EF_NFSITEM.' +
      'VLRPRECOTOTALDESC,'#13#10'       EF_NFSITEM.NFEID,'#13#10'       EF_NFSITEM.' +
      'DATAEMISSAONFEID,'#13#10'       EF_NFSITEM.EMPENHO,'#13#10'       EF_NFSITEM' +
      '.QUANTIDADEEMPENHO,'#13#10'       EF_NFSITEM.RETORNO,'#13#10'       EF_NFSIT' +
      'EM.QTDRETORNA,'#13#10'       EF_NFSITEM.VLRBASEICMS,'#13#10'       EF_NFSITE' +
      'M.ALIQUOTAICMS,'#13#10'       EF_NFSITEM.VLRICMS,'#13#10'       EF_NFSITEM.V' +
      'LRISENTASICMS,'#13#10'       EF_NFSITEM.VLROUTRASICMS,'#13#10'       EF_NFSI' +
      'TEM.PORCREDUCAOICMS,'#13#10'       EF_NFSITEM.SITTRIBUTARIAESTADUAL,'#13#10 +
      '       EF_NFSITEM.ALIQUOTACOFINS,'#13#10'       EF_NFSITEM.VLRCOFINS,'#13 +
      #10'       EF_NFSITEM.ALIQUOTAPIS,'#13#10'       EF_NFSITEM.VLRPIS,'#13#10'    ' +
      '   EF_NFSITEM.VLRBASEIPI,'#13#10'       EF_NFSITEM.ALIQUOTAIPI,'#13#10'     ' +
      '  EF_NFSITEM.VLRIPI,'#13#10'       EF_NFSITEM.VLRISENTASIPI,'#13#10'       E' +
      'F_NFSITEM.VLROUTRASIPI,'#13#10'       EF_NFSITEM.TIPOIPI,'#13#10'       EF_N' +
      'FSITEM.SITTRIBUTARIAFEDERAL,'#13#10'       EF_NFSITEM.ARTIGO,'#13#10'       ' +
      'EF_NFSITEM.DATAINICIALIPI,'#13#10'       EF_NFSITEM.DATAFINALIPI,'#13#10'   ' +
      '    EF_NFSITEM.PRODINCENTIVADO,'#13#10'       EF_NFSITEM.ESTOQUEUTILIZ' +
      'ADO,'#13#10'       EF_PRODUTO.NCMID L_NCMID,'#13#10'       EF_PRODUTO.UNIDAD' +
      'EID L_UNIDADEID,'#13#10'       EF_NFSITEM.USUARIO'#13#10'  FROM EF_NFSITEM E' +
      'F_NFSITEM,'#13#10'       GSI.EF_PRODUTO'#13#10' WHERE EF_NFSITEM.EMPRESAID =' +
      ' :EMPRESAID'#13#10'       AND EF_NFSITEM.NFSID = :NFSID'#13#10'       AND EF' +
      '_NFSITEM.DATAEMISSAOID = :DATAEMISSAOID'#13#10'       AND EF_PRODUTO.E' +
      'MPRESAID(+) = EF_NFSITEM.EMPRESAID'#13#10'       AND EF_PRODUTO.PRODUT' +
      'OID(+) = EF_NFSITEM.PRODUTOID'
    DataSource = dsNfsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 327
    object sqldtsNfsItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemOBSERVACAOID: TBCDField
      FieldName = 'OBSERVACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDESCRICAOOBSERVACAO: TMemoField
      FieldName = 'DESCRICAOOBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfsItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsNfsItemQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
    end
    object sqldtsNfsItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemPORCDESCONTO: TFMTBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 8
      Size = 6
    end
    object sqldtsNfsItemVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRPRECOUNITDESC: TBCDField
      FieldName = 'VLRPRECOUNITDESC'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRPRECOTOTALDESC: TBCDField
      FieldName = 'VLRPRECOTOTALDESC'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemNFEID: TBCDField
      FieldName = 'NFEID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsNfsItemEMPENHO: TBCDField
      FieldName = 'EMPENHO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsItemQUANTIDADEEMPENHO: TBCDField
      FieldName = 'QUANTIDADEEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsNfsItemRETORNO: TStringField
      FieldName = 'RETORNO'
      Size = 2
    end
    object sqldtsNfsItemQTDRETORNA: TBCDField
      FieldName = 'QTDRETORNA'
      Precision = 8
      Size = 2
    end
    object sqldtsNfsItemVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRISENTASICMS: TBCDField
      FieldName = 'VLRISENTASICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLROUTRASICMS: TBCDField
      FieldName = 'VLROUTRASICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemPORCREDUCAOICMS: TBCDField
      FieldName = 'PORCREDUCAOICMS'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemSITTRIBUTARIAESTADUAL: TStringField
      FieldName = 'SITTRIBUTARIAESTADUAL'
      Size = 3
    end
    object sqldtsNfsItemALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsItemVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLRISENTASIPI: TBCDField
      FieldName = 'VLRISENTASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemVLROUTROIPI: TBCDField
      FieldName = 'VLROUTRASIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsItemTIPOIPI: TStringField
      FieldName = 'TIPOIPI'
      Size = 1
    end
    object sqldtsNfsItemSITTRIBUTARIAFEDERAL: TBCDField
      FieldName = 'SITTRIBUTARIAFEDERAL'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemARTIGO: TStringField
      FieldName = 'ARTIGO'
      Size = 200
    end
    object sqldtsNfsItemDATAINICIALIPI: TSQLTimeStampField
      FieldName = 'DATAINICIALIPI'
    end
    object sqldtsNfsItemDATAFINALIPI: TSQLTimeStampField
      FieldName = 'DATAFINALIPI'
    end
    object sqldtsNfsItemPRODINCENTIVADO: TBCDField
      FieldName = 'PRODINCENTIVADO'
      Precision = 1
      Size = 0
    end
    object sqldtsNfsItemESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsNfsItemL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfsItemL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object sqldtsNfsItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfsParcela: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_NFSPARCELA.EMPRESAID,'#13#10'  EF_NFSPARCELA.NFSID,'#13#10'  EF' +
      '_NFSPARCELA.DATAEMISSAOID,'#13#10'  EF_NFSPARCELA.PARCELAID,'#13#10'  EF_NFS' +
      'PARCELA.DATAVENCIMENTO,'#13#10'  EF_NFSPARCELA.DATAPAGTO,  '#13#10'  EF_NFSP' +
      'ARCELA.VLRPARCELA,'#13#10'  EF_NFSPARCELA.DUPLICATAID,'#13#10'  EF_NFSPARCEL' +
      'A.EXPORTADO,'#13#10'  EF_NFSPARCELA.VLRBASECOMISSAO,'#13#10'  EF_NFSPARCELA.' +
      'PAGTOVENDEDOR,  '#13#10'  EF_NFSPARCELA.USUARIO'#13#10'  FROM'#13#10'  EF_NFSPARCE' +
      'LA EF_NFSPARCELA'#13#10' WHERE'#13#10'  EF_NFSPARCELA.EMPRESAID = :EMPRESAID' +
      #13#10'  AND EF_NFSPARCELA.NFSID = :NFSID'#13#10'  AND EF_NFSPARCELA.DATAEM' +
      'ISSAOID = :DATAEMISSAOID'
    DataSource = dsNfsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
        Size = 16
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 413
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
    object sqldtsNfsParcelaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsNfsServico: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_NFSSERVICO.EMPRESAID,'#13#10'  EF_NFSSERVICO.NFSID,'#13#10'  EF' +
      '_NFSSERVICO.DATAEMISSAOID,'#13#10'  EF_NFSSERVICO.ITEMID,'#13#10'  EF_NFSSER' +
      'VICO.SERVICOID,'#13#10'  EF_SERVICO.GRUPOID L_GRUPOID,'#13#10'  EF_GRUPO.SIG' +
      'LAGRUPO L_SIGLAGRUPO,'#13#10'  EF_SERVICO.DESCRICAORESUMIDA L_DESCRICA' +
      'ORESUMIDA,'#13#10'  EF_NFSSERVICO.DESCRICAOSERVICO,'#13#10'  EF_NFSSERVICO.V' +
      'LRISS,'#13#10'  EF_NFSSERVICO.VLRSERVICO,'#13#10'  EF_NFSSERVICO.ALIQUOTACOF' +
      'INS,'#13#10'  EF_NFSSERVICO.VLRCOFINS,'#13#10'  EF_NFSSERVICO.ALIQUOTAPIS,'#13#10 +
      '  EF_NFSSERVICO.VLRPIS,'#13#10'  EF_NFSSERVICO.VLRRETCOFINS,'#13#10'  EF_NFS' +
      'SERVICO.VLRRETPIS,'#13#10'  EF_NFSSERVICO.VLRRETCSLL,'#13#10'  EF_NFSSERVICO' +
      '.VLRRETIRPJ,'#13#10'  EF_NFSSERVICO.VLRRETIRPF,  '#13#10'  EF_NFSSERVICO.USU' +
      'ARIO'#13#10'  FROM'#13#10'  EF_NFSSERVICO EF_NFSSERVICO,'#13#10'  EF_SERVICO EF_SE' +
      'RVICO,'#13#10'  EF_GRUPO'#13#10' WHERE'#13#10'  EF_SERVICO.EMPRESAID (+) = EF_NFSS' +
      'ERVICO.EMPRESAID'#13#10'  AND EF_SERVICO.SERVICOID (+)  = EF_NFSSERVIC' +
      'O.SERVICOID'#13#10'  AND EF_SERVICO.GRUPOID = EF_GRUPO.GRUPOID(+)'#13#10'  A' +
      'ND EF_NFSSERVICO.EMPRESAID = :EMPRESAID'#13#10'  AND EF_NFSSERVICO.NFS' +
      'ID = :NFSID'#13#10'  AND EF_NFSSERVICO.DATAEMISSAOID = :DATAEMISSAOID'
    DataSource = dsNfsLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'EMPRESAID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NFSID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATAEMISSAOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 464
    object sqldtsNfsServicoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsServicoITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoSERVICOID: TBCDField
      FieldName = 'SERVICOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsNfsServicoL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsNfsServicoL_DESCRICAORESUMIDA: TStringField
      FieldName = 'L_DESCRICAORESUMIDA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNfsServicoDESCRICAOSERVICO: TMemoField
      FieldName = 'DESCRICAOSERVICO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsNfsServicoVLRISS: TBCDField
      FieldName = 'VLRISS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRSERVICO: TBCDField
      FieldName = 'VLRSERVICO'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoALIQUOTACOFINS: TFMTBCDField
      FieldName = 'ALIQUOTACOFINS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsServicoVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoALIQUOTAPIS: TFMTBCDField
      FieldName = 'ALIQUOTAPIS'
      Precision = 14
      Size = 6
    end
    object sqldtsNfsServicoVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETCOFINS: TBCDField
      FieldName = 'VLRRETCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETPIS: TBCDField
      FieldName = 'VLRRETPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETCSLL: TBCDField
      FieldName = 'VLRRETCSLL'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETIRPJ: TBCDField
      FieldName = 'VLRRETIRPJ'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoVLRRETIRPF: TBCDField
      FieldName = 'VLRRETIRPF'
      Precision = 14
      Size = 2
    end
    object sqldtsNfsServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNfs: TDataSetProvider
    DataSet = sqldtsNfs
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 892
    Top = 285
  end
  object dsNfsLink: TDataSource
    DataSet = sqldtsNfs
    Left = 892
    Top = 327
  end
  object sqldtsCargo: TSQLDataSet
    CommandText = 
      'SELECT CARGOID,'#13#10'       DESCRICAO,'#13#10'       CONTACONTABILID,'#13#10'   ' +
      '    USUARIO'#13#10'  FROM EF_CARGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 122
    object sqldtsCargoCARGOID: TBCDField
      FieldName = 'CARGOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCargoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsCargoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsCargoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsPdeItemBar: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDEITEMBAR.EMPRESAID,'#13#10'  EF_PDEITEMBAR.PDEID,'#13#10'  EF' +
      '_PDEITEMBAR.ITEMID,'#13#10'  EF_PDEITEMBAR.ITEMBARID,'#13#10'  EF_PDEITEMBAR' +
      '.PRODUTOID,'#13#10'  EF_PDEITEMBAR.PRODUTOITEMID,'#13#10'  EF_PRODUTOITEM.IN' +
      'CENTIVOICMS L_INCENTIVOICMS,'#13#10'  EF_PRODUTOITEM.NCMID L_NCMID,'#13#10' ' +
      ' EF_PDEITEMBAR.QUANTIDADE,'#13#10'  EF_PDEITEMBAR.ESTOQUEUTILIZADO,'#13#10' ' +
      ' EF_PDEITEMBAR.USUARIO '#13#10'  FROM'#13#10'  EF_PDEITEMBAR'#13#10'  LEFT OUTER J' +
      'OIN EF_PRODUTOITEM ON ( EF_PDEITEMBAR.PRODUTOID = EF_PRODUTOITEM' +
      '.PRODUTOID AND  EF_PDEITEMBAR.PRODUTOITEMID = EF_PRODUTOITEM.PRO' +
      'DUTOITEMID )'#13#10'  WHERE'#13#10'  EF_PDEITEMBAR.EMPRESAID = :EMPRESAID'#13#10' ' +
      ' AND EF_PDEITEMBAR.PDEID = :PDEID'#13#10'  AND EF_PDEITEMBAR.ITEMID = ' +
      ':ITEMID'
    DataSource = dsPdeItemLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'PDEID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 592
    Top = 81
    object sqldtsPdeItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemBarPDEID: TBCDField
      FieldName = 'PDEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdeItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsPdeItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsPdeItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsPdeItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsPdeItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPdeItemLink: TDataSource
    DataSet = sqldtsPdeItem
    Left = 678
    Top = 81
  end
  object sqldtsNfeItemBar: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_NFEITEMBAR.EMPRESAID,'#13#10'  EF_NFEITEMBAR.NFEID,'#13#10'  EF' +
      '_NFEITEMBAR.DATAEMISSAOID,'#13#10'  EF_NFEITEMBAR.ENTIDADEID,'#13#10'  EF_NF' +
      'EITEMBAR.ITEMID,'#13#10'  EF_NFEITEMBAR.ITEMBARID,'#13#10'  EF_NFEITEMBAR.PR' +
      'ODUTOID,'#13#10'  EF_NFEITEMBAR.PRODUTOITEMID,'#13#10'  EF_PRODUTOITEM.INCEN' +
      'TIVOICMS L_INCENTIVOICMS,'#13#10'  EF_PRODUTOITEM.NCMID L_NCMID,'#13#10'  EF' +
      '_NFEITEMBAR.QUANTIDADE,  '#13#10'  EF_NFEITEMBAR.ESTOQUEUTILIZADO,'#13#10'  ' +
      'EF_NFEITEMBAR.USUARIO'#13#10'  FROM'#13#10'  EF_NFEITEMBAR,'#13#10'  EF_PRODUTOITE' +
      'M'#13#10' WHERE'#13#10'  EF_NFEITEMBAR.EMPRESAID = :EMPRESAID'#13#10'  AND EF_NFEI' +
      'TEMBAR.NFEID = :NFEID'#13#10'  AND EF_NFEITEMBAR.DATAEMISSAOID = :DATA' +
      'EMISSAOID'#13#10'  AND EF_NFEITEMBAR.ITEMID = :ITEMID'#13#10'  AND EF_NFEITE' +
      'MBAR.PRODUTOID = EF_PRODUTOITEM.PRODUTOID'#13#10'  AND EF_NFEITEMBAR.P' +
      'RODUTOITEMID = EF_PRODUTOITEM.PRODUTOITEMID'
    DataSource = dsNfeItemLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFEID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
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
    Left = 592
    Top = 287
    object sqldtsNfeItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarNFEID: TBCDField
      FieldName = 'NFEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfeItemBarENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfeItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsNfeItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfeItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsNfeItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsNfeItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfeItemLink: TDataSource
    DataSet = sqldtsNfeItem
    Left = 678
    Top = 287
  end
  object sqldtsPdsItemBar: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_PDSITEMBAR.EMPRESAID,'#13#10'  EF_PDSITEMBAR.PDSID,'#13#10'  EF' +
      '_PDSITEMBAR.ITEMID,'#13#10'  EF_PDSITEMBAR.ITEMBARID,'#13#10'  EF_PDSITEMBAR' +
      '.PRODUTOID,'#13#10'  EF_PDSITEMBAR.PRODUTOITEMID,'#13#10'  EF_PRODUTOITEM.IN' +
      'CENTIVOICMS L_INCENTIVOICMS,'#13#10'  EF_PRODUTOITEM.NCMID L_NCMID, '#13#10 +
      '  EF_PDSITEMBAR.QUANTIDADE,'#13#10'  EF_PDSITEMBAR.ESTOQUEUTILIZADO,'#13#10 +
      '  EF_PDSITEMBAR.USUARIO'#13#10'  FROM'#13#10'  EF_PDSITEMBAR,'#13#10'  EF_PRODUTOI' +
      'TEM'#13#10' WHERE'#13#10'  EF_PDSITEMBAR.EMPRESAID = :EMPRESAID'#13#10'  AND EF_PD' +
      'SITEMBAR.PDSID = :PDSID'#13#10'  AND EF_PDSITEMBAR.ITEMID = :ITEMID'#13#10' ' +
      ' AND EF_PDSITEMBAR.PRODUTOID = EF_PRODUTOITEM.PRODUTOID'#13#10'  AND E' +
      'F_PDSITEMBAR.PRODUTOITEMID = EF_PRODUTOITEM.PRODUTOITEMID'
    DataSource = dsPdsItemLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'PDSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 771
    Top = 81
    object sqldtsPdsItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemBarPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsPdsItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsPdsItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsPdsItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsPdsItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsPdsItemLink: TDataSource
    DataSet = sqldtsPdsItem
    Left = 891
    Top = 81
  end
  object sqldtsNfsItemBar: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_NFSITEMBAR.EMPRESAID,'#13#10'  EF_NFSITEMBAR.NFSID,'#13#10'  EF' +
      '_NFSITEMBAR.DATAEMISSAOID,'#13#10'  EF_NFSITEMBAR.ITEMID,'#13#10'  EF_NFSITE' +
      'MBAR.ITEMBARID,'#13#10'  EF_NFSITEMBAR.PRODUTOID,'#13#10'  EF_NFSITEMBAR.PRO' +
      'DUTOITEMID,'#13#10'  EF_PRODUTOITEM.INCENTIVOICMS L_INCENTIVOICMS,'#13#10'  ' +
      'EF_PRODUTOITEM.NCMID L_NCMID,'#13#10'  EF_NFSITEMBAR.QUANTIDADE,'#13#10'  EF' +
      '_NFSITEMBAR.ESTOQUEUTILIZADO,'#13#10'  EF_NFSITEMBAR.USUARIO'#13#10'  FROM'#13#10 +
      '  EF_NFSITEMBAR,'#13#10'  EF_PRODUTOITEM'#13#10' WHERE'#13#10'  EF_NFSITEMBAR.EMPR' +
      'ESAID = :EMPRESAID'#13#10'  AND EF_NFSITEMBAR.NFSID = :NFSID'#13#10'  AND EF' +
      '_NFSITEMBAR.DATAEMISSAOID = :DATAEMISSAOID'#13#10'  AND EF_NFSITEMBAR.' +
      'ITEMID = :ITEMID'#13#10'  AND EF_NFSITEMBAR.PRODUTOID = EF_PRODUTOITEM' +
      '.PRODUTOID'#13#10'  AND EF_NFSITEMBAR.PRODUTOITEMID = EF_PRODUTOITEM.P' +
      'RODUTOITEMID'
    DataSource = dsNfsItem
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'NFSID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftTimeStamp
        Name = 'DATAEMISSAOID'
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
    Left = 771
    Top = 371
    object sqldtsNfsItemBarEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarNFSID: TBCDField
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfsItemBarITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarITEMBARID: TBCDField
      FieldName = 'ITEMBARID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarPRODUTOITEMID: TBCDField
      FieldName = 'PRODUTOITEMID'
      Precision = 8
      Size = 0
    end
    object sqldtsNfsItemBarL_INCENTIVOICMS: TBCDField
      FieldName = 'L_INCENTIVOICMS'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsNfsItemBarL_NCMID: TStringField
      FieldName = 'L_NCMID'
      ProviderFlags = []
      Size = 10
    end
    object sqldtsNfsItemBarQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsNfsItemBarESTOQUEUTILIZADO: TStringField
      FieldName = 'ESTOQUEUTILIZADO'
      Size = 1
    end
    object sqldtsNfsItemBarUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsNfsItem: TDataSource
    DataSet = sqldtsNfsItem
    Left = 891
    Top = 371
  end
  object sqldtsModeloDocFiscal: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_MODELODOCFISCAL.MODELODOCFISCALID,'#13#10'  EF_MODELODOCF' +
      'ISCAL.MODELO,'#13#10'  EF_MODELODOCFISCAL.USUARIO'#13#10'  FROM'#13#10'  EF_MODELO' +
      'DOCFISCAL EF_MODELODOCFISCAL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 30
    Top = 165
    object sqldtsModeloDocFiscalMODELODOCFISCALID: TBCDField
      FieldName = 'MODELODOCFISCALID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsModeloDocFiscalMODELO: TStringField
      FieldName = 'MODELO'
      Size = 100
    end
    object sqldtsModeloDocFiscalUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvModeloDocFiscal: TDataSetProvider
    DataSet = sqldtsModeloDocFiscal
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 165
  end
  object sqldtsCategJuridica: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_CATEGJURIDICA.CATEGJURIDICAID,'#13#10'  EF_CATEGJURIDICA.' +
      'DESCRICAO,'#13#10'  EF_CATEGJURIDICA.USUARIO'#13#10'  FROM'#13#10'  EF_CATEGJURIDI' +
      'CA EF_CATEGJURIDICA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 250
    object sqldtsCategJuridicaCATEGJURIDICAID: TBCDField
      FieldName = 'CATEGJURIDICAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsCategJuridicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsCategJuridicaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvCategJuridica: TDataSetProvider
    DataSet = sqldtsCategJuridica
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 250
  end
  object sqldtsNaturezaJuridica: TSQLDataSet
    CommandText = 
      'SELECT EF_NATUREZAJURIDICA.NATUREZAJURIDICAID,'#13#10'       EF_NATURE' +
      'ZAJURIDICA.CATEGJURIDICAID,'#13#10'       EF_CATEGJURIDICA.DESCRICAO L' +
      '_CATEGJURIDICA,'#13#10'       EF_NATUREZAJURIDICA.DESCRICAO,'#13#10'       E' +
      'F_NATUREZAJURIDICA.RETENCAO1,'#13#10'       EF_NATUREZAJURIDICA.RETENC' +
      'AO2,'#13#10'       EF_NATUREZAJURIDICA.RETENCAO3,'#13#10'       EF_NATUREZAJ' +
      'URIDICA.RETENCAO4,'#13#10'       EF_NATUREZAJURIDICA.ALIQRETENCAOPIS,'#13 +
      #10'       EF_NATUREZAJURIDICA.ALIQRETENCAOCOFINS,'#13#10'       EF_NATUR' +
      'EZAJURIDICA.ALIQRETENCAOCSLL,'#13#10'       EF_NATUREZAJURIDICA.ALIQRE' +
      'TENCAOIRPJ,'#13#10'       EF_NATUREZAJURIDICA.ALIQRETENCAOIRPF,'#13#10'     ' +
      '  EF_NATUREZAJURIDICA.IMPRIMIRDUPLICATA,'#13#10'       EF_NATUREZAJURI' +
      'DICA.USUARIO'#13#10'  FROM EF_NATUREZAJURIDICA EF_NATUREZAJURIDICA,'#13#10' ' +
      '      EF_CATEGJURIDICA EF_CATEGJURIDICA'#13#10' WHERE EF_CATEGJURIDICA' +
      '.CATEGJURIDICAID(+) = EF_NATUREZAJURIDICA.CATEGJURIDICAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 294
    object sqldtsNaturezaJuridicaNATUREZAJURIDICAID: TBCDField
      FieldName = 'NATUREZAJURIDICAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaJuridicaCATEGJURIDICAID: TBCDField
      FieldName = 'CATEGJURIDICAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNaturezaJuridicaL_CATEGJURIDICA: TStringField
      FieldName = 'L_CATEGJURIDICA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsNaturezaJuridicaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsNaturezaJuridicaRETENCAO1: TBCDField
      FieldName = 'RETENCAO1'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaJuridicaRETENCAO2: TBCDField
      FieldName = 'RETENCAO2'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaJuridicaRETENCAO3: TBCDField
      FieldName = 'RETENCAO3'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaJuridicaRETENCAO4: TBCDField
      FieldName = 'RETENCAO4'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaJuridicaALIQRETENCAOPIS: TBCDField
      FieldName = 'ALIQRETENCAOPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsNaturezaJuridicaALIQRETENCAOCOFINS: TBCDField
      FieldName = 'ALIQRETENCAOCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsNaturezaJuridicaALIQRETENCAOCSLL: TBCDField
      FieldName = 'ALIQRETENCAOCSLL'
      Precision = 14
      Size = 2
    end
    object sqldtsNaturezaJuridicaALIQRETENCAOIRPJ: TBCDField
      FieldName = 'ALIQRETENCAOIRPJ'
      Precision = 14
      Size = 2
    end
    object sqldtsNaturezaJuridicaALIQRETENCAOIRPF: TBCDField
      FieldName = 'ALIQRETENCAOIRPF'
      Precision = 14
      Size = 2
    end
    object sqldtsNaturezaJuridicaIMPRIMIRDUPLICATA: TBCDField
      FieldName = 'IMPRIMIRDUPLICATA'
      Precision = 1
      Size = 0
    end
    object sqldtsNaturezaJuridicaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNaturezaJuridica: TDataSetProvider
    DataSet = sqldtsNaturezaJuridica
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 142
    Top = 294
  end
  object dsProdutoLink: TDataSource
    DataSet = sqldtsProduto
    Left = 501
    Top = 163
  end
  object sqldtsEntidadeDepto: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_ENTIDADEDEPTO.ENTIDADEID,'#13#10'  EF_ENTIDADEDEPTO.DEPAR' +
      'TAMENTOID,'#13#10'  EF_DEPARTAMENTO.DESCRICAO AS L_DESCRICAO_DEPTO,'#13#10' ' +
      ' EF_ENTIDADEDEPTO.USUARIO'#13#10'  FROM'#13#10'  EF_ENTIDADEDEPTO,'#13#10'  EF_DEP' +
      'ARTAMENTO '#13#10' WHERE'#13#10'  EF_DEPARTAMENTO.DEPARTAMENTOID = EF_ENTIDA' +
      'DEDEPTO.DEPARTAMENTOID'#13#10'  AND EF_ENTIDADEDEPTO.ENTIDADEID = :ENT' +
      'IDADEID'
    DataSource = dsEntidadeLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'ENTIDADEID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 237
    Top = 129
    object sqldtsEntidadeDeptoENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeDeptoDEPARTAMENTOID: TBCDField
      FieldName = 'DEPARTAMENTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsEntidadeDeptoL_DESCRICAO_DEPTO: TStringField
      FieldName = 'L_DESCRICAO_DEPTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsEntidadeDeptoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsInventario: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_INVENTARIO.HISTINVENTARIOID,'#13#10'  EF_HISTINVENTARIO.D' +
      'ATAINVENTARIO L_DATAINVENTARIO,'#13#10'  EF_HISTINVENTARIO.DESCRICAO L' +
      '_DESCR_INVENTARIO,'#13#10'  EF_INVENTARIO.INVENTARIOID,'#13#10'  EF_INVENTAR' +
      'IO.EMPRESAID,'#13#10'  EF_INVENTARIO.PRODUTOID,'#13#10'  EF_PRODUTO.GRUPOID ' +
      'L_GRUPOID,'#13#10'  EF_GRUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_PRODUTO.SU' +
      'BGRUPOID L_SUBGRUPOID,'#13#10'  EF_PRODUTO.PARTNUMBERID L_PARTNUMBERID' +
      ','#13#10'  EF_PRODUTO.DESCRICAOPORTUGUES L_DESCRICAOPORTUGUES,'#13#10'  EF_P' +
      'RODUTO.LOCALIZACAO L_LOCALIZACAO,'#13#10'  EF_PRODUTO.ESTOQUEFISICO L_' +
      'ESTOQUEFISICO,'#13#10'  EF_PRODUTO.ESTOQUETOTAL L_ESTOQUETOTAL,'#13#10'  EF_' +
      'PRODUTO.CUSTOMEDIO L_CUSTOMEDIO,'#13#10'  EF_PRODUTO.ATIVO L_ATIVO,'#13#10' ' +
      ' EF_INVENTARIO.DATAINVENTARIO,'#13#10'  EF_INVENTARIO.ESTOQUEFISICO,  ' +
      #13#10'  EF_INVENTARIO.ESTOQUEQUARENTENA,'#13#10'  EF_INVENTARIO.ESTOQUEDIF' +
      'ERENCA,'#13#10'  EF_INVENTARIO.DIFERENCASALDO,'#13#10'  EF_PRODUTO.UNIDADEID' +
      ' L_UNIDADEID,'#13#10'  EF_PRODUTO.ESTOQUEPEDENTRADA L_ESTOQUEPEDENTRAD' +
      'A,'#13#10'  EF_PRODUTO.ESTOQUEPEDSAIDA L_ESTOQUEPEDSAIDA,'#13#10'  EF_PRODUT' +
      'O.ESTOQUEEMTERCEIRO L_ESTOQUEEMTERCEIRO,'#13#10'  EF_PRODUTO.ESTOQUEDE' +
      'TERCEIRO L_ESTOQUEDETERCEIRO,'#13#10'  EF_PRODUTO.ESTOQUEMINIMO L_ESTO' +
      'QUEMINIMO,'#13#10'  EF_PRODUTO.ESTOQUEEMPENHO L_ESTOQUEEMPENHO,'#13#10'  EF_' +
      'PRODUTO.ESTOQUEVALE L_ESTOQUEVALE,'#13#10'  EF_PRODUTO.ESTOQUEESTORNO ' +
      'L_ESTOQUEESTORNO,'#13#10'  EF_PRODUTO.CUSTOTOTAL L_CUSTOTOTAL,'#13#10'  EF_P' +
      'RODUTO.ESTOQUEQUARENTENA L_ESTOQUEQUARENTENA,'#13#10'  EF_PRODUTO.VLRF' +
      'OB L_VLRFOB,'#13#10'  EF_INVENTARIO.USUARIO  '#13#10'  FROM'#13#10'  EF_INVENTARIO' +
      ' EF_INVENTARIO,'#13#10'  EF_HISTINVENTARIO EF_HISTINVENTARIO,'#13#10'  EF_PR' +
      'ODUTO EF_PRODUTO,'#13#10'  EF_GRUPO  '#13#10' WHERE'#13#10'  EF_HISTINVENTARIO.HIS' +
      'TINVENTARIOID (+) = EF_INVENTARIO.HISTINVENTARIOID'#13#10'  AND EF_PRO' +
      'DUTO.EMPRESAID(+) = EF_INVENTARIO.EMPRESAID'#13#10'  AND EF_PRODUTO.PR' +
      'ODUTOID(+) = EF_INVENTARIO.PRODUTOID'#13#10'  AND EF_PRODUTO.GRUPOID =' +
      ' EF_GRUPO.GRUPOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 399
    Top = 420
    object sqldtsInventarioHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioL_DATAINVENTARIO: TSQLTimeStampField
      FieldName = 'L_DATAINVENTARIO'
      ProviderFlags = []
    end
    object sqldtsInventarioL_DESCR_INVENTARIO: TStringField
      FieldName = 'L_DESCR_INVENTARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioINVENTARIOID: TBCDField
      FieldName = 'INVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsInventarioL_SUBGRUPOID: TBCDField
      FieldName = 'L_SUBGRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsInventarioL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsInventarioL_ATIVO: TBCDField
      FieldName = 'L_ATIVO'
      ProviderFlags = []
      Precision = 1
      Size = 0
    end
    object sqldtsInventarioL_UNIDADEID: TStringField
      FieldName = 'L_UNIDADEID'
      ProviderFlags = []
      Size = 3
    end
    object sqldtsInventarioL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUETOTAL: TBCDField
      FieldName = 'L_ESTOQUETOTAL'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEPEDENTRADA: TBCDField
      FieldName = 'L_ESTOQUEPEDENTRADA'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEPEDSAIDA: TBCDField
      FieldName = 'L_ESTOQUEPEDSAIDA'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'L_ESTOQUEEMTERCEIRO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEDETERCEIRO: TBCDField
      FieldName = 'L_ESTOQUEDETERCEIRO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEMINIMO: TBCDField
      FieldName = 'L_ESTOQUEMINIMO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEEMPENHO: TBCDField
      FieldName = 'L_ESTOQUEEMPENHO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEVALE: TBCDField
      FieldName = 'L_ESTOQUEVALE'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEESTORNO: TBCDField
      FieldName = 'L_ESTOQUEESTORNO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_ESTOQUEQUARENTENA: TBCDField
      FieldName = 'L_ESTOQUEQUARENTENA'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioL_CUSTOMEDIO: TBCDField
      FieldName = 'L_CUSTOMEDIO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsInventarioL_CUSTOTOTAL: TBCDField
      FieldName = 'L_CUSTOTOTAL'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsInventarioL_VLRFOB: TBCDField
      FieldName = 'L_VLRFOB'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsInventarioDATAINVENTARIO: TSQLTimeStampField
      FieldName = 'DATAINVENTARIO'
    end
    object sqldtsInventarioESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioESTOQUEDIFERENCA: TBCDField
      FieldName = 'ESTOQUEDIFERENCA'
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioDIFERENCASALDO: TBCDField
      FieldName = 'DIFERENCASALDO'
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvInventario: TDataSetProvider
    DataSet = sqldtsInventario
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 501
    Top = 420
  end
  object sqldtsHistInventario: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_HISTINVENTARIO.HISTINVENTARIOID,'#13#10'  EF_HISTINVENTAR' +
      'IO.DATAINVENTARIO,'#13#10'  EF_HISTINVENTARIO.DESCRICAO,'#13#10'  EF_HISTINV' +
      'ENTARIO.USUARIO'#13#10'  FROM'#13#10'  EF_HISTINVENTARIO EF_HISTINVENTARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 401
    Top = 378
    object sqldtsHistInventarioHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsHistInventarioDATAINVENTARIO: TSQLTimeStampField
      FieldName = 'DATAINVENTARIO'
    end
    object sqldtsHistInventarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsHistInventarioUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvHistInventario: TDataSetProvider
    DataSet = sqldtsHistInventario
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 501
    Top = 378
  end
  object sqldtsTipoCtgInvent: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_TIPOCTGINVENT.TIPOCTGINVENTID,'#13#10'  EF_TIPOCTGINVENT.' +
      'DESCRICAO,'#13#10'  EF_TIPOCTGINVENT.BLOQUEARDIGITACAO,'#13#10'  EF_TIPOCTGI' +
      'NVENT.USUARIO'#13#10'  FROM'#13#10'  EF_TIPOCTGINVENT EF_TIPOCTGINVENT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 401
    Top = 332
    object sqldtsTipoCtgInventTIPOCTGINVENTID: TBCDField
      FieldName = 'TIPOCTGINVENTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoCtgInventDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoCtgInventBLOQUEARDIGITACAO: TBCDField
      FieldName = 'BLOQUEARDIGITACAO'
      Precision = 1
      Size = 0
    end
    object sqldtsTipoCtgInventUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTipoCtgInvent: TDataSetProvider
    DataSet = sqldtsTipoCtgInvent
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 501
    Top = 332
  end
  object sqldtsInventarioItem: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_INVENTARIOITEM.HISTINVENTARIOID,'#13#10'  EF_INVENTARIOIT' +
      'EM.INVENTARIOID,'#13#10'  EF_INVENTARIOITEM.EMPRESAID,'#13#10'  EF_INVENTARI' +
      'OITEM.TIPOCTGINVENTID,'#13#10'  EF_TIPOCTGINVENT.DESCRICAO L_TIPOCTGIN' +
      'VENT,'#13#10'  EF_INVENTARIOITEM.DATACFGFISICA,'#13#10'  EF_INVENTARIOITEM.Q' +
      'UANTIDADE,'#13#10'  EF_INVENTARIOITEM.REALIZADORID,'#13#10'  EF_ENT_REALIZAD' +
      'OR.NOME L_NOME_REALIZADOR,'#13#10'  EF_INVENTARIOITEM.DIGITADORID,'#13#10'  ' +
      'EF_ENT_DIGITADOR.NOME L_NOME_DIGITADOR  '#13#10'  FROM'#13#10'  EF_INVENTARI' +
      'OITEM EF_INVENTARIOITEM,'#13#10'  EF_TIPOCTGINVENT EF_TIPOCTGINVENT,'#13#10 +
      '  EF_ENTIDADE EF_ENT_REALIZADOR,'#13#10'  EF_ENTIDADE EF_ENT_DIGITADOR' +
      #13#10' WHERE'#13#10'  EF_TIPOCTGINVENT.TIPOCTGINVENTID(+) = EF_INVENTARIOI' +
      'TEM.TIPOCTGINVENTID'#13#10'  AND EF_ENT_REALIZADOR.ENTIDADEID(+) = EF_' +
      'INVENTARIOITEM.REALIZADORID'#13#10'  AND EF_INVENTARIOITEM.DIGITADORID' +
      ' = EF_ENT_DIGITADOR.ENTIDADEID(+)'#13#10'  AND EF_INVENTARIOITEM.HISTI' +
      'NVENTARIOID = :HISTINVENTARIOID'#13#10'  AND EF_INVENTARIOITEM.INVENTA' +
      'RIOID = :INVENTARIOID'#13#10'  AND EF_INVENTARIOITEM.EMPRESAID = :EMPR' +
      'ESAID'
    DataSource = dsInventarioLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'HISTINVENTARIOID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'INVENTARIOID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'EMPRESAID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 399
    Top = 464
    object sqldtsInventarioItemHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioItemINVENTARIOID: TBCDField
      FieldName = 'INVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioItemTIPOCTGINVENTID: TBCDField
      FieldName = 'TIPOCTGINVENTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioItemL_TIPOCTGINVENT: TStringField
      FieldName = 'L_TIPOCTGINVENT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioItemDATACFGFISICA: TSQLTimeStampField
      FieldName = 'DATACFGFISICA'
    end
    object sqldtsInventarioItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioItemREALIZADORID: TBCDField
      FieldName = 'REALIZADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioItemL_NOME_REALIZADOR: TStringField
      FieldName = 'L_NOME_REALIZADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioItemDIGITADORID: TBCDField
      FieldName = 'DIGITADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioItemL_NOME_DIGITADOR: TStringField
      FieldName = 'L_NOME_DIGITADOR'
      ProviderFlags = []
      Size = 100
    end
  end
  object dsInventarioLink: TDataSource
    DataSet = sqldtsInventario
    Left = 501
    Top = 464
  end
  object sqldtsKdxTransf: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_KDXTRANSF.EMPRESAID,'#13#10'  EF_KDXTRANSF.KARDEXID,'#13#10'  E' +
      'F_KDXTRANSF.DATAOCORRENCIA,'#13#10'  EF_KDXTRANSF.NUMDOCUMENTO,'#13#10'  EF_' +
      'KDXTRANSF.TIPODOCUMENTO,'#13#10'  EF_KDXTRANSF.TIPOESTOQUE,'#13#10'  EF_KDXT' +
      'RANSF.OSID,'#13#10'  EF_KDXTRANSF.DIID,'#13#10'  EF_KDXTRANSF.NATUREZAOPID,'#13 +
      #10'  EF_NATUREZAOP.CFOP AS L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERA' +
      'CAOUSUARIO AS L_DESCRICAOOPERACAOUSUARIO,'#13#10'  EF_KDXTRANSF.TIPOOP' +
      'ERACAO,'#13#10'  EF_KDXTRANSF.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUG' +
      'UES AS L_DESCRICAOPORTUGUES,'#13#10'  EF_KDXTRANSF.QUANTIDADE,'#13#10'  EF_K' +
      'DXTRANSF.VLRCUSTOUNITARIO,'#13#10'  EF_KDXTRANSF.VLRCUSTOTOTAL,'#13#10'  EF_' +
      'KDXTRANSF.QUANTIDADESALDO,'#13#10'  EF_KDXTRANSF.VLRCUSTOMEDIO,'#13#10'  EF_' +
      'KDXTRANSF.VLRCUSTOMEDIOTOTAL,'#13#10'  EF_KDXTRANSF.VLRCUSTOMEDIOANTER' +
      'IOR,'#13#10'  EF_KDXTRANSF.ESTOQUENOVO,'#13#10'  EF_KDXTRANSF.ESTOQUEREVISAD' +
      'O,'#13#10'  EF_KDXTRANSF.ESTOQUEFISICO,'#13#10'  EF_KDXTRANSF.ESTOQUEPEDENTR' +
      'ADA,'#13#10'  EF_KDXTRANSF.ESTOQUEPEDSAIDA,'#13#10'  EF_KDXTRANSF.ESTOQUEEMT' +
      'ERCEIRO,'#13#10'  EF_KDXTRANSF.ESTOQUEDETERCEIRO,'#13#10'  EF_KDXTRANSF.ESTO' +
      'QUEMINIMO,'#13#10'  EF_KDXTRANSF.ESTOQUEEMPENHO,'#13#10'  EF_KDXTRANSF.ESTOQ' +
      'UEVALE,'#13#10'  EF_KDXTRANSF.ESTOQUEESTORNO,'#13#10'  EF_KDXTRANSF.ESTOQUEQ' +
      'UARENTENA,'#13#10'  EF_KDXTRANSF.ESTOQUETOTAL,'#13#10'  EF_KDXTRANSF.USUARIO' +
      #13#10'  FROM'#13#10'  EF_KDXTRANSF EF_KDXTRANSF,'#13#10'  EF_NATUREZAOP EF_NATUR' +
      'EZAOP,'#13#10'  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13#10'  EF_NATUREZAOP.NATUREZ' +
      'AOPID (+) = EF_KDXTRANSF.NATUREZAOPID'#13#10'  AND EF_PRODUTO.EMPRESAI' +
      'D (+) = EF_KDXTRANSF.EMPRESAID'#13#10'  AND EF_PRODUTO.PRODUTOID (+) =' +
      ' EF_KDXTRANSF.PRODUTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 394
    Top = 258
    object sqldtsKdxTransfEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsKdxTransfKARDEXID: TBCDField
      FieldName = 'KARDEXID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsKdxTransfDATAOCORRENCIA: TSQLTimeStampField
      FieldName = 'DATAOCORRENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsKdxTransfNUMDOCUMENTO: TBCDField
      FieldName = 'NUMDOCUMENTO'
      Precision = 8
      Size = 0
    end
    object sqldtsKdxTransfTIPODOCUMENTO: TStringField
      FieldName = 'TIPODOCUMENTO'
      Size = 3
    end
    object sqldtsKdxTransfTIPOESTOQUE: TStringField
      FieldName = 'TIPOESTOQUE'
      Size = 3
    end
    object sqldtsKdxTransfOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsKdxTransfDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsKdxTransfNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsKdxTransfL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsKdxTransfL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsKdxTransfTIPOOPERACAO: TStringField
      FieldName = 'TIPOOPERACAO'
      Size = 1
    end
    object sqldtsKdxTransfPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsKdxTransfL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsKdxTransfQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfVLRCUSTOUNITARIO: TFMTBCDField
      FieldName = 'VLRCUSTOUNITARIO'
      Precision = 20
    end
    object sqldtsKdxTransfVLRCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOTOTAL'
      Precision = 20
    end
    object sqldtsKdxTransfQUANTIDADESALDO: TBCDField
      FieldName = 'QUANTIDADESALDO'
      Precision = 14
      Size = 2
    end
    object sqldtsKdxTransfVLRCUSTOMEDIO: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIO'
      Precision = 20
    end
    object sqldtsKdxTransfVLRCUSTOMEDIOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOTOTAL'
      Precision = 20
    end
    object sqldtsKdxTransfVLRCUSTOMEDIOANTERIOR: TFMTBCDField
      FieldName = 'VLRCUSTOMEDIOANTERIOR'
      Precision = 20
    end
    object sqldtsKdxTransfESTOQUENOVO: TBCDField
      FieldName = 'ESTOQUENOVO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEREVISADO: TBCDField
      FieldName = 'ESTOQUEREVISADO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEFISICO: TBCDField
      FieldName = 'ESTOQUEFISICO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEPEDENTRADA: TBCDField
      FieldName = 'ESTOQUEPEDENTRADA'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEPEDSAIDA: TBCDField
      FieldName = 'ESTOQUEPEDSAIDA'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEEMTERCEIRO: TBCDField
      FieldName = 'ESTOQUEEMTERCEIRO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEDETERCEIRO: TBCDField
      FieldName = 'ESTOQUEDETERCEIRO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEMINIMO: TBCDField
      FieldName = 'ESTOQUEMINIMO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEEMPENHO: TBCDField
      FieldName = 'ESTOQUEEMPENHO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEVALE: TBCDField
      FieldName = 'ESTOQUEVALE'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEESTORNO: TBCDField
      FieldName = 'ESTOQUEESTORNO'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUEQUARENTENA: TBCDField
      FieldName = 'ESTOQUEQUARENTENA'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfESTOQUETOTAL: TBCDField
      FieldName = 'ESTOQUETOTAL'
      Precision = 8
      Size = 2
    end
    object sqldtsKdxTransfUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvKdxTransf: TDataSetProvider
    DataSet = sqldtsKdxTransf
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 501
    Top = 258
  end
  object dsprvPrecoTransf: TDataSetProvider
    DataSet = sqldtsPrecoTransf
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 680
    Top = 336
  end
  object sqldtsPrecoTransf: TSQLDataSet
    CommandText = 
      'SELECT NFS_MERCADORIAS.NFSID,'#13#10'       NFS_MERCADORIAS.DATAEMISSA' +
      'OID,'#13#10'       NFS_MERCADORIAS.OSID,'#13#10'       NFS_MERCADORIAS.ENTID' +
      'ADEID,'#13#10'       NFS_MERCADORIAS.NOME,'#13#10'       NFS_MERCADORIAS.CID' +
      'ADE,'#13#10'       NFS_MERCADORIAS.SIGLAUFID,'#13#10'       NFS_MERCADORIAS.' +
      'NATUREZAOPID,'#13#10'       NFS_MERCADORIAS.CFOP,'#13#10'       NFS_MERCADOR' +
      'IAS.DESCRICAOOPERACAONOTA,'#13#10'       NFS_MERCADORIAS.EMP_SIMILARID' +
      ','#13#10'       NFS_MERCADORIAS.PROD_SIMILARID,'#13#10'       NFS_MERCADORIA' +
      'S.DESCRICAOPRODUTO,'#13#10'       NFS_MERCADORIAS.QUANTIDADE,'#13#10'       ' +
      'NFS_MERCADORIAS.VLRPRECOUNITARIO,'#13#10'       NFS_MERCADORIAS.VLRPRE' +
      'COTOTAL,'#13#10'       NFS_MERCADORIAS.VLRPIS,'#13#10'       NFS_MERCADORIAS' +
      '.VLRCOFINS,'#13#10'       NFS_MERCADORIAS.ALIQUOTAICMS,       '#13#10'      ' +
      ' NFS_MERCADORIAS.VLRICMS,              '#13#10'       NFS_MERCADORIAS.' +
      'PARTNUMBERID,'#13#10'       NFS_MERCADORIAS.NCMID,'#13#10'       NFS_MERCADO' +
      'RIAS.DESCRICAONCM,'#13#10'       PROD_MEDIA_VENDA.QUANTIDADE QTD_MOV_P' +
      'ERIODO,'#13#10'       PROD_MEDIA_VENDA.VLRUNITARIO VLR_MOV_UNITARIA,'#13#10 +
      '       PROD_MEDIA_VENDA.VLRTOTAL VLR_MOV_TOTAL,'#13#10'       ROUND( P' +
      'ROD_MEDIA_VENDA.VLRTOTAL/PROD_MEDIA_VENDA.QUANTIDADE,2 )  VLR_ME' +
      'DIA_TOTAL,'#13#10'       PROD_MEDIA_VENDA.VLRMEDIAVENDA VLRMEDIATOTALV' +
      'ENDAAPURADA,'#13#10'       EF_KDXTRANSF.VLRCUSTOUNITARIO,'#13#10'       EF_K' +
      'DXTRANSF.VLRCUSTOTOTAL , /* Preco Praticado */'#13#10'       /* Valor ' +
      'do Pre'#231'o de transfer'#234'ncia */'#13#10'       ROUND( ( PROD_MEDIA_VENDA.V' +
      'LRMEDIAVENDA / PROD_MEDIA_VENDA.QUANTIDADE ) '#13#10'         * NFS_ME' +
      'RCADORIAS.QUANTIDADE, 2 ) VLRPRECOTRANSF,'#13#10'       /* Valor apura' +
      'do do ajuste */'#13#10'       (CASE '#13#10'         WHEN ROUND((PROD_MEDIA_' +
      'VENDA.VLRMEDIAVENDA / PROD_MEDIA_VENDA.QUANTIDADE) *'#13#10'          ' +
      '   NFS_MERCADORIAS.QUANTIDADE,'#13#10'             2) < EF_KDXTRANSF.V' +
      'LRCUSTOTOTAL THEN '#13#10'          ( ROUND((PROD_MEDIA_VENDA.VLRMEDIA' +
      'VENDA / PROD_MEDIA_VENDA.QUANTIDADE) *'#13#10'             NFS_MERCADO' +
      'RIAS.QUANTIDADE,'#13#10'             2)) - EF_KDXTRANSF.VLRCUSTOTOTAL ' +
      #13#10'         ELSE'#13#10'          0'#13#10'       END) VLR_AJUSTE'#13#10'       FRO' +
      'M /* Todas as vendas de mercadorias no per'#237'odo ( com o c'#225'lculo d' +
      'o novo para de empresa / produto */'#13#10'       (SELECT EF_NFSITEM.E' +
      'MPRESAID,'#13#10'               EF_NFSITEM.NFSID,'#13#10'               EF_N' +
      'FSITEM.DATAEMISSAOID,'#13#10'               EF_NFS.OSID,'#13#10'            ' +
      '   EF_NFS.ENTIDADEID,'#13#10'               EF_NFS.NOME,'#13#10'            ' +
      '   EF_NFS.CIDADE,'#13#10'               EF_NFS.SIGLAUFID,'#13#10'           ' +
      '    EF_NFS.NATUREZAOPID,'#13#10'               EF_NATUREZAOP.CFOP,'#13#10'  ' +
      '             EF_NATUREZAOP.DESCRICAOOPERACAONOTA,'#13#10'             ' +
      '  EF_PRODUTO.NCMID,'#13#10'               EF_PRODUTO.DESCRICAONCM,'#13#10'  ' +
      '             EF_PRODUTO.PARTNUMBERID,'#13#10'               (CASE'#13#10'   ' +
      '              WHEN (EF_NFSITEM.EMPRESAID = 12 AND'#13#10'             ' +
      '         EF_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN'#13#10'        ' +
      '          EF_PRODUTO.EMPRESASIMILARID'#13#10'                 ELSE'#13#10'  ' +
      '                EF_PRODUTO.EMPRESAID'#13#10'               END) AS EMP' +
      '_SIMILARID,'#13#10'               (CASE'#13#10'                 WHEN (EF_NFS' +
      'ITEM.EMPRESAID = 12 AND'#13#10'                      EF_PRODUTO.PRODUT' +
      'OSIMILARID IS NOT NULL) THEN'#13#10'                  EF_PRODUTO.PRODU' +
      'TOSIMILARID'#13#10'                 ELSE'#13#10'                  EF_PRODUTO' +
      '.PRODUTOID'#13#10'               END) AS PROD_SIMILARID,'#13#10'            ' +
      '   EF_NFSITEM.QUANTIDADE,'#13#10'               EF_NFSITEM.DESCRICAOPR' +
      'ODUTO,'#13#10'               EF_NFSITEM.VLRPRECOUNITARIO,'#13#10'           ' +
      '    EF_NFSITEM.VLRPRECOTOTAL,'#13#10'               EF_NFSITEM.VLRPIS,' +
      #13#10'               EF_NFSITEM.VLRCOFINS,'#13#10'               EF_NFSITE' +
      'M.ALIQUOTAICMS,'#13#10'               EF_NFSITEM.VLRICMS'#13#10'          FR' +
      'OM EF_NFSITEM,'#13#10'               EF_NFS EF_NFS,'#13#10'               EF' +
      '_NATUREZAOP EF_NATUREZAOP,'#13#10'               EF_PRODUTO EF_PRODUTO' +
      #13#10'         WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID AND'#13#10'  ' +
      '             EF_NFS.NFSID = EF_NFSITEM.NFSID AND'#13#10'              ' +
      ' EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID AND'#13#10'          ' +
      '     EF_NFSITEM.DATAEMISSAOID >='#13#10'               TO_DATE( :pDatI' +
      'ni, '#39'DD/MM/YYYY'#39') AND'#13#10'               EF_NFSITEM.DATAEMISSAOID <' +
      '='#13#10'               TO_DATE( :pDatFim, '#39'DD/MM/YYYY'#39') AND'#13#10'        ' +
      '       EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID AND'#13#10 +
      '               NVL(EF_NATUREZAOP.VENDADEFINITIVA, 0) = 1 AND'#13#10'  ' +
      '             EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID AND'#13#10'  ' +
      '             EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID AND'#13#10'  ' +
      '             EF_PRODUTO.ORIGEM = '#39'I'#39#13#10'         ORDER BY 15, 16) ' +
      'NFS_MERCADORIAS,'#13#10'       /* Resumo da m'#233'dia de venda apurada do ' +
      'produto com as dedu'#231#245'es */'#13#10'       (SELECT (CASE'#13#10'              ' +
      '   WHEN (EF_NFSITEM.EMPRESAID = 12 AND'#13#10'                      EF' +
      '_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN'#13#10'                  E' +
      'F_PRODUTO.EMPRESASIMILARID'#13#10'                 ELSE'#13#10'             ' +
      '     EF_PRODUTO.EMPRESAID'#13#10'               END) AS EMP_SIMILARID,' +
      #13#10'               '#13#10'               (CASE'#13#10'                 WHEN (' +
      'EF_NFSITEM.EMPRESAID = 12 AND'#13#10'                      EF_PRODUTO.' +
      'PRODUTOSIMILARID IS NOT NULL) THEN'#13#10'                  EF_PRODUTO' +
      '.PRODUTOSIMILARID'#13#10'                 ELSE'#13#10'                  EF_P' +
      'RODUTO.PRODUTOID'#13#10'               END) AS PROD_SIMILARID,'#13#10'      ' +
      '         EF_PRODUTO.PARTNUMBERID,'#13#10'               SUM(EF_NFSITEM' +
      '.QUANTIDADE) QUANTIDADE,'#13#10'               SUM(EF_NFSITEM.VLRPRECO' +
      'UNITARIO) VLRUNITARIO,'#13#10'               SUM(EF_NFSITEM.VLRPRECOTO' +
      'TAL) VLRTOTAL,'#13#10'               '#13#10'               /* Media de Vend' +
      'a apurada */'#13#10'               SUM(EF_NFSITEM.VLRPRECOTOTAL -'#13#10'   ' +
      '                ((20 * EF_NFSITEM.VLRPRECOTOTAL / 100) +'#13#10'      ' +
      '             '#13#10'                   (CASE EF_NFSITEM.EMPRESAID'#13#10'  ' +
      '                   WHEN 1 THEN'#13#10'                      EF_NFSITEM' +
      '.VLRICMS'#13#10'                     WHEN 12 THEN'#13#10'                   ' +
      '   DECODE(EF_NFS.SIGLAUFID,'#13#10'                             '#39'PE'#39','#13 +
      #10'                             EF_NFSITEM.VLRICMS,'#13#10'             ' +
      '                (47.5 * EF_NFSITEM.VLRICMS / 100))'#13#10'            ' +
      '       END) + EF_NFSITEM.VLRPIS + EF_NFSITEM.VLRCOFINS +'#13#10'      ' +
      '             /* Comiss'#227'o sobre representa'#231#227'o */'#13#10'               ' +
      '    (CASE EF_PRODUTO.SUBGRUPOID'#13#10'                     WHEN 8 THE' +
      'N'#13#10'                      (5 * EF_NFSITEM.VLRPRECOTOTAL / 100)'#13#10' ' +
      '                    ELSE'#13#10'                      0'#13#10'             ' +
      '      END))) VLRMEDIAVENDA'#13#10'          FROM EF_NFSITEM    EF_NFSI' +
      'TEM,'#13#10'               EF_NFS        EF_NFS,'#13#10'               EF_NA' +
      'TUREZAOP EF_NATUREZAOP,'#13#10'               EF_PRODUTO    EF_PRODUTO' +
      #13#10'         WHERE EF_NFS.EMPRESAID = EF_NFSITEM.EMPRESAID AND'#13#10'  ' +
      '             EF_NFS.NFSID = EF_NFSITEM.NFSID AND'#13#10'              ' +
      ' EF_NFS.DATAEMISSAOID = EF_NFSITEM.DATAEMISSAOID AND'#13#10'          ' +
      '     EF_NFSITEM.DATAEMISSAOID >='#13#10'               TO_DATE( :pDatI' +
      'ni2, '#39'DD/MM/YYYY'#39') AND'#13#10'               EF_NFSITEM.DATAEMISSAOID ' +
      '<='#13#10'               TO_DATE( :pDatFim2, '#39'DD/MM/YYYY'#39') AND'#13#10'      ' +
      '         EF_NATUREZAOP.NATUREZAOPID(+) = EF_NFS.NATUREZAOPID AND' +
      #13#10'               NVL(EF_NATUREZAOP.VENDADEFINITIVA, 0) = 1 AND'#13#10 +
      '               EF_PRODUTO.EMPRESAID = EF_NFSITEM.EMPRESAID AND'#13#10 +
      '               EF_PRODUTO.PRODUTOID = EF_NFSITEM.PRODUTOID AND'#13#10 +
      '               EF_PRODUTO.ORIGEM = '#39'I'#39#13#10'         GROUP BY (CASE'#13 +
      #10'                    WHEN (EF_NFSITEM.EMPRESAID = 12 AND'#13#10'      ' +
      '                   EF_PRODUTO.EMPRESASIMILARID IS NOT NULL) THEN' +
      #13#10'                     EF_PRODUTO.EMPRESASIMILARID'#13#10'            ' +
      '        ELSE'#13#10'                     EF_PRODUTO.EMPRESAID'#13#10'       ' +
      '           END),'#13#10'                  '#13#10'                  (CASE'#13#10' ' +
      '                   WHEN (EF_NFSITEM.EMPRESAID = 12 AND'#13#10'        ' +
      '                 EF_PRODUTO.PRODUTOSIMILARID IS NOT NULL) THEN'#13#10 +
      '                     EF_PRODUTO.PRODUTOSIMILARID'#13#10'              ' +
      '      ELSE'#13#10'                     EF_PRODUTO.PRODUTOID'#13#10'         ' +
      '         END),'#13#10'                  EF_PRODUTO.PARTNUMBERID) PROD_' +
      'MEDIA_VENDA,                  '#13#10'       /* Custo das sa'#237'das */   ' +
      '        '#13#10'       EF_KDXTRANSF'#13#10' WHERE PROD_MEDIA_VENDA.EMP_SIMIL' +
      'ARID  = NFS_MERCADORIAS.EMP_SIMILARID AND'#13#10'       PROD_MEDIA_VEN' +
      'DA.PROD_SIMILARID = NFS_MERCADORIAS.PROD_SIMILARID AND      '#13#10'  ' +
      '     EF_KDXTRANSF.EMPRESAID(+) = NFS_MERCADORIAS.EMP_SIMILARID A' +
      'ND'#13#10'       EF_KDXTRANSF.PRODUTOID(+) = NFS_MERCADORIAS.PROD_SIMI' +
      'LARID AND'#13#10'       EF_KDXTRANSF.NUMDOCUMENTO(+) = NFS_MERCADORIAS' +
      '.NFSID AND'#13#10'       EF_KDXTRANSF.DATAOCORRENCIA(+) = NFS_MERCADOR' +
      'IAS.DATAEMISSAOID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pDatIni'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pDatFim'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pDatIni2'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pDatFim2'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 592
    Top = 336
    object sqldtsPrecoTransfNFSID: TBCDField
      FieldName = 'NFSID'
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPrecoTransfDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      Required = True
    end
    object sqldtsPrecoTransfOSID: TStringField
      FieldName = 'OSID'
      Size = 13
    end
    object sqldtsPrecoTransfENTIDADEID: TBCDField
      FieldName = 'ENTIDADEID'
      Precision = 8
      Size = 0
    end
    object sqldtsPrecoTransfNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsPrecoTransfCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object sqldtsPrecoTransfSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsPrecoTransfNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsPrecoTransfCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object sqldtsPrecoTransfDESCRICAOOPERACAONOTA: TStringField
      FieldName = 'DESCRICAOOPERACAONOTA'
      Size = 100
    end
    object sqldtsPrecoTransfEMP_SIMILARID: TFMTBCDField
      FieldName = 'EMP_SIMILARID'
      Precision = 32
    end
    object sqldtsPrecoTransfPROD_SIMILARID: TFMTBCDField
      FieldName = 'PROD_SIMILARID'
      Precision = 32
    end
    object sqldtsPrecoTransfDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsPrecoTransfQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 20
      Size = 0
    end
    object sqldtsPrecoTransfVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsPrecoTransfVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsPrecoTransfVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsPrecoTransfVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsPrecoTransfALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsPrecoTransfVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsPrecoTransfPARTNUMBERID: TStringField
      FieldName = 'PARTNUMBERID'
    end
    object sqldtsPrecoTransfNCMID: TStringField
      FieldName = 'NCMID'
      Size = 10
    end
    object sqldtsPrecoTransfDESCRICAONCM: TStringField
      FieldName = 'DESCRICAONCM'
      Size = 300
    end
    object sqldtsPrecoTransfQTD_MOV_PERIODO: TFMTBCDField
      FieldName = 'QTD_MOV_PERIODO'
      Precision = 32
    end
    object sqldtsPrecoTransfVLR_MOV_UNITARIA: TFMTBCDField
      FieldName = 'VLR_MOV_UNITARIA'
      Precision = 32
    end
    object sqldtsPrecoTransfVLR_MOV_TOTAL: TFMTBCDField
      FieldName = 'VLR_MOV_TOTAL'
      Precision = 32
    end
    object sqldtsPrecoTransfVLRMEDIATOTALVENDAAPURADA: TFMTBCDField
      FieldName = 'VLRMEDIATOTALVENDAAPURADA'
      Precision = 32
    end
    object sqldtsPrecoTransfVLRCUSTOUNITARIO: TFMTBCDField
      FieldName = 'VLRCUSTOUNITARIO'
      Precision = 20
    end
    object sqldtsPrecoTransfVLRCUSTOTOTAL: TFMTBCDField
      FieldName = 'VLRCUSTOTOTAL'
      Precision = 20
    end
    object sqldtsPrecoTransfVLRPRECOTRANSF: TFMTBCDField
      FieldName = 'VLRPRECOTRANSF'
      Precision = 32
    end
    object sqldtsPrecoTransfVLR_AJUSTE: TFMTBCDField
      FieldName = 'VLR_AJUSTE'
      Precision = 32
    end
    object sqldtsPrecoTransfVLR_MEDIA_TOTAL: TFMTBCDField
      FieldName = 'VLR_MEDIA_TOTAL'
      Precision = 32
    end
  end
  object sqldtsPdsLogReserva: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT EF_PDSLOGRESERVA.EMPRESAID,'#13#10'       EF_PDSLOGRESERVA.PDSI' +
      'D,'#13#10'       EF_PDSLOGRESERVA.LIBERADO,'#13#10'       EF_PDSLOGRESERVA.L' +
      'IBUSUARIO,'#13#10'       EF_PDSLOGRESERVA.LOGRESERVA,'#13#10'       EF_PDS.D' +
      'ATAPEDIDO L_DATAPEDIDO,'#13#10'       EF_PDS.OSID L_OSID,'#13#10'       EF_P' +
      'DS.NOME L_NOME,'#13#10'       EF_PDS.CIDADE L_CIDADE,'#13#10'       EF_PDS.S' +
      'IGLAUFID L_SIGLAUFID,'#13#10'       EF_PDS.NATUREZAOPID L_NATUREZAOPID' +
      ','#13#10'       EF_PDS.CONDPAGTOID L_CONDPAGTOID,'#13#10'       EF_PDS.VLRTO' +
      'TALPRODUTO L_VLRTOTALPRODUTO,'#13#10'       EF_PDS.VLRTOTALNOTA L_VLRT' +
      'OTALNOTA,'#13#10'       EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO L_DESCR' +
      'ICAOOPERACAOUSUARIO,'#13#10'       EF_NATUREZAOP.CFOP L_CFOP,'#13#10'       ' +
      'EF_CONDPAGTO.DESCRICAO L_DESCRICAOCONDPAGTO,'#13#10'       EF_PDSLOGRE' +
      'SERVA.USUARIO'#13#10'  FROM EF_PDSLOGRESERVA EF_PDSLOGRESERVA,'#13#10'      ' +
      ' EF_PDS EF_PDS,'#13#10'       EF_NATUREZAOP EF_NATUREZAOP,'#13#10'       EF_' +
      'CONDPAGTO EF_CONDPAGTO'#13#10' WHERE EF_PDS.EMPRESAID(+) = EF_PDSLOGRE' +
      'SERVA.EMPRESAID'#13#10'       AND EF_PDS.PDSID(+) = EF_PDSLOGRESERVA.P' +
      'DSID'#13#10'       AND EF_NATUREZAOP.NATUREZAOPID = EF_PDS.NATUREZAOPI' +
      'D'#13#10'       AND EF_CONDPAGTO.CONDPAGTOID(+) = EF_PDS.CONDPAGTOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 205
    object sqldtsPdsLogReservaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaLIBERADO: TBCDField
      FieldName = 'LIBERADO'
      Precision = 1
      Size = 0
    end
    object sqldtsPdsLogReservaLIBUSUARIO: TStringField
      FieldName = 'LIBUSUARIO'
    end
    object sqldtsPdsLogReservaLOGRESERVA: TMemoField
      FieldName = 'LOGRESERVA'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsPdsLogReservaL_DATAPEDIDO: TSQLTimeStampField
      FieldName = 'L_DATAPEDIDO'
      ProviderFlags = []
    end
    object sqldtsPdsLogReservaL_OSID: TStringField
      FieldName = 'L_OSID'
      ProviderFlags = []
      Size = 13
    end
    object sqldtsPdsLogReservaL_NOME: TStringField
      FieldName = 'L_NOME'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsLogReservaL_CIDADE: TStringField
      FieldName = 'L_CIDADE'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPdsLogReservaL_SIGLAUFID: TStringField
      FieldName = 'L_SIGLAUFID'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsPdsLogReservaL_NATUREZAOPID: TBCDField
      FieldName = 'L_NATUREZAOPID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaL_CONDPAGTOID: TBCDField
      FieldName = 'L_CONDPAGTOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaL_VLRTOTALPRODUTO: TBCDField
      FieldName = 'L_VLRTOTALPRODUTO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsPdsLogReservaL_VLRTOTALNOTA: TBCDField
      FieldName = 'L_VLRTOTALNOTA'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsPdsLogReservaL_DESCRICAOOPERACAOUSUARIO: TStringField
      FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsLogReservaL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsPdsLogReservaL_DESCRICAOCONDPAGTO: TStringField
      FieldName = 'L_DESCRICAOCONDPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsPdsLogReservaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvPdsLogReserva: TDataSetProvider
    DataSet = sqldtsPdsLogReserva
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 892
    Top = 205
  end
  object sqldtsPdsLogReservaItem: TSQLDataSet
    CommandText = 
      'SELECT EF_PDSITEM.EMPRESAID,'#13#10'       EF_PDSITEM.PDSID,'#13#10'       E' +
      'F_PDSITEM.ITEMID,'#13#10'       EF_PDSITEM.PRODUTOID,'#13#10'       EF_PDSIT' +
      'EM.DESCRICAOPRODUTO,'#13#10'       EF_PRODUTO.PARTNUMBERID L_PARTNUMBE' +
      'RID,'#13#10'       EF_PRODUTO.LOCALIZACAO L_LOCALIZACAO,'#13#10'       EF_PD' +
      'SITEM.QUANTIDADE,'#13#10'       EF_PDSITEM.VLRPRECOUNITARIO,'#13#10'       E' +
      'F_PDSITEM.VLRPRECOTOTAL'#13#10'  FROM EF_PDSITEM EF_PDSITEM,'#13#10'       E' +
      'F_PRODUTO EF_PRODUTO'#13#10' WHERE EF_PDSITEM.EMPRESAID = EF_PRODUTO.E' +
      'MPRESAID(+)'#13#10'       AND EF_PDSITEM.PRODUTOID = EF_PRODUTO.PRODUT' +
      'OID(+)'#13#10'       AND EF_PDSITEM.EMPRESAID = :EMPRESAID'#13#10'       AND' +
      ' EF_PDSITEM.PDSID = :PDSID'
    DataSource = dsPdsLogReservaLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'EMPRESAID'
        ParamType = ptInput
        Size = 34
      end
      item
        DataType = ftBCD
        Name = 'PDSID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 772
    Top = 248
    object sqldtsPdsLogReservaItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaItemPDSID: TBCDField
      FieldName = 'PDSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsPdsLogReservaItemDESCRICAOPRODUTO: TStringField
      FieldName = 'DESCRICAOPRODUTO'
      Size = 100
    end
    object sqldtsPdsLogReservaItemL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsPdsLogReservaItemL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsPdsLogReservaItemQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsPdsLogReservaItemVLRPRECOUNITARIO: TBCDField
      FieldName = 'VLRPRECOUNITARIO'
      Precision = 14
      Size = 2
    end
    object sqldtsPdsLogReservaItemVLRPRECOTOTAL: TBCDField
      FieldName = 'VLRPRECOTOTAL'
      Precision = 14
      Size = 2
    end
  end
  object dsPdsLogReservaLink: TDataSource
    DataSet = sqldtsPdsLogReserva
    Left = 892
    Top = 248
  end
  object sqldtsInventarioDig: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  EF_INVENTARIODIG.HISTINVENTARIOID,'#13#10'  EF_INVENTARIODIG' +
      '.INVENTARIOID,'#13#10'  EF_INVENTARIODIG.EMPRESAID,'#13#10'  EF_INVENTARIODI' +
      'G.TIPOCTGINVENTID,'#13#10'  EF_TIPOCTGINVENT.DESCRICAO L_TIPOCTGINVENT' +
      ','#13#10'  EF_INVENTARIODIG.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUE' +
      'S L_DESCRICAOPORTUGUES,'#13#10'  EF_PRODUTO.GRUPOID L_GRUPOID,'#13#10'  EF_G' +
      'RUPO.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'  EF_PRODUTO.PARTNUMBERID L_PARTN' +
      'UMBERID,'#13#10'  EF_PRODUTO.LOCALIZACAO L_LOCALIZACAO,'#13#10'  EF_PRODUTO.' +
      'CUSTOMEDIO L_CUSTOMEDIO,'#13#10'  EF_PRODUTO.CUSTOTOTAL L_CUSTOTOTAL,'#13 +
      #10'  EF_PRODUTO.ESTOQUEFISICO L_ESTOQUEFISICO,'#13#10'  EF_INVENTARIODIG' +
      '.DATACFGFISICA,'#13#10'  EF_INVENTARIODIG.QUANTIDADE,'#13#10'  EF_INVENTARIO' +
      'DIG.REALIZADORID,'#13#10'  EF_ENT_REALIZADOR.NOME L_NOME_REALIZADOR,'#13#10 +
      '  EF_INVENTARIODIG.DIGITADORID,'#13#10'  EF_ENT_DIGITADOR.NOME L_NOME_' +
      'DIGITADOR,'#13#10'  EF_INVENTARIODIG.DIFERENCASALDO'#13#10'  FROM'#13#10'  EF_INVE' +
      'NTARIODIG EF_INVENTARIODIG,'#13#10'  EF_TIPOCTGINVENT EF_TIPOCTGINVENT' +
      ','#13#10'  EF_ENTIDADE EF_ENT_REALIZADOR,'#13#10'  EF_ENTIDADE EF_ENT_DIGITA' +
      'DOR,'#13#10'  EF_PRODUTO EF_PRODUTO,'#13#10'  EF_GRUPO'#13#10' WHERE'#13#10'  EF_TIPOCTG' +
      'INVENT.TIPOCTGINVENTID(+) = EF_INVENTARIODIG.TIPOCTGINVENTID'#13#10'  ' +
      'AND EF_ENT_REALIZADOR.ENTIDADEID(+) = EF_INVENTARIODIG.REALIZADO' +
      'RID'#13#10'  AND EF_INVENTARIODIG.DIGITADORID = EF_ENT_DIGITADOR.ENTID' +
      'ADEID(+)'#13#10'  AND EF_PRODUTO.GRUPOID = EF_GRUPO.GRUPOID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 400
    Top = 504
    object sqldtsInventarioDigHISTINVENTARIOID: TBCDField
      FieldName = 'HISTINVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigINVENTARIOID: TBCDField
      FieldName = 'INVENTARIOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigTIPOCTGINVENTID: TBCDField
      FieldName = 'TIPOCTGINVENTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigL_TIPOCTGINVENT: TStringField
      FieldName = 'L_TIPOCTGINVENT'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioDigPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigL_DESCRICAOPORTUGUES: TStringField
      FieldName = 'L_DESCRICAOPORTUGUES'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioDigL_GRUPOID: TBCDField
      FieldName = 'L_GRUPOID'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsInventarioDigL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsInventarioDigL_LOCALIZACAO: TStringField
      FieldName = 'L_LOCALIZACAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsInventarioDigL_CUSTOMEDIO: TBCDField
      FieldName = 'L_CUSTOMEDIO'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsInventarioDigL_CUSTOTOTAL: TBCDField
      FieldName = 'L_CUSTOTOTAL'
      ProviderFlags = []
      Precision = 14
      Size = 2
    end
    object sqldtsInventarioDigL_ESTOQUEFISICO: TBCDField
      FieldName = 'L_ESTOQUEFISICO'
      ProviderFlags = []
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioDigDATACFGFISICA: TSQLTimeStampField
      FieldName = 'DATACFGFISICA'
    end
    object sqldtsInventarioDigQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 2
    end
    object sqldtsInventarioDigREALIZADORID: TBCDField
      FieldName = 'REALIZADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigL_NOME_REALIZADOR: TStringField
      FieldName = 'L_NOME_REALIZADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioDigDIGITADORID: TBCDField
      FieldName = 'DIGITADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsInventarioDigL_NOME_DIGITADOR: TStringField
      FieldName = 'L_NOME_DIGITADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsInventarioDigDIFERENCASALDO: TBCDField
      FieldName = 'DIFERENCASALDO'
      Precision = 8
      Size = 0
    end
  end
  object dsprvInventarioDig: TDataSetProvider
    DataSet = sqldtsInventarioDig
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 504
  end
  object sqldtsBudget: TSQLDataSet
    CommandText = 
      'SELECT EF_BUDGET.BUDGETID,'#13#10'       EF_BUDGET.DATABUDGET,'#13#10'      ' +
      ' EF_BUDGET.DESCRICAO_BUDGET,'#13#10'       EF_BUDGET.SIGLA_DEPTO,'#13#10'   ' +
      '    EF_BUDGET.IDENTIFICADOR_NOTA,'#13#10'       EF_BUDGET.GRUPOID,'#13#10'  ' +
      '     EF_GRUPO.DESCRICAO L_DESCRICAOGRUPO,'#13#10'       EF_GRUPO.SIGLA' +
      'GRUPO L_SIGLAGRUPO,'#13#10'       EF_BUDGET.SUBGRUPOID,'#13#10'       EF_SUB' +
      'GRUPO.SIGLAGRUPO L_SIGLASUBGRUPO,'#13#10'       EF_SUBGRUPO.DESCRICAO ' +
      'L_DESCRICAOSUBGRUPO,'#13#10'       EF_BUDGET.VLRBUDGET,'#13#10'       EF_BUD' +
      'GET.USUARIO'#13#10'  FROM EF_BUDGET EF_BUDGET,'#13#10'       EF_GRUPO EF_GRU' +
      'PO,'#13#10'       EF_SUBGRUPO EF_SUBGRUPO'#13#10' WHERE EF_GRUPO.GRUPOID(+) ' +
      '= EF_BUDGET.GRUPOID'#13#10'       AND EF_SUBGRUPO.SUBGRUPOID(+) = EF_B' +
      'UDGET.SUBGRUPOID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 512
    object sqldtsBudgetBUDGETID: TBCDField
      FieldName = 'BUDGETID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsBudgetDATABUDGET: TSQLTimeStampField
      FieldName = 'DATABUDGET'
    end
    object sqldtsBudgetDESCRICAO_BUDGET: TStringField
      FieldName = 'DESCRICAO_BUDGET'
      Size = 100
    end
    object sqldtsBudgetSIGLA_DEPTO: TStringField
      FieldName = 'SIGLA_DEPTO'
      FixedChar = True
      Size = 3
    end
    object sqldtsBudgetIDENTIFICADOR_NOTA: TStringField
      FieldName = 'IDENTIFICADOR_NOTA'
      FixedChar = True
      Size = 1
    end
    object sqldtsBudgetGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsBudgetL_DESCRICAOGRUPO: TStringField
      FieldName = 'L_DESCRICAOGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBudgetL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsBudgetSUBGRUPOID: TBCDField
      FieldName = 'SUBGRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsBudgetL_SIGLASUBGRUPO: TStringField
      FieldName = 'L_SIGLASUBGRUPO'
      ProviderFlags = []
      Size = 5
    end
    object sqldtsBudgetL_DESCRICAOSUBGRUPO: TStringField
      FieldName = 'L_DESCRICAOSUBGRUPO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsBudgetVLRBUDGET: TFMTBCDField
      FieldName = 'VLRBUDGET'
      Precision = 32
    end
    object sqldtsBudgetUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvBudget: TDataSetProvider
    DataSet = sqldtsBudget
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 512
  end
  object sqldtsNotas_Dev: TSQLDataSet
    CommandText = 
      'SELECT EF_NOTAS_DEV.EMPRESAID,'#13#10'       EF_NOTAS_DEV.EF_NOTAID,'#13#10 +
      '       EF_NOTAS_DEV.NOTAID,'#13#10'       EF_NOTAS_DEV.DATAEMISSAOID,'#13 +
      #10'       EF_NOTAS_DEV.DATADEVOLUCAO,'#13#10'       EF_NOTAS_DEV.VLRDEVO' +
      'LUCAO,'#13#10'       EF_NOTAS_DEV.TIPOMOVIMENTO,'#13#10'       EF_NOTAS_DEV.' +
      'USUARIO'#13#10'  FROM EF_NOTAS_DEV'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 568
    object sqldtsNotas_DevEF_NOTAID: TBCDField
      FieldName = 'EF_NOTAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNotas_DevEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNotas_DevNOTAID: TBCDField
      FieldName = 'NOTAID'
      Precision = 8
      Size = 0
    end
    object sqldtsNotas_DevDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
    end
    object sqldtsNotas_DevDATADEVOLUCAO: TSQLTimeStampField
      FieldName = 'DATADEVOLUCAO'
    end
    object sqldtsNotas_DevVLRDEVOLUCAO: TFMTBCDField
      FieldName = 'VLRDEVOLUCAO'
      Precision = 32
    end
    object sqldtsNotas_DevTIPOMOVIMENTO: TStringField
      FieldName = 'TIPOMOVIMENTO'
      Size = 1
    end
    object sqldtsNotas_DevUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNotas_Dev: TDataSetProvider
    DataSet = sqldtsNotas_Dev
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 568
  end
  object sqldtsImpostoServico: TSQLDataSet
    CommandText = 
      'SELECT EF_IMPOSTOSERVICO.IMPOSTOSERVICOID,'#13#10'       EF_IMPOSTOSER' +
      'VICO.ATIVIDADE,       '#13#10'       EF_IMPOSTOSERVICO.NIVELSERVICO,'#13#10 +
      '       EF_IMPOSTOSERVICO.ALIQUOTAISS,'#13#10'       EF_IMPOSTOSERVICO.' +
      'USUARIO'#13#10'  FROM EF_IMPOSTOSERVICO EF_IMPOSTOSERVICO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 389
    Top = 39
    object sqldtsImpostoServicoIMPOSTOSERVICOID: TBCDField
      FieldName = 'IMPOSTOSERVICOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsImpostoServicoATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 300
    end
    object sqldtsImpostoServicoNIVELSERVICO: TBCDField
      FieldName = 'NIVELSERVICO'
      Precision = 8
      Size = 0
    end
    object sqldtsImpostoServicoALIQUOTAISS: TFMTBCDField
      FieldName = 'ALIQUOTAISS'
      Precision = 14
      Size = 6
    end
    object sqldtsImpostoServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvImpostoServico: TDataSetProvider
    DataSet = sqldtsImpostoServico
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 501
    Top = 39
  end
  object sqldtsMunicipioIBGE: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT EF_MUNICIPIOIBGE.MUNICIPIOIBGEID,'#13#10'       EF_MUNICIPIOIBG' +
      'E.DESCRICAO,'#13#10'       EF_MUNICIPIOIBGE.DESCRICAO2,'#13#10'       EF_MUN' +
      'ICIPIOIBGE.SIGLAUFID,'#13#10'       CP_UNIDADESFEDERACAO.NOMEUF L_NOME' +
      'UUF,'#13#10'       EF_MUNICIPIOIBGE.USUARIO'#13#10'  FROM EF_MUNICIPIOIBGE E' +
      'F_MUNICIPIOIBGE,'#13#10'       CP_UNIDADESFEDERACAO'#13#10' WHERE CP_UNIDADE' +
      'SFEDERACAO.SIGLAUFID(+) = EF_MUNICIPIOIBGE.SIGLAUFID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 32
    Top = 616
    object sqldtsMunicipioIBGEMUNICIPIOIBGEID: TBCDField
      FieldName = 'MUNICIPIOIBGEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsMunicipioIBGEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsMunicipioIBGEDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 100
    end
    object sqldtsMunicipioIBGESIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldtsMunicipioIBGEL_NOMEUUF: TStringField
      FieldName = 'L_NOMEUUF'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsMunicipioIBGEUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvMunicipioIBGE: TDataSetProvider
    DataSet = sqldtsMunicipioIBGE
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 616
  end
  object sqldtsTipoItem: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT TIPOITEMID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM EF' +
      '_TIPOITEM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 240
    Top = 560
    object sqldtsTipoItemTIPOITEMID: TBCDField
      FieldName = 'TIPOITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTipoItem: TDataSetProvider
    DataSet = sqldtsTipoItem
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 560
  end
  object sqldtsGeneroItem: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT GENEROITEMID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM ' +
      'EF_GENEROITEM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 240
    Top = 616
    object sqldtsGeneroItemGENEROITEMID: TBCDField
      FieldName = 'GENEROITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsGeneroItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object sqldtsGeneroItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvGeneroItem: TDataSetProvider
    DataSet = sqldtsGeneroItem
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 616
  end
  object sqldtsNfEmail: TSQLDataSet
    CommandText = 
      'SELECT EMPRESAID,'#13#10'       NOTA,'#13#10'       DATAEMISSAOID,'#13#10'       D' +
      'ATAGERACAO,'#13#10'       EMAIL,'#13#10'       ASSUNTO,'#13#10'       CORPO,'#13#10'    ' +
      '   STATUS,'#13#10'       LOGPROCESSO,'#13#10'       DATAENVIO,'#13#10'       USUAR' +
      'IO'#13#10'  FROM EF_NFEMAIL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 400
    Top = 552
    object sqldtsNfEmailEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfEmailNOTA: TBCDField
      FieldName = 'NOTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsNfEmailDATAEMISSAOID: TSQLTimeStampField
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsNfEmailDATAGERACAO: TSQLTimeStampField
      FieldName = 'DATAGERACAO'
    end
    object sqldtsNfEmailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 400
    end
    object sqldtsNfEmailASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object sqldtsNfEmailCORPO: TStringField
      FieldName = 'CORPO'
      Size = 500
    end
    object sqldtsNfEmailSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sqldtsNfEmailLOGPROCESSO: TStringField
      FieldName = 'LOGPROCESSO'
      Size = 200
    end
    object sqldtsNfEmailDATAENVIO: TSQLTimeStampField
      FieldName = 'DATAENVIO'
    end
    object sqldtsNfEmailUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvNfEmail: TDataSetProvider
    DataSet = sqldtsNfEmail
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 504
    Top = 552
  end
end
