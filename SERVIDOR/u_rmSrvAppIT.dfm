object SrvAppIT: TSrvAppIT
  OldCreateOrder = False
  Height = 588
  Width = 701
  object sqldtsIndiceMes: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_INDICEMES.ANOMESID,'#13#10'  IT_INDICEMES.UFIR,'#13#10'  IT_IND' +
      'ICEMES.UFESP,'#13#10'  IT_INDICEMES.IPCFIPE,'#13#10'  IT_INDICEMES.IGPM,'#13#10'  ' +
      'IT_INDICEMES.IPC,'#13#10'  IT_INDICEMES.IPA,'#13#10'  IT_INDICEMES.INCC,'#13#10'  ' +
      'IT_INDICEMES.IPCA,'#13#10'  IT_INDICEMES.ICV,'#13#10'  IT_INDICEMES.ICVM,'#13#10' ' +
      ' IT_INDICEMES.USUARIO'#13#10'  FROM'#13#10'  IT_INDICEMES IT_INDICEMES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 48
    object sqldtsIndiceMesANOMESID: TBCDField
      FieldName = 'ANOMESID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 6
      Size = 0
    end
    object sqldtsIndiceMesUFIR: TBCDField
      FieldName = 'UFIR'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesUFESP: TBCDField
      FieldName = 'UFESP'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesIPCFIPE: TBCDField
      FieldName = 'IPCFIPE'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesIGPM: TBCDField
      FieldName = 'IGPM'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesIPC: TBCDField
      FieldName = 'IPC'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesIPA: TBCDField
      FieldName = 'IPA'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesINCC: TBCDField
      FieldName = 'INCC'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesIPCA: TBCDField
      FieldName = 'IPCA'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesICV: TBCDField
      FieldName = 'ICV'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesICVM: TBCDField
      FieldName = 'ICVM'
      Precision = 14
      Size = 2
    end
    object sqldtsIndiceMesUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsDespachante: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_DESPACHANTE.DESPACHANTEID,'#13#10'  IT_DESPACHANTE.NOME,'#13 +
      #10'  IT_DESPACHANTE.CONTACONTABILID,'#13#10'  IT_DESPACHANTE.USUARIO'#13#10'  ' +
      'FROM'#13#10'  IT_DESPACHANTE IT_DESPACHANTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 192
    object sqldtsDespachanteDESPACHANTEID: TBCDField
      DisplayLabel = 'Despachante Id'
      FieldName = 'DESPACHANTEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDespachanteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object sqldtsDespachanteCONTACONTABILID: TStringField
      DisplayLabel = 'Conta Contabil Id'
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsDespachanteUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object sqldtsContatoJapao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_CONTATOJAPAO.CONTATOJAPAOID,'#13#10'  IT_CONTATOJAPAO.DES' +
      'TINATARIO,'#13#10'  IT_CONTATOJAPAO.EMAILDESTINATARIO,'#13#10'  IT_CONTATOJA' +
      'PAO.DESTINATARIOCC,'#13#10'  IT_CONTATOJAPAO.EMAILDESTINATARIOCC,'#13#10'  I' +
      'T_CONTATOJAPAO.REMETENTE,'#13#10'  IT_CONTATOJAPAO.USUARIO'#13#10'  FROM'#13#10'  ' +
      'IT_CONTATOJAPAO IT_CONTATOJAPAO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 240
    object sqldtsContatoJapaoCONTATOJAPAOID: TBCDField
      DisplayLabel = 'Contato Jap'#227'o Id'
      FieldName = 'CONTATOJAPAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContatoJapaoDESTINATARIO: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'DESTINATARIO'
      Size = 100
    end
    object sqldtsContatoJapaoEMAILDESTINATARIO: TStringField
      DisplayLabel = 'e-mail Destinat'#225'rio'
      FieldName = 'EMAILDESTINATARIO'
      Size = 50
    end
    object sqldtsContatoJapaoDESTINATARIOCC: TStringField
      DisplayLabel = 'Destinat'#225'rio Jap'#227'o CC'
      FieldName = 'DESTINATARIOCC'
      Size = 100
    end
    object sqldtsContatoJapaoEMAILDESTINATARIOCC: TStringField
      DisplayLabel = 'e-mail Destinat'#225'rio CC'
      FieldName = 'EMAILDESTINATARIOCC'
      Size = 50
    end
    object sqldtsContatoJapaoREMETENTE: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'REMETENTE'
      Size = 100
    end
    object sqldtsContatoJapaoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object sqldtsTipoProcesso: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_TIPOPROCESSO.TIPOPROCESSOID,'#13#10'  IT_TIPOPROCESSO.SIG' +
      'LA,'#13#10'  IT_TIPOPROCESSO.DESCRICAO,'#13#10'  IT_TIPOPROCESSO.NUMPROCESSO' +
      ','#13#10'  IT_TIPOPROCESSO.ORIGEMPROCESSO,'#13#10'  IT_TIPOPROCESSO.USUARIO'#13 +
      #10'  FROM'#13#10'  IT_TIPOPROCESSO IT_TIPOPROCESSO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 288
    object sqldtsTipoProcessoTIPOPROCESSOID: TBCDField
      DisplayLabel = 'Tipo Processo Id'
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoProcessoSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
    end
    object sqldtsTipoProcessoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoProcessoNUMPROCESSO: TBCDField
      DisplayLabel = 'N'#186' Processo'
      FieldName = 'NUMPROCESSO'
      Precision = 8
      Size = 0
    end
    object sqldtsTipoProcessoORIGEMPROCESSO: TStringField
      DisplayLabel = 'Origem Processo'
      FieldName = 'ORIGEMPROCESSO'
      Size = 1
    end
    object sqldtsTipoProcessoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object sqldtsTermoPagto: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_TERMOPAGTO.TERMOPAGTOID,'#13#10'  IT_TERMOPAGTO.DESCRICAO' +
      ','#13#10'  IT_TERMOPAGTO.USUARIO'#13#10'  FROM'#13#10'  IT_TERMOPAGTO IT_TERMOPAGT' +
      'O'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 336
    object sqldtsTermoPagtoTERMOPAGTOID: TBCDField
      DisplayLabel = 'Termo Pagto Id'
      FieldName = 'TERMOPAGTOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTermoPagtoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTermoPagtoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object dsprvIndiceMes: TDataSetProvider
    DataSet = sqldtsIndiceMes
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 48
  end
  object dsprvDespachante: TDataSetProvider
    DataSet = sqldtsDespachante
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 192
  end
  object dsprvContatoJapao: TDataSetProvider
    DataSet = sqldtsContatoJapao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 240
  end
  object dsprvTipoProcesso: TDataSetProvider
    DataSet = sqldtsTipoProcesso
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 288
  end
  object dsprvTermoPagto: TDataSetProvider
    DataSet = sqldtsTermoPagto
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 336
  end
  object sqldtsDeclaracao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_DECLARACAO.DECLARACAOID,'#13#10'  IT_DECLARACAO.EMPRESAID' +
      ','#13#10'  EF_EMPRESA.NOMEFANTASIA L_NOMEFANTASIA,'#13#10'  IT_DECLARACAO.DI' +
      'ID,'#13#10'  IT_DECLARACAO.DATAREGISTRO,'#13#10'  IT_INDICE.DOLARFISCALDIARI' +
      'O L_DOLARFISCALDIARIO,'#13#10'  IT_INDICE.YENEFISCALDIARIO L_YENEFISCA' +
      'LDIARIO,'#13#10'  IT_DECLARACAO.REFERENCIA,'#13#10'  IT_DECLARACAO.DATALIBER' +
      'ACAO,'#13#10'  IT_DECLARACAO.TIPOMOEDAFRETE,'#13#10'  IT_DECLARACAO.IMPORTAD' +
      'ORID,'#13#10'  EF_ENTIDADEIMPORTADOR.NOME L_NOMEIMPORTADOR,'#13#10'  IT_DECL' +
      'ARACAO.FORNECEDORID,'#13#10'  EF_ENTIDADEFORNECEDOR.NOME L_NOMEFORNECE' +
      'DOR,'#13#10'  IT_DECLARACAO.CONTACONTABILID,'#13#10'  IT_DECLARACAO.CENTROCU' +
      'STOID,'#13#10'  IT_DECLARACAO.NUMCONTRATOCAMBIO,'#13#10'  IT_DECLARACAO.DATA' +
      'CONTRATO,'#13#10'  IT_DECLARACAO.NUMCONTRATOCAMBIO2,'#13#10'  IT_DECLARACAO.' +
      'DATACONTRATO2,'#13#10'  IT_DECLARACAO.NUMCONTRATOCAMBIO3,'#13#10'  IT_DECLAR' +
      'ACAO.DATACONTRATO3,  '#13#10'  IT_DECLARACAO.OBSPEDIDO,'#13#10'  IT_DECLARAC' +
      'AO.CREDITARICMS,'#13#10'  IT_DECLARACAO.AGREGARVLRFOB,'#13#10'  IT_DECLARACA' +
      'O.RESTITUIRICMS,'#13#10'  IT_DECLARACAO.AGREGARFRETE,'#13#10'  IT_DECLARACAO' +
      '.FOBANTECIPADO,'#13#10'  IT_DECLARACAO.ADMISSAOTEMP,'#13#10'  IT_DECLARACAO.' +
      'LIBERARESTOQUE,'#13#10'  IT_DECLARACAO.ATIVOFIXO,'#13#10'  IT_DECLARACAO.FRE' +
      'TEPAGO,'#13#10'  IT_DECLARACAO.MATERIALCONSUMO,  '#13#10'  IT_DECLARACAO.DES' +
      'PACHANTEID,'#13#10'  IT_DESPACHANTE.NOME L_NOMEDESPACHANTE,'#13#10'  IT_DECL' +
      'ARACAO.NUMDEMONSDESPESA,'#13#10'  IT_DECLARACAO.DATANFDESP,'#13#10'  IT_DECL' +
      'ARACAO.VLRDESPESAII,'#13#10'  IT_DECLARACAO.VLRDESPCAPATAZIA,'#13#10'  IT_DE' +
      'CLARACAO.VLRDESPESADESEMB,'#13#10'  IT_DECLARACAO.VLRDESPSINDDESP,    ' +
      '   '#13#10'  IT_DECLARACAO.VLRDESPCODESPINFRAERO,  '#13#10'  IT_DECLARACAO.V' +
      'LRFRETEMARITIMOAEREO,    '#13#10'  IT_DECLARACAO.VLRDESPAFRMM,        ' +
      '   '#13#10'  IT_DECLARACAO.VLRDESPCPMF,            '#13#10'  IT_DECLARACAO.V' +
      'LRDESPTRANSPENTREGA,  '#13#10'  IT_DECLARACAO.VLRDESPTRANSPREMOCAO,  '#13 +
      #10'  IT_DECLARACAO.VLRDESPARMAZENTREPOSTO,'#13#10'  IT_DECLARACAO.VLRDES' +
      'PTXEXPEDIENTE,'#13#10'  IT_DECLARACAO.VLRTAXAEMISSAOLI,    '#13#10'  IT_DECL' +
      'ARACAO.VLRDESPVIGSANITARIA,'#13#10'  IT_DECLARACAO.VLROUTRASDESPESAS,'#13 +
      #10'  IT_DECLARACAO.VLRDESPCOMISSAONFS,'#13#10'  IT_DECLARACAO.NFEID,'#13#10'  ' +
      'IT_DECLARACAO.DATAEMISSAONFEID,'#13#10'  IT_DECLARACAO.DATAENTRADANFEI' +
      'D,'#13#10'  IT_DECLARACAO.NATUREZAOPID,'#13#10'  EF_NATUREZAOP.CFOP L_CFOP,'#13 +
      #10'  EF_NATUREZAOP.DESCRICAOOPERACAOUSUARIO L_DESCRICAONATUREZAUSU' +
      'ARIO,'#13#10'  EF_NATUREZAOP.DESCRICAOOPERACAONOTA L_DESCRICAONATUREZA' +
      'NOTA,'#13#10'  IT_DECLARACAO.VLRTOTALCIF,'#13#10'  IT_DECLARACAO.VLRTOTALPES' +
      'O,'#13#10'  IT_DECLARACAO.VLRTOTALFOBUS,'#13#10'  IT_DECLARACAO.VLRTOTALFOB,' +
      #13#10'  IT_DECLARACAO.VLRFRETE,'#13#10'  IT_DECLARACAO.VLRSEGUROINTERNAC,'#13 +
      #10'  IT_DECLARACAO.VLRIRRF,'#13#10'  IT_DECLARACAO.VLRCSRF,'#13#10'  IT_DECLAR' +
      'ACAO.TAXAFOBANTECIPADO,'#13#10'  IT_DECLARACAO.TAXASISCOMEX,'#13#10'  IT_DEC' +
      'LARACAO.VLRICMSANTECIPADO,'#13#10'  IT_DECLARACAO.VLRTOTALIPI,'#13#10'  IT_D' +
      'ECLARACAO.VLRTOTALICMS,'#13#10'  IT_DECLARACAO.VLRTOTALCUSTOAPARELHO,'#13 +
      #10'  IT_DECLARACAO.VLRTOTALCUSTOPECA,'#13#10'  IT_DECLARACAO.VLRTOTALMAQ' +
      'EQUIP,'#13#10'  IT_DECLARACAO.VLRTOTALFERRAMENTAL,'#13#10'  IT_DECLARACAO.VL' +
      'RTOTALMOVUTENSILIOS,'#13#10'  IT_DECLARACAO.VLRTOTALADMTEMP,'#13#10'  IT_DEC' +
      'LARACAO.VLRTOTALPIS,'#13#10'  IT_DECLARACAO.VLRTOTALCOFINS,'#13#10'  IT_DECL' +
      'ARACAO.VLRTOTALFOB2,'#13#10'  IT_DECLARACAO.VLRTOTALFOBANT,'#13#10'  IT_DECL' +
      'ARACAO.VLRTOTALCIF2,'#13#10'  IT_DECLARACAO.VLRTOTALCIFANT,'#13#10'  IT_DECL' +
      'ARACAO.VLRTOTALDESPDESP,'#13#10'  IT_DECLARACAO.VLRTOTALDESPGI,'#13#10'  IT_' +
      'DECLARACAO.VLRTOTALSEGUROTRANSP,'#13#10'  IT_DECLARACAO.VLRTOTALIRRFPA' +
      'GAR,'#13#10'  IT_DECLARACAO.VLRTOTALFRETELOCAL,'#13#10'  IT_DECLARACAO.USUAR' +
      'IO'#13#10'  FROM'#13#10'  IT_DECLARACAO IT_DECLARACAO,'#13#10'  EF_NATUREZAOP EF_N' +
      'ATUREZAOP,'#13#10'  EF_ENTIDADE EF_ENTIDADEFORNECEDOR,'#13#10'  EF_ENTIDADE ' +
      'EF_ENTIDADEIMPORTADOR,'#13#10'  EF_EMPRESA,'#13#10'  IT_DESPACHANTE,'#13#10'  IT_I' +
      'NDICE IT_INDICE'#13#10' WHERE'#13#10'  EF_NATUREZAOP.NATUREZAOPID (+) = IT_D' +
      'ECLARACAO.NATUREZAOPID'#13#10'  AND EF_ENTIDADEFORNECEDOR.ENTIDADEID (' +
      '+) = IT_DECLARACAO.FORNECEDORID'#13#10'  AND EF_ENTIDADEIMPORTADOR.ENT' +
      'IDADEID (+) = IT_DECLARACAO.IMPORTADORID'#13#10'  AND EF_EMPRESA.EMPRE' +
      'SAID (+) = IT_DECLARACAO.EMPRESAID'#13#10'  AND IT_DESPACHANTE.DESPACH' +
      'ANTEID (+) = IT_DECLARACAO.DESPACHANTEID'#13#10'  AND IT_DECLARACAO.DA' +
      'TAREGISTRO = IT_INDICE.DATAID(+)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 500
    object sqldtsDeclaracaoDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsDeclaracaoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsDeclaracaoL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsDeclaracaoDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsDeclaracaoDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
    end
    object sqldtsDeclaracaoL_DOLARFISCALDIARIO: TFMTBCDField
      FieldName = 'L_DOLARFISCALDIARIO'
      ProviderFlags = []
      Precision = 14
    end
    object sqldtsDeclaracaoL_YENEFISCALDIARIO: TFMTBCDField
      FieldName = 'L_YENEFISCALDIARIO'
      ProviderFlags = []
      Precision = 14
    end
    object sqldtsDeclaracaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 100
    end
    object sqldtsDeclaracaoDATALIBERACAO: TSQLTimeStampField
      FieldName = 'DATALIBERACAO'
    end
    object sqldtsDeclaracaoTIPOMOEDAFRETE: TStringField
      FieldName = 'TIPOMOEDAFRETE'
      Size = 1
    end
    object sqldtsDeclaracaoIMPORTADORID: TBCDField
      FieldName = 'IMPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsDeclaracaoL_NOMEIMPORTADOR: TStringField
      FieldName = 'L_NOMEIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDeclaracaoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsDeclaracaoL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDeclaracaoCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsDeclaracaoCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 7
    end
    object sqldtsDeclaracaoNUMCONTRATOCAMBIO: TStringField
      FieldName = 'NUMCONTRATOCAMBIO'
      Size = 8
    end
    object sqldtsDeclaracaoDATACONTRATO: TSQLTimeStampField
      FieldName = 'DATACONTRATO'
    end
    object sqldtsDeclaracaoNUMCONTRATOCAMBIO2: TStringField
      FieldName = 'NUMCONTRATOCAMBIO2'
      Size = 8
    end
    object sqldtsDeclaracaoDATACONTRATO2: TSQLTimeStampField
      FieldName = 'DATACONTRATO2'
    end
    object sqldtsDeclaracaoNUMCONTRATOCAMBIO3: TStringField
      FieldName = 'NUMCONTRATOCAMBIO3'
      Size = 8
    end
    object sqldtsDeclaracaoDATACONTRATO3: TSQLTimeStampField
      FieldName = 'DATACONTRATO3'
    end
    object sqldtsDeclaracaoOBSPEDIDO: TMemoField
      FieldName = 'OBSPEDIDO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsDeclaracaoCREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoAGREGARVLRFOB: TBCDField
      FieldName = 'AGREGARVLRFOB'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoRESTITUIRICMS: TBCDField
      FieldName = 'RESTITUIRICMS'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoAGREGARFRETE: TBCDField
      FieldName = 'AGREGARFRETE'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoFOBANTECIPADO: TBCDField
      FieldName = 'FOBANTECIPADO'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoADMISSAOTEMP: TBCDField
      FieldName = 'ADMISSAOTEMP'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoLIBERARESTOQUE: TBCDField
      FieldName = 'LIBERARESTOQUE'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoATIVOFIXO: TBCDField
      FieldName = 'ATIVOFIXO'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoFRETEPAGO: TBCDField
      FieldName = 'FRETEPAGO'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoDESPACHANTEID: TBCDField
      FieldName = 'DESPACHANTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsDeclaracaoMATERIALCONSUMO: TBCDField
      FieldName = 'MATERIALCONSUMO'
      Precision = 1
      Size = 0
    end
    object sqldtsDeclaracaoL_NOMEDESPACHANTE: TStringField
      FieldName = 'L_NOMEDESPACHANTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDeclaracaoNUMDEMONSDESPESA: TStringField
      FieldName = 'NUMDEMONSDESPESA'
      Size = 10
    end
    object sqldtsDeclaracaoDATANFDESP: TSQLTimeStampField
      FieldName = 'DATANFDESP'
    end
    object sqldtsDeclaracaoVLRDESPESAII: TBCDField
      FieldName = 'VLRDESPESAII'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPCAPATAZIA: TBCDField
      FieldName = 'VLRDESPCAPATAZIA'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPESADESEMB: TBCDField
      FieldName = 'VLRDESPESADESEMB'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPSINDDESP: TBCDField
      FieldName = 'VLRDESPSINDDESP'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPCODESPINFRAERO: TBCDField
      FieldName = 'VLRDESPCODESPINFRAERO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPAFRMM: TBCDField
      FieldName = 'VLRDESPAFRMM'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRFRETEMARITIMOAEREO: TBCDField
      FieldName = 'VLRFRETEMARITIMOAEREO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPCPMF: TBCDField
      FieldName = 'VLRDESPCPMF'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPTRANSPENTREGA: TBCDField
      FieldName = 'VLRDESPTRANSPENTREGA'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPTRANSPREMOCAO: TBCDField
      FieldName = 'VLRDESPTRANSPREMOCAO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPARMAZENTREPOSTO: TBCDField
      FieldName = 'VLRDESPARMAZENTREPOSTO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPTXEXPEDIENTE: TBCDField
      FieldName = 'VLRDESPTXEXPEDIENTE'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPVIGSANITARIA: TBCDField
      FieldName = 'VLRDESPVIGSANITARIA'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLROUTRASDESPESAS: TBCDField
      FieldName = 'VLROUTRASDESPESAS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTAXAEMISSAOLI: TBCDField
      FieldName = 'VLRTAXAEMISSAOLI'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPCOMISSAONFS: TBCDField
      FieldName = 'VLRDESPCOMISSAONFS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRIRRF: TBCDField
      FieldName = 'VLRIRRF'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRCSRF: TBCDField
      FieldName = 'VLRCSRF'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoNFEID: TStringField
      FieldName = 'NFEID'
      Size = 6
    end
    object sqldtsDeclaracaoDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object sqldtsDeclaracaoDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object sqldtsDeclaracaoNATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object sqldtsDeclaracaoL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object sqldtsDeclaracaoL_DESCRICAONATUREZAUSUARIO: TStringField
      FieldName = 'L_DESCRICAONATUREZAUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDeclaracaoL_DESCRICAONATUREZANOTA: TStringField
      FieldName = 'L_DESCRICAONATUREZANOTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDeclaracaoVLRTOTALCIF: TBCDField
      FieldName = 'VLRTOTALCIF'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALFOBUS: TBCDField
      FieldName = 'VLRTOTALFOBUS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALPESO: TFMTBCDField
      FieldName = 'VLRTOTALPESO'
      Precision = 14
      Size = 6
    end
    object sqldtsDeclaracaoVLRSEGUROINTERNAC: TBCDField
      FieldName = 'VLRSEGUROINTERNAC'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoTAXAFOBANTECIPADO: TFMTBCDField
      FieldName = 'TAXAFOBANTECIPADO'
      Precision = 14
    end
    object sqldtsDeclaracaoTAXASISCOMEX: TBCDField
      FieldName = 'TAXASISCOMEX'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRICMSANTECIPADO: TBCDField
      FieldName = 'VLRICMSANTECIPADO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALCUSTOAPARELHO: TBCDField
      FieldName = 'VLRTOTALCUSTOAPARELHO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALCUSTOPECA: TBCDField
      FieldName = 'VLRTOTALCUSTOPECA'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALMAQEQUIP: TBCDField
      FieldName = 'VLRTOTALMAQEQUIP'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALFERRAMENTAL: TBCDField
      FieldName = 'VLRTOTALFERRAMENTAL'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALMOVUTENSILIOS: TBCDField
      FieldName = 'VLRTOTALMOVUTENSILIOS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALADMTEMP: TBCDField
      FieldName = 'VLRTOTALADMTEMP'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALFOB2: TBCDField
      FieldName = 'VLRTOTALFOB2'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALFOBANT: TBCDField
      FieldName = 'VLRTOTALFOBANT'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALCIF2: TBCDField
      FieldName = 'VLRTOTALCIF2'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALCIFANT: TBCDField
      FieldName = 'VLRTOTALCIFANT'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALDESPDESP: TBCDField
      FieldName = 'VLRTOTALDESPDESP'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALDESPGI: TBCDField
      FieldName = 'VLRTOTALDESPGI'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALSEGUROTRANSP: TBCDField
      FieldName = 'VLRTOTALSEGUROTRANSP'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALIRRFPAGAR: TBCDField
      FieldName = 'VLRTOTALIRRFPAGAR'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRTOTALFRETELOCAL: TBCDField
      FieldName = 'VLRTOTALFRETELOCAL'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsAdicao: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_ADICAO.DECLARACAOID,'#13#10'  IT_ADICAO.ADICAOID,'#13#10'  IT_A' +
      'DICAO.NCMID,'#13#10'  IT_ADICAO.PESOLIQUIDO,'#13#10'  IT_ADICAO.VLRFOBUS,'#13#10' ' +
      ' IT_ADICAO.VLRFOB,'#13#10'  IT_ADICAO.VLRCIF,'#13#10'  IT_ADICAO.ALIQUOTAII,' +
      #13#10'  IT_ADICAO.VLRII,'#13#10'  IT_ADICAO.ALIQUOTAIPI,'#13#10'  IT_ADICAO.VLRI' +
      'PI,'#13#10'  IT_ADICAO.USUARIO'#13#10'  FROM'#13#10'  IT_ADICAO IT_ADICAO'#13#10' WHERE'#13 +
      #10'  IT_ADICAO.DECLARACAOID = :DECLARACAOID'
    DataSource = dsDILink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'DECLARACAOID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 500
    Top = 49
    object sqldtsAdicaoDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAdicaoADICAOID: TBCDField
      FieldName = 'ADICAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsAdicaoNCMID: TStringField
      FieldName = 'NCMID'
      Size = 8
    end
    object sqldtsAdicaoPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object sqldtsAdicaoVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoVLRCIF: TBCDField
      FieldName = 'VLRCIF'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoALIQUOTAII: TBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoVLRII: TBCDField
      FieldName = 'VLRII'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoALIQUOTAIPI: TBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsAdicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsMercadoria: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_MERCADORIA.DECLARACAOID,'#13#10'  IT_MERCADORIA.MERCADORI' +
      'AID,'#13#10'  IT_MERCADORIA.PROCESSOID,'#13#10'  IT_MERCADORIA.TIPOPROCESSOI' +
      'D,'#13#10'  IT_TIPOPROCESSO.SIGLA AS L_SIGLA,  '#13#10'  IT_MERCADORIA.DATAP' +
      'ROCESSOID,'#13#10'  IT_MERCADORIA.ITEMPROCESSOID,'#13#10'  IT_MERCADORIA.NCM' +
      'ID,'#13#10'  IT_MERCADORIA.LIBERAESTOQUE,'#13#10'  IT_MERCADORIA.EMPRESAID,'#13 +
      #10'  IT_MERCADORIA.PRODUTOID,'#13#10'  EF_PRODUTO.DESCRICAOPORTUGUES AS ' +
      'L_DESCRICAO_PRODUTO,'#13#10'  EF_PRODUTO.PARTNUMBERID AS L_PARTNUMBERI' +
      'D,  '#13#10'  IT_MERCADORIA.QUANTIDADE,'#13#10'  IT_MERCADORIA.IMOBILIZADO,'#13 +
      #10'  IT_MERCADORIA.TIPOMATERIAL,'#13#10'  IT_MERCADORIA.PESOLIQUIDO,'#13#10'  ' +
      'IT_MERCADORIA.PESOBRUTO,'#13#10'  IT_MERCADORIA.VLRFOBUS,'#13#10'  IT_MERCAD' +
      'ORIA.VLRFOB,'#13#10'  IT_MERCADORIA.VLRCIF,'#13#10'  IT_MERCADORIA.VLRCUSTOM' +
      'OVIMENTO,'#13#10'  IT_MERCADORIA.VLRCUSTOTRANSFERENCIA,'#13#10'  IT_MERCADOR' +
      'IA.VLRBASEIPI,'#13#10'  IT_MERCADORIA.ALIQUOTAIPI,'#13#10'  IT_MERCADORIA.VL' +
      'RIPI,'#13#10'  IT_MERCADORIA.VLRBASEICMS,'#13#10'  IT_MERCADORIA.ALIQUOTAICM' +
      'S,'#13#10'  IT_MERCADORIA.VLRICMS,'#13#10'  IT_MERCADORIA.ALIQUOTAII,'#13#10'  IT_' +
      'MERCADORIA.VLRFRETE,'#13#10'  IT_MERCADORIA.VLRFRETEUS,'#13#10'  IT_MERCADOR' +
      'IA.VLRPIS,'#13#10'  IT_MERCADORIA.VLRCOFINS,'#13#10'  IT_MERCADORIA.USUARIO'#13 +
      #10'  FROM'#13#10'  IT_MERCADORIA IT_MERCADORIA,'#13#10'  IT_TIPOPROCESSO IT_TI' +
      'POPROCESSO,'#13#10'  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13#10'  IT_MERCADORIA.DE' +
      'CLARACAOID = :DECLARACAOID'#13#10'  AND IT_MERCADORIA.TIPOPROCESSOID =' +
      ' IT_TIPOPROCESSO.TIPOPROCESSOID(+)'#13#10'  AND IT_MERCADORIA.EMPRESAI' +
      'D = EF_PRODUTO.EMPRESAID(+)'#13#10'  AND IT_MERCADORIA.PRODUTOID = EF_' +
      'PRODUTO.PRODUTOID(+)'
    DataSource = dsDILink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'DECLARACAOID'
        ParamType = ptInput
        Size = 4
      end>
    SortFieldNames = 'ITEMPROCESSOID'
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 500
    Top = 97
    object sqldtsMercadoriaDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaMERCADORIAID: TBCDField
      FieldName = 'MERCADORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaPROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaL_SIGLA: TStringField
      FieldName = 'L_SIGLA'
      ProviderFlags = []
    end
    object sqldtsMercadoriaDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
    end
    object sqldtsMercadoriaITEMPROCESSOID: TBCDField
      FieldName = 'ITEMPROCESSOID'
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaNCMID: TStringField
      FieldName = 'NCMID'
      Size = 8
    end
    object sqldtsMercadoriaLIBERAESTOQUE: TBCDField
      FieldName = 'LIBERAESTOQUE'
      Precision = 1
      Size = 0
    end
    object sqldtsMercadoriaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaL_DESCRICAO_PRODUTO: TStringField
      FieldName = 'L_DESCRICAO_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsMercadoriaL_PARTNUMBERID: TStringField
      FieldName = 'L_PARTNUMBERID'
      ProviderFlags = []
    end
    object sqldtsMercadoriaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object sqldtsMercadoriaIMOBILIZADO: TBCDField
      FieldName = 'IMOBILIZADO'
      Precision = 1
      Size = 0
    end
    object sqldtsMercadoriaTIPOMATERIAL: TStringField
      FieldName = 'TIPOMATERIAL'
      Size = 2
    end
    object sqldtsMercadoriaPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object sqldtsMercadoriaPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 14
      Size = 6
    end
    object sqldtsMercadoriaVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRCIF: TBCDField
      FieldName = 'VLRCIF'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRCUSTOMOVIMENTO: TBCDField
      FieldName = 'VLRCUSTOMOVIMENTO'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRCUSTOTRANSFERENCIA: TBCDField
      FieldName = 'VLRCUSTOTRANSFERENCIA'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsMercadoriaVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaALIQUOTAICMS: TFMTBCDField
      FieldName = 'ALIQUOTAICMS'
      Precision = 14
      Size = 6
    end
    object sqldtsMercadoriaVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaALIQUOTAII: TFMTBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 6
    end
    object sqldtsMercadoriaVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRFRETEUS: TBCDField
      FieldName = 'VLRFRETEUS'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object sqldtsMercadoriaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvDeclaracao: TDataSetProvider
    DataSet = sqldtsDeclaracao
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 576
    Top = 49
  end
  object dsDILink: TDataSource
    DataSet = sqldtsDeclaracao
    Left = 580
  end
  object dsProcessoLink: TDataSource
    DataSet = sqldtsProcesso
    Left = 404
  end
  object sqldtsProcesso: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_PROCESSO.PROCESSOID,'#13#10'  IT_PROCESSO.TIPOPROCESSOID,' +
      #13#10'  IT_TIPOPROCESSO.SIGLA L_SIGLAPROCESSO,'#13#10'  IT_PROCESSO.DATAPR' +
      'OCESSOID,  '#13#10'  IT_PROCESSO.PROCESSOANTIGOID,'#13#10'  IT_PROCESSO.EMPR' +
      'ESAID,'#13#10'  EF_EMPRESA.NOMEFANTASIA L_NOMEFANTASIA,'#13#10'  IT_PROCESSO' +
      '.IMPORTADORID,'#13#10'  EF_ENTIDADEIMPORTADOR.NOME L_NOMEIMPORTADOR,'#13#10 +
      '  EF_ENTIDADEIMPORTADOR.CEPID L_CEPIMPORTADOR,'#13#10'  EF_ENTIDADEIMP' +
      'ORTADOR.ENDERECO L_ENDERECOIMPORTADOR,'#13#10'  EF_ENTIDADEIMPORTADOR.' +
      'CIDADE L_CIDADEIMPORTADOR,'#13#10'  EF_ENTIDADEIMPORTADOR.SIGLAUFID L_' +
      'UFIMPORTADOR,'#13#10'  IT_PROCESSO.CLIENTEID,'#13#10'  EF_ENTIDADECLIENTE.NO' +
      'ME L_NOMECLIENTE,'#13#10'  EF_ENTIDADECLIENTE.CEPID L_CEPCLIENTE,'#13#10'  E' +
      'F_ENTIDADECLIENTE.ENDERECO L_ENDERECOCLIENTE,'#13#10'  EF_ENTIDADECLIE' +
      'NTE.CIDADE L_CIDADECLIENTE,'#13#10'  EF_ENTIDADECLIENTE.SIGLAUFID L_UF' +
      'CLIENTE,'#13#10'  IT_PROCESSO.CONTATOJAPAOID,'#13#10'  IT_CONTATOJAPAO.DESTI' +
      'NATARIO L_DESTINATARIOJAPAO,'#13#10'  IT_CONTATOJAPAO.EMAILDESTINATARI' +
      'O L_DESTINATARIOEMAILJAPAO,'#13#10'  IT_CONTATOJAPAO.DESTINATARIOCC L_' +
      'DESTINATARIOCCJAPAO,'#13#10'  IT_CONTATOJAPAO.EMAILDESTINATARIOCC L_DE' +
      'STINATARIOCCEMAILJAPAO,'#13#10'  IT_CONTATOJAPAO.REMETENTE L_REMETENTE' +
      'JAPAO,'#13#10'  IT_PROCESSO.STATUS,'#13#10'  IT_PROCESSO.REVISAO,'#13#10'  IT_PROC' +
      'ESSO.LOCALFABRICACAO,'#13#10'  IT_PROCESSO.OBSERVACAO,'#13#10'  IT_PROCESSO.' +
      'OBSERVACAOPO,'#13#10'  IT_PROCESSO.TIPOSERVICO,'#13#10'  IT_PROCESSO.TIPOREQ' +
      'UISICAO,'#13#10'  IT_PROCESSO.PERGUNTA1,'#13#10'  IT_PROCESSO.PERGUNTA2,'#13#10'  ' +
      'IT_PROCESSO.PERGUNTA3,'#13#10'  IT_PROCESSO.PERGUNTA4,'#13#10'  IT_PROCESSO.' +
      'PERGUNTA5,'#13#10'  IT_PROCESSO.TIPOCATEGORIAID,'#13#10'  IT_TIPOCATEGORIA.D' +
      'ESCRICAO L_DESCRICAOTIPOCATEGORIA,'#13#10'  IT_PROCESSO.RAZAOEXIGENCIA' +
      'ID,'#13#10'  IT_RAZAOEXIGENCIA.DESCRICAO L_DESCRICAORAZAOEXIGENCIA,'#13#10' ' +
      ' IT_PROCESSO.FREQUENCIAID,'#13#10'  IT_FREQUENCIA.DESCRICAO L_DESCRICA' +
      'OFREQUENCIA,'#13#10'  IT_PROCESSO.USOMEDICO,'#13#10'  IT_PROCESSO.NUMREMESSA' +
      ','#13#10'  IT_PROCESSO.NUMAGENTE,'#13#10'  IT_PROCESSO.PAISDESTINO,'#13#10'  IT_PR' +
      'OCESSO.NUMREFERCONSERTO,'#13#10'  IT_PROCESSO.LIBERACHEFIA,'#13#10'  IT_PROC' +
      'ESSO.NOMELIBERANTE,'#13#10'  IT_PROCESSO.DATALIBERACAO,'#13#10'  IT_PROCESSO' +
      '.FORNECEDORID,'#13#10'  EF_ENTIDADEFORNECEDOR.NOME L_NOMEFORNECEDOR,'#13#10 +
      '  EF_ENTIDADEFORNECEDOR.CEPID L_CEPFORNECEDOR,'#13#10'  EF_ENTIDADEFOR' +
      'NECEDOR.ENDERECO || EF_ENTIDADEFORNECEDOR.NUMERO  L_ENDERECOFORN' +
      'ECEDOR,'#13#10'  EF_ENTIDADEFORNECEDOR.CIDADE L_CIDADEFORNECEDOR,'#13#10'  E' +
      'F_ENTIDADEFORNECEDOR.SIGLAUFID L_UFFORNECEDOR,'#13#10'  IT_PROCESSO.TE' +
      'RMOPAGTOID,'#13#10'  IT_TERMOPAGTO.DESCRICAO L_DESCRICAOTERMOPAGTO,'#13#10' ' +
      ' IT_PROCESSO.NUMPROCESSOJAPAO,'#13#10'  IT_PROCESSO.DATAPREVISAO,'#13#10'  I' +
      'T_PROCESSO.LOCALCHEGADAID,'#13#10'  IT_LOCALCHEGADA.DESCRICAO L_DESCRI' +
      'CAOLOCALCHEGADA,'#13#10'  IT_PROCESSO.VIAEMBARQUEID,'#13#10'  IT_VIAEMBARQUE' +
      '.DESCRICAO L_DESCRICAOVIAEMBARQUE,'#13#10'  IT_PROCESSO.EMBARQUEMARCAC' +
      'AO,'#13#10'  IT_PROCESSO.COBERTURACAMBIAL,'#13#10'  IT_PROCESSO.AGRUPANCM,'#13#10 +
      '  IT_PROCESSO.USUARIO'#13#10'  FROM'#13#10'  IT_PROCESSO IT_PROCESSO,'#13#10'  IT_' +
      'TIPOPROCESSO IT_TIPOPROCESSO,'#13#10'  EF_ENTIDADE EF_ENTIDADEIMPORTAD' +
      'OR,'#13#10'  EF_ENTIDADE EF_ENTIDADECLIENTE,'#13#10'  EF_ENTIDADE EF_ENTIDAD' +
      'EFORNECEDOR,'#13#10'  IT_CONTATOJAPAO IT_CONTATOJAPAO,'#13#10'  IT_TIPOCATEG' +
      'ORIA IT_TIPOCATEGORIA,'#13#10'  IT_RAZAOEXIGENCIA IT_RAZAOEXIGENCIA,'#13#10 +
      '  IT_FREQUENCIA IT_FREQUENCIA,'#13#10'  IT_TERMOPAGTO IT_TERMOPAGTO,'#13#10 +
      '  IT_LOCALCHEGADA IT_LOCALCHEGADA,'#13#10'  IT_VIAEMBARQUE IT_VIAEMBAR' +
      'QUE,'#13#10'  EF_EMPRESA'#13#10' WHERE'#13#10'  IT_TIPOPROCESSO.TIPOPROCESSOID (+)' +
      ' = IT_PROCESSO.TIPOPROCESSOID'#13#10'  AND EF_ENTIDADEIMPORTADOR.ENTID' +
      'ADEID (+) = IT_PROCESSO.IMPORTADORID'#13#10'  AND EF_ENTIDADECLIENTE.E' +
      'NTIDADEID (+) = IT_PROCESSO.CLIENTEID'#13#10'  AND EF_ENTIDADEFORNECED' +
      'OR.ENTIDADEID (+) = IT_PROCESSO.FORNECEDORID'#13#10'  AND IT_TIPOCATEG' +
      'ORIA.TIPOCATEGORIAID (+) = IT_PROCESSO.TIPOCATEGORIAID'#13#10'  AND IT' +
      '_RAZAOEXIGENCIA.RAZAOEXIGENCIAID (+) = IT_PROCESSO.RAZAOEXIGENCI' +
      'AID'#13#10'  AND IT_FREQUENCIA.FREQUENCIAID (+) = IT_PROCESSO.FREQUENC' +
      'IAID'#13#10'  AND IT_CONTATOJAPAO.CONTATOJAPAOID (+) = IT_PROCESSO.CON' +
      'TATOJAPAOID'#13#10'  AND IT_TERMOPAGTO.TERMOPAGTOID (+) = IT_PROCESSO.' +
      'TERMOPAGTOID'#13#10'  AND IT_LOCALCHEGADA.LOCALCHEGADAID(+) = IT_PROCE' +
      'SSO.LOCALCHEGADAID'#13#10'  AND IT_VIAEMBARQUE.VIAEMBARQUEID(+) = IT_P' +
      'ROCESSO.VIAEMBARQUEID'#13#10'  AND EF_EMPRESA.EMPRESAID (+) = IT_PROCE' +
      'SSO.EMPRESAID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 276
    object sqldtsProcessoPROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_SIGLAPROCESSO: TStringField
      FieldName = 'L_SIGLAPROCESSO'
      ProviderFlags = []
    end
    object sqldtsProcessoDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsProcessoPROCESSOANTIGOID: TStringField
      FieldName = 'PROCESSOANTIGOID'
      Size = 10
    end
    object sqldtsProcessoEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsProcessoIMPORTADORID: TBCDField
      FieldName = 'IMPORTADORID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_NOMEIMPORTADOR: TStringField
      FieldName = 'L_NOMEIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_CEPIMPORTADOR: TBCDField
      FieldName = 'L_CEPIMPORTADOR'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_ENDERECOIMPORTADOR: TStringField
      FieldName = 'L_ENDERECOIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_CIDADEIMPORTADOR: TStringField
      FieldName = 'L_CIDADEIMPORTADOR'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsProcessoL_UFIMPORTADOR: TStringField
      FieldName = 'L_UFIMPORTADOR'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsProcessoCLIENTEID: TBCDField
      FieldName = 'CLIENTEID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_NOMECLIENTE: TStringField
      FieldName = 'L_NOMECLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_CEPCLIENTE: TBCDField
      FieldName = 'L_CEPCLIENTE'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_ENDERECOCLIENTE: TStringField
      FieldName = 'L_ENDERECOCLIENTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_CIDADECLIENTE: TStringField
      FieldName = 'L_CIDADECLIENTE'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsProcessoL_UFCLIENTE: TStringField
      FieldName = 'L_UFCLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsProcessoCONTATOJAPAOID: TBCDField
      FieldName = 'CONTATOJAPAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESTINATARIOJAPAO: TStringField
      FieldName = 'L_DESTINATARIOJAPAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_DESTINATARIOEMAILJAPAO: TStringField
      FieldName = 'L_DESTINATARIOEMAILJAPAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsProcessoL_DESTINATARIOCCJAPAO: TStringField
      FieldName = 'L_DESTINATARIOCCJAPAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_DESTINATARIOCCEMAILJAPAO: TStringField
      FieldName = 'L_DESTINATARIOCCEMAILJAPAO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsProcessoL_REMETENTEJAPAO: TStringField
      FieldName = 'L_REMETENTEJAPAO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object sqldtsProcessoREVISAO: TStringField
      FieldName = 'REVISAO'
      Size = 50
    end
    object sqldtsProcessoLOCALFABRICACAO: TStringField
      FieldName = 'LOCALFABRICACAO'
      Size = 100
    end
    object sqldtsProcessoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsProcessoOBSERVACAOPO: TMemoField
      FieldName = 'OBSERVACAOPO'
      BlobType = ftOraClob
      Size = 1
    end
    object sqldtsProcessoTIPOSERVICO: TStringField
      FieldName = 'TIPOSERVICO'
      Size = 1
    end
    object sqldtsProcessoTIPOREQUISICAO: TStringField
      FieldName = 'TIPOREQUISICAO'
      Size = 1
    end
    object sqldtsProcessoPERGUNTA1: TBCDField
      FieldName = 'PERGUNTA1'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoPERGUNTA2: TBCDField
      FieldName = 'PERGUNTA2'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoPERGUNTA3: TBCDField
      FieldName = 'PERGUNTA3'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoPERGUNTA4: TBCDField
      FieldName = 'PERGUNTA4'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoPERGUNTA5: TBCDField
      FieldName = 'PERGUNTA5'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoTIPOCATEGORIAID: TBCDField
      FieldName = 'TIPOCATEGORIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESCRICAOTIPOCATEGORIA: TStringField
      FieldName = 'L_DESCRICAOTIPOCATEGORIA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoRAZAOEXIGENCIAID: TBCDField
      FieldName = 'RAZAOEXIGENCIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESCRICAORAZAOEXIGENCIA: TStringField
      FieldName = 'L_DESCRICAORAZAOEXIGENCIA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoFREQUENCIAID: TBCDField
      FieldName = 'FREQUENCIAID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESCRICAOFREQUENCIA: TStringField
      FieldName = 'L_DESCRICAOFREQUENCIA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoUSOMEDICO: TBCDField
      FieldName = 'USOMEDICO'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoNUMREMESSA: TStringField
      FieldName = 'NUMREMESSA'
      Size = 15
    end
    object sqldtsProcessoNUMAGENTE: TStringField
      FieldName = 'NUMAGENTE'
      Size = 15
    end
    object sqldtsProcessoPAISDESTINO: TStringField
      FieldName = 'PAISDESTINO'
      Size = 30
    end
    object sqldtsProcessoNUMREFERCONSERTO: TBCDField
      FieldName = 'NUMREFERCONSERTO'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoLIBERACHEFIA: TBCDField
      FieldName = 'LIBERACHEFIA'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoNOMELIBERANTE: TStringField
      FieldName = 'NOMELIBERANTE'
    end
    object sqldtsProcessoDATALIBERACAO: TSQLTimeStampField
      FieldName = 'DATALIBERACAO'
    end
    object sqldtsProcessoFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoL_CEPFORNECEDOR: TBCDField
      FieldName = 'L_CEPFORNECEDOR'
      ProviderFlags = []
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_ENDERECOFORNECEDOR: TStringField
      FieldName = 'L_ENDERECOFORNECEDOR'
      ProviderFlags = []
      Size = 120
    end
    object sqldtsProcessoL_CIDADEFORNECEDOR: TStringField
      FieldName = 'L_CIDADEFORNECEDOR'
      ProviderFlags = []
      Size = 72
    end
    object sqldtsProcessoL_UFFORNECEDOR: TStringField
      FieldName = 'L_UFFORNECEDOR'
      ProviderFlags = []
      Size = 2
    end
    object sqldtsProcessoTERMOPAGTOID: TBCDField
      FieldName = 'TERMOPAGTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESCRICAOTERMOPAGTO: TStringField
      FieldName = 'L_DESCRICAOTERMOPAGTO'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoNUMPROCESSOJAPAO: TStringField
      FieldName = 'NUMPROCESSOJAPAO'
      Size = 10
    end
    object sqldtsProcessoDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object sqldtsProcessoLOCALCHEGADAID: TBCDField
      FieldName = 'LOCALCHEGADAID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESCRICAOLOCALCHEGADA: TStringField
      FieldName = 'L_DESCRICAOLOCALCHEGADA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsProcessoVIAEMBARQUEID: TBCDField
      FieldName = 'VIAEMBARQUEID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoL_DESCRICAOVIAEMBARQUE: TStringField
      FieldName = 'L_DESCRICAOVIAEMBARQUE'
      ProviderFlags = []
      Size = 40
    end
    object sqldtsProcessoEMBARQUEMARCACAO: TStringField
      FieldName = 'EMBARQUEMARCACAO'
      Size = 100
    end
    object sqldtsProcessoCOBERTURACAMBIAL: TBCDField
      FieldName = 'COBERTURACAMBIAL'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoAGRUPANCM: TBCDField
      FieldName = 'AGRUPANCM'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsProcessoItem: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT IT_PROCESSOITEM.PROCESSOID,'#13#10'       IT_PROCESSOITEM.TIPOP' +
      'ROCESSOID,'#13#10'       IT_PROCESSOITEM.DATAPROCESSOID,'#13#10'       IT_TI' +
      'POPROCESSO.SIGLA L_SIGLA,'#13#10'       IT_PROCESSOITEM.ITEMID,'#13#10'     ' +
      '  IT_PROCESSOITEM.EMPRESAID,'#13#10'       IT_PROCESSOITEM.PRODUTOID,'#13 +
      #10'       IT_PROCESSOITEM.PARTNUMBERID,'#13#10'       IT_PROCESSOITEM.PA' +
      'RTNUMBERFABID,'#13#10'       IT_PROCESSOITEM.GRUPOID,'#13#10'       EF_GRUPO' +
      '.SIGLAGRUPO L_SIGLAGRUPO,'#13#10'       IT_PROCESSOITEM.DESCRICAOINGLE' +
      'S,'#13#10'       IT_PROCESSOITEM.DESCRICAOPORTUGUES,'#13#10'       IT_PROCES' +
      'SOITEM.NCMID,'#13#10'       IT_PROCESSOITEM.DATACONVERSAO,'#13#10'       IT_' +
      'PROCESSOITEM.VLRYEN,'#13#10'       IT_PROCESSOITEM.VLRFOBUS,'#13#10'       I' +
      'T_PROCESSOITEM.SERIEID,'#13#10'       IT_PROCESSOITEM.MODELOID,'#13#10'     ' +
      '  IT_PROCESSOITEM.NOMEUNIDADE,'#13#10'       IT_PROCESSOITEM.PEDIDOORI' +
      'GINAL,'#13#10'       IT_PROCESSOITEM.DATAINSTALEQUIP,'#13#10'       IT_PROCE' +
      'SSOITEM.DATAFALHAEQUIP,'#13#10'       IT_PROCESSOITEM.PRIORIDADE,'#13#10'   ' +
      '    IT_PROCESSOITEM.QTDPEDIDA,'#13#10'       IT_PROCESSOITEM.QTDLIBERA' +
      'DA,'#13#10'       IT_PROCESSOITEM.REGANVISA,'#13#10'       IT_PROCESSOITEM.D' +
      'ATAPREVISAO,'#13#10'       IT_PROCESSOITEM.DATASOLICLI,        '#13#10'     ' +
      '  IT_PROCESSOITEM.DATAAUTORIZLI,'#13#10'       IT_PROCESSOITEM.DATAINS' +
      'TRENVEMB,       '#13#10'       IT_PROCESSOITEM.DATAEMBARQUE,       '#13#10' ' +
      '      IT_PROCESSOITEM.DATACHEGADA,'#13#10'       IT_PROCESSOITEM.INVOI' +
      'CEID,'#13#10'       IT_PROCESSOITEM.NUMCONHECEMBARQUE,'#13#10'       IT_PROC' +
      'ESSOITEM.TSBREFID,'#13#10'       IT_PROCESSOITEM.DATADEVOLUCAO,'#13#10'     ' +
      '  IT_PROCESSOITEM.DATAPREVRETORNO,'#13#10'       IT_PROCESSOITEM.RETOR' +
      'NAPECADEF,'#13#10'       IT_PROCESSOITEM.DATAEMBTOKIO,'#13#10'       IT_PROC' +
      'ESSOITEM.DECLARACAOID,'#13#10'       IT_DECLARACAO.DIID L_DIID,'#13#10'     ' +
      '  IT_DECLARACAO.NFEID L_NFEID,'#13#10'       IT_DECLARACAO.DATAEMISSAO' +
      'NFEID L_DATAEMISSAONFEID,'#13#10'       IT_DECLARACAO.DATAENTRADANFEID' +
      ' L_DATAENTRADANFEID,'#13#10'       IT_PROCESSOITEM.USUARIO'#13#10'  FROM IT_' +
      'PROCESSOITEM IT_PROCESSOITEM,'#13#10'       IT_TIPOPROCESSO IT_TIPOPRO' +
      'CESSO,'#13#10'       IT_DECLARACAO,'#13#10'       EF_GRUPO'#13#10' WHERE IT_PROCES' +
      'SOITEM.PROCESSOID = :PROCESSOID'#13#10'       AND IT_PROCESSOITEM.TIPO' +
      'PROCESSOID = :TIPOPROCESSOID'#13#10'       AND IT_PROCESSOITEM.DATAPRO' +
      'CESSOID = :DATAPROCESSOID'#13#10'       AND IT_TIPOPROCESSO.TIPOPROCES' +
      'SOID(+) = IT_PROCESSOITEM.TIPOPROCESSOID'#13#10'       AND IT_DECLARAC' +
      'AO.DECLARACAOID(+) = IT_PROCESSOITEM.DECLARACAOID'#13#10'       AND IT' +
      '_PROCESSOITEM.GRUPOID = EF_GRUPO.GRUPOID(+)'
    DataSource = dsProcessoLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROCESSOID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'TIPOPROCESSOID'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATAPROCESSOID'
        ParamType = ptInput
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 276
    Top = 49
    object sqldtsProcessoItemPROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemL_SIGLA: TStringField
      FieldName = 'L_SIGLA'
      ProviderFlags = []
    end
    object sqldtsProcessoItemDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsProcessoItemITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemPARTNUMBERID: TStringField
      FieldName = 'PARTNUMBERID'
    end
    object sqldtsProcessoItemPARTNUMBERFABID: TStringField
      FieldName = 'PARTNUMBERFABID'
    end
    object sqldtsProcessoItemGRUPOID: TBCDField
      FieldName = 'GRUPOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemL_SIGLAGRUPO: TStringField
      FieldName = 'L_SIGLAGRUPO'
      ProviderFlags = []
      Size = 50
    end
    object sqldtsProcessoItemDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object sqldtsProcessoItemDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 100
    end
    object sqldtsProcessoItemNCMID: TStringField
      FieldName = 'NCMID'
      Size = 10
    end
    object sqldtsProcessoItemDATACONVERSAO: TSQLTimeStampField
      FieldName = 'DATACONVERSAO'
    end
    object sqldtsProcessoItemVLRYEN: TBCDField
      FieldName = 'VLRYEN'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoItemVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      Precision = 14
      Size = 2
    end
    object sqldtsProcessoItemSERIEID: TStringField
      FieldName = 'SERIEID'
      Size = 40
    end
    object sqldtsProcessoItemMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsProcessoItemNOMEUNIDADE: TStringField
      FieldName = 'NOMEUNIDADE'
      Size = 100
    end
    object sqldtsProcessoItemPEDIDOORIGINAL: TStringField
      FieldName = 'PEDIDOORIGINAL'
    end
    object sqldtsProcessoItemDATAINSTALEQUIP: TSQLTimeStampField
      FieldName = 'DATAINSTALEQUIP'
    end
    object sqldtsProcessoItemDATAFALHAEQUIP: TSQLTimeStampField
      FieldName = 'DATAFALHAEQUIP'
    end
    object sqldtsProcessoItemPRIORIDADE: TStringField
      FieldName = 'PRIORIDADE'
      Size = 1
    end
    object sqldtsProcessoItemQTDPEDIDA: TBCDField
      FieldName = 'QTDPEDIDA'
      Precision = 8
      Size = 2
    end
    object sqldtsProcessoItemQTDLIBERADA: TBCDField
      FieldName = 'QTDLIBERADA'
      Precision = 8
      Size = 2
    end
    object sqldtsProcessoItemREGANVISA: TStringField
      FieldName = 'REGANVISA'
      Size = 40
    end
    object sqldtsProcessoItemDATAPREVISAO: TSQLTimeStampField
      FieldName = 'DATAPREVISAO'
    end
    object sqldtsProcessoItemDATASOLICLI: TSQLTimeStampField
      FieldName = 'DATASOLICLI'
    end
    object sqldtsProcessoItemDATAAUTORIZLI: TSQLTimeStampField
      FieldName = 'DATAAUTORIZLI'
    end
    object sqldtsProcessoItemDATAINSTRENVEMB: TSQLTimeStampField
      FieldName = 'DATAINSTRENVEMB'
    end
    object sqldtsProcessoItemDATAEMBARQUE: TSQLTimeStampField
      FieldName = 'DATAEMBARQUE'
    end
    object sqldtsProcessoItemDATACHEGADA: TSQLTimeStampField
      FieldName = 'DATACHEGADA'
    end
    object sqldtsProcessoItemINVOICEID: TStringField
      FieldName = 'INVOICEID'
    end
    object sqldtsProcessoItemNUMCONHECEMBARQUE: TStringField
      FieldName = 'NUMCONHECEMBARQUE'
    end
    object sqldtsProcessoItemTSBREFID: TStringField
      FieldName = 'TSBREFID'
    end
    object sqldtsProcessoItemDATADEVOLUCAO: TSQLTimeStampField
      FieldName = 'DATADEVOLUCAO'
    end
    object sqldtsProcessoItemDATAPREVRETORNO: TSQLTimeStampField
      FieldName = 'DATAPREVRETORNO'
    end
    object sqldtsProcessoItemRETORNAPECADEF: TBCDField
      FieldName = 'RETORNAPECADEF'
      Precision = 1
      Size = 0
    end
    object sqldtsProcessoItemDATAEMBTOKIO: TSQLTimeStampField
      FieldName = 'DATAEMBTOKIO'
    end
    object sqldtsProcessoItemDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemL_DIID: TStringField
      FieldName = 'L_DIID'
      ProviderFlags = []
      Size = 12
    end
    object sqldtsProcessoItemL_NFEID: TStringField
      FieldName = 'L_NFEID'
      ProviderFlags = []
      Size = 6
    end
    object sqldtsProcessoItemL_DATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'L_DATAEMISSAONFEID'
      ProviderFlags = []
    end
    object sqldtsProcessoItemL_DATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'L_DATAENTRADANFEID'
      ProviderFlags = []
    end
    object sqldtsProcessoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvProcesso: TDataSetProvider
    DataSet = sqldtsProcesso
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereKeyOnly
    Left = 404
    Top = 49
  end
  object sqldtsIndice: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_INDICE.DATAID,'#13#10'  IT_INDICE.DOLAROFICIALC,'#13#10'  IT_IN' +
      'DICE.DOLAROFICIALV,'#13#10'  IT_INDICE.DOLARPARALELOC,'#13#10'  IT_INDICE.DO' +
      'LARPARALELOV,'#13#10'  IT_INDICE.DOLARTURISMOC,'#13#10'  IT_INDICE.DOLARTURI' +
      'SMOV,'#13#10'  IT_INDICE.DOLARFISCALDIARIO,'#13#10'  IT_INDICE.YENEFISCALDIA' +
      'RIO,'#13#10'  IT_INDICE.USUARIO'#13#10'  FROM'#13#10'  IT_INDICE IT_INDICE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    object sqldtsIndiceDATAID: TSQLTimeStampField
      FieldName = 'DATAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsIndiceDOLAROFICIALC: TFMTBCDField
      FieldName = 'DOLAROFICIALC'
      Precision = 14
    end
    object sqldtsIndiceDOLAROFICIALV: TFMTBCDField
      FieldName = 'DOLAROFICIALV'
      Precision = 14
    end
    object sqldtsIndiceDOLARPARALELOC: TFMTBCDField
      FieldName = 'DOLARPARALELOC'
      Precision = 14
    end
    object sqldtsIndiceDOLARPARALELOV: TFMTBCDField
      FieldName = 'DOLARPARALELOV'
      Precision = 14
    end
    object sqldtsIndiceDOLARTURISMOC: TFMTBCDField
      FieldName = 'DOLARTURISMOC'
      Precision = 14
    end
    object sqldtsIndiceDOLARTURISMOV: TFMTBCDField
      FieldName = 'DOLARTURISMOV'
      Precision = 14
    end
    object sqldtsIndiceDOLARFISCALDIARIO: TFMTBCDField
      FieldName = 'DOLARFISCALDIARIO'
      Precision = 14
    end
    object sqldtsIndiceYENEFISCALDIARIO: TFMTBCDField
      FieldName = 'YENEFISCALDIARIO'
      Precision = 14
    end
    object sqldtsIndiceUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvIndice: TDataSetProvider
    DataSet = sqldtsIndice
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 144
  end
  object sqldtsTipoCategoria: TSQLDataSet
    CommandText = 
      'SELECT TIPOCATEGORIAID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FR' +
      'OM IT_TIPOCATEGORIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 384
    object sqldtsTipoCategoriaTIPOCATEGORIAID: TBCDField
      FieldName = 'TIPOCATEGORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsTipoCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsTipoCategoriaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvTipoCategoria: TDataSetProvider
    DataSet = sqldtsTipoCategoria
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 384
  end
  object sqldtsRazaoExigencia: TSQLDataSet
    CommandText = 
      'SELECT RAZAOEXIGENCIAID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  F' +
      'ROM IT_RAZAOEXIGENCIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 432
    object sqldtsRazaoExigenciaRAZAOEXIGENCIAID: TBCDField
      FieldName = 'RAZAOEXIGENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsRazaoExigenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsRazaoExigenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvRazaoExigencia: TDataSetProvider
    DataSet = sqldtsRazaoExigencia
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 432
  end
  object sqldtsFrequencia: TSQLDataSet
    CommandText = 
      'SELECT FREQUENCIAID,'#13#10'       DESCRICAO,'#13#10'       USUARIO'#13#10'  FROM ' +
      'IT_FREQUENCIA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 480
    object sqldtsFrequenciaFREQUENCIAID: TBCDField
      FieldName = 'FREQUENCIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsFrequenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsFrequenciaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvFrequencia: TDataSetProvider
    DataSet = sqldtsFrequencia
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 480
  end
  object dsprvAdicao: TDataSetProvider
    DataSet = sqldtsAdicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 576
    Top = 96
  end
  object dsprvMercadoria: TDataSetProvider
    DataSet = sqldtsMercadoria
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 576
    Top = 152
  end
  object sqldtsListaPreco: TSQLDataSet
    CommandText = 
      'SELECT PARTNUMBERID,'#13#10'       DESCRICAOINGLES,'#13#10'       MODELOID,'#13 +
      #10'       VLRFOB,'#13#10'       VLRVENDA,'#13#10'       VLRTROCA,'#13#10'       USUA' +
      'RIO'#13#10'  FROM IT_LISTAPRECO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 96
    object sqldtsListaPrecoPARTNUMBERID: TStringField
      FieldName = 'PARTNUMBERID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsListaPrecoDESCRICAOINGLES: TStringField
      FieldName = 'DESCRICAOINGLES'
      Size = 100
    end
    object sqldtsListaPrecoMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsListaPrecoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object sqldtsListaPrecoVLRVENDA: TBCDField
      FieldName = 'VLRVENDA'
      Precision = 14
      Size = 2
    end
    object sqldtsListaPrecoVLRTROCA: TBCDField
      FieldName = 'VLRTROCA'
      Precision = 14
      Size = 2
    end
    object sqldtsListaPrecoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvListaPreco: TDataSetProvider
    DataSet = sqldtsListaPreco
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 96
  end
  object sqldtsCorListaPreco: TSQLDataSet
    CommandText = 
      'SELECT DATAID,'#13#10'       VLRDOLAR,'#13#10'       VLRIPI,'#13#10'       OBSERVA' +
      'CAO,'#13#10'       USUARIO'#13#10'  FROM IT_CORLISTAPRECO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 40
    Top = 144
    object sqldtsCorListaPrecoDATAID: TSQLTimeStampField
      FieldName = 'DATAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsCorListaPrecoVLRDOLAR: TFMTBCDField
      FieldName = 'VLRDOLAR'
      Precision = 14
      Size = 6
    end
    object sqldtsCorListaPrecoVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 6
    end
    object sqldtsCorListaPrecoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object sqldtsCorListaPrecoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvCorListaPreco: TDataSetProvider
    DataSet = sqldtsCorListaPreco
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 144
    Top = 144
  end
  object sqldtsRelLD: TSQLDataSet
    CommandText = 
      'SELECT '#13#10' C.CONTACONTABILID,'#13#10' C.CREDDEB,'#13#10' T.DESCRICAO,'#13#10' D.DII' +
      'D,'#13#10' D.DATAENTRADANFEID,'#13#10' D.NFEID,'#13#10' D.NUMDEMONSDESPESA,'#13#10' D.RE' +
      'FERENCIA,'#13#10' D.CENTROCUSTOID,'#13#10' D.VLRTOTALFOBUS,'#13#10' E.NUMEMPRESAEX' +
      'P,'#13#10' ( CASE '#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALIPI'#39'           TH' +
      'EN NVL( D.VLRTOTALIPI, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALICM' +
      'S'#39'          THEN NVL( D.VLRTOTALICMS, 0 )'#13#10'   WHEN C.NOMECAMPOID' +
      ' = '#39'VLRTOTALCUSTOAPARELHO'#39' THEN NVL( D.VLRTOTALCUSTOAPARELHO, 0 ' +
      ')'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALCUSTOPECA'#39'     THEN NVL( D.V' +
      'LRTOTALCUSTOPECA, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALMAQEQUIP' +
      #39'      THEN NVL( D.VLRTOTALMAQEQUIP, 0 )'#13#10'   WHEN C.NOMECAMPOID ' +
      '= '#39'VLRTOTALFERRAMENTAL'#39'   THEN NVL( D.VLRTOTALFERRAMENTAL, 0 )'#13#10 +
      '   WHEN C.NOMECAMPOID = '#39'VLRTOTALMOVUTENSILIOS'#39' THEN NVL( D.VLRT' +
      'OTALMOVUTENSILIOS, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALADMTEMP' +
      #39'       THEN NVL( D.VLRTOTALADMTEMP, 0 ) '#13#10'   WHEN C.NOMECAMPOID' +
      ' = '#39'VLRTOTALPIS'#39'           THEN NVL( D.VLRTOTALPIS, 0 )'#13#10'   WHEN' +
      ' C.NOMECAMPOID = '#39'VLRTOTALCOFINS'#39'        THEN NVL( D.VLRTOTALCOF' +
      'INS, 0 )'#13#10'   ELSE 0'#13#10'   END ) AS VLRDEBITO,'#13#10' ( CASE '#13#10'   WHEN C' +
      '.NOMECAMPOID = '#39'VLRTOTALFOB2'#39'          THEN NVL( D.VLRTOTALFOB2,' +
      ' 0 ) '#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALFOBANT'#39'        THEN NVL(' +
      ' D.VLRTOTALFOBANT, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALCIF2'#39'  ' +
      '        THEN NVL( D.VLRTOTALCIF2, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39 +
      'VLRTOTALCIFANT'#39'        THEN NVL( D.VLRTOTALCIFANT, 0 )'#13#10'   WHEN ' +
      'C.NOMECAMPOID = '#39'VLRTOTALDESPDESP'#39'      THEN NVL( D.VLRTOTALDESP' +
      'DESP, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALDESPGI'#39'        THEN ' +
      'NVL( D.VLRTOTALDESPGI, 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALSEG' +
      'UROTRANSP'#39'  THEN NVL( D.VLRTOTALSEGUROTRANSP, 0 )'#13#10'   WHEN C.NOM' +
      'ECAMPOID = '#39'VLRTOTALIRRFPAGAR'#39'     THEN NVL( D.VLRTOTALIRRFPAGAR' +
      ', 0 )'#13#10'   WHEN C.NOMECAMPOID = '#39'VLRTOTALFRETELOCAL'#39'    THEN NVL(' +
      ' D.VLRTOTALFRETELOCAL, 0 )   '#13#10'   ELSE 0   '#13#10'   END ) AS VLRCRED' +
      'ITO'#13#10'  FROM IT_DECLARACAO D,'#13#10'       IT_CONTA C,'#13#10'       EF_CONT' +
      'ACONTABIL T,'#13#10'       EF_EMPRESA E'#13#10' WHERE D.DATAENTRADANFEID BET' +
      'WEEN :PEMP1 AND :PEMP2'#13#10'   AND C.EMPRESAID(+) = D.EMPRESAID'#13#10'   ' +
      'AND D.EMPRESAID BETWEEN :PEMP_1 AND :PEMP_2'#13#10'   AND T.CONTACONTA' +
      'BILID = C.CONTACONTABILID'#13#10'   AND D.EMPRESAID = E.EMPRESAID'#13#10'   ' +
      'AND ( CASE '#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTALIPI'#39'       ' +
      '    THEN NVL( D.VLRTOTALIPI , 0 )'#13#10'          WHEN C.NOMECAMPOID ' +
      '= '#39'VLRTOTALICMS'#39'          THEN NVL( D.VLRTOTALICMS, 0 )'#13#10'       ' +
      '   WHEN C.NOMECAMPOID = '#39'VLRTOTALCUSTOAPARELHO'#39' THEN NVL( D.VLRT' +
      'OTALCUSTOAPARELHO, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTAL' +
      'CUSTOPECA'#39'     THEN NVL( D.VLRTOTALCUSTOPECA, 0 )'#13#10'          WHE' +
      'N C.NOMECAMPOID = '#39'VLRTOTALMAQEQUIP'#39'      THEN NVL( D.VLRTOTALMA' +
      'QEQUIP, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTALFERRAMENTAL' +
      #39'   THEN NVL( D.VLRTOTALFERRAMENTAL, 0 )'#13#10'          WHEN C.NOMEC' +
      'AMPOID = '#39'VLRTOTALMOVUTENSILIOS'#39' THEN NVL( D.VLRTOTALMOVUTENSILI' +
      'OS, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTALADMTEMP'#39'       ' +
      'THEN NVL( D.VLRTOTALADMTEMP, 0 ) '#13#10'          WHEN C.NOMECAMPOID ' +
      '= '#39'VLRTOTALPIS'#39'           THEN NVL( D.VLRTOTALPIS, 0 )'#13#10'        ' +
      '  WHEN C.NOMECAMPOID = '#39'VLRTOTALCOFINS'#39'        THEN NVL( D.VLRTO' +
      'TALCOFINS, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTALFOB2'#39'   ' +
      '       THEN NVL( D.VLRTOTALFOB2, 0 ) '#13#10'          WHEN C.NOMECAMP' +
      'OID = '#39'VLRTOTALFOBANT'#39'        THEN NVL( D.VLRTOTALFOBANT, 0 )'#13#10' ' +
      '         WHEN C.NOMECAMPOID = '#39'VLRTOTALCIF2'#39'          THEN NVL( ' +
      'D.VLRTOTALCIF2, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTALCIF' +
      'ANT'#39'        THEN NVL( D.VLRTOTALCIFANT, 0 )'#13#10'          WHEN C.NO' +
      'MECAMPOID = '#39'VLRTOTALDESPDESP'#39'      THEN NVL( D.VLRTOTALDESPDESP' +
      ', 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTALDESPGI'#39'        TH' +
      'EN NVL( D.VLRTOTALDESPGI, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'V' +
      'LRTOTALSEGUROTRANSP'#39'  THEN NVL( D.VLRTOTALSEGUROTRANSP, 0 )'#13#10'   ' +
      '       WHEN C.NOMECAMPOID = '#39'VLRTOTALIRRFPAGAR'#39'     THEN NVL( D.' +
      'VLRTOTALIRRFPAGAR, 0 )'#13#10'          WHEN C.NOMECAMPOID = '#39'VLRTOTAL' +
      'FRETELOCAL'#39'    THEN NVL( D.VLRTOTALFRETELOCAL, 0 )'#13#10'          EL' +
      'SE 0    '#13#10'          END ) > 0          '#13#10' ORDER BY C.CONTACONTAB' +
      'ILID, D.DATAENTRADANFEID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PEMP1'
        ParamType = ptInput
        Value = '01/01/01'
      end
      item
        DataType = ftString
        Name = 'PEMP2'
        ParamType = ptInput
        Value = '01/01/01'
      end
      item
        DataType = ftString
        Name = 'PEMP_1'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'PEMP_2'
        ParamType = ptInput
        Value = '1'
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 508
    Top = 220
    object sqldtsRelLDCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsRelLDCREDDEB: TStringField
      FieldName = 'CREDDEB'
      Size = 1
    end
    object sqldtsRelLDDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsRelLDDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object sqldtsRelLDDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object sqldtsRelLDNFEID: TStringField
      FieldName = 'NFEID'
      Size = 6
    end
    object sqldtsRelLDNUMEMPRESAEXP: TBCDField
      FieldName = 'NUMEMPRESAEXP'
      Precision = 8
      Size = 2
    end
    object sqldtsRelLDNUMDEMONSDESPESA: TStringField
      FieldName = 'NUMDEMONSDESPESA'
      Size = 10
    end
    object sqldtsRelLDREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 100
    end
    object sqldtsRelLDVLRTOTALFOBUS: TBCDField
      FieldName = 'VLRTOTALFOBUS'
      Precision = 14
      Size = 2
    end
    object sqldtsRelLDVLRDEBITO: TFMTBCDField
      FieldName = 'VLRDEBITO'
      Precision = 32
    end
    object sqldtsRelLDVLRCREDITO: TFMTBCDField
      FieldName = 'VLRCREDITO'
      Precision = 32
    end
    object sqldtsRelLDCENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 7
    end
  end
  object dsprvRelLD: TDataSetProvider
    DataSet = sqldtsRelLD
    UpdateMode = upWhereKeyOnly
    Left = 576
    Top = 220
  end
  object sqldtsProcessoItemSerie: TSQLDataSet
    SchemaName = 'gsi'
    CommandText = 
      'SELECT'#13#10'  IT_PROCESSOITEMSERIE.PROCESSOID,'#13#10'  IT_PROCESSOITEMSER' +
      'IE.TIPOPROCESSOID,'#13#10'  IT_PROCESSOITEMSERIE.DATAPROCESSOID,'#13#10'  IT' +
      '_PROCESSOITEMSERIE.ITEMID,'#13#10'  IT_PROCESSOITEMSERIE.SERIEID,'#13#10'  I' +
      'T_PROCESSOITEMSERIE.MODELOID,'#13#10'  IT_PROCESSOITEMSERIE.COMPOSICAO' +
      ','#13#10'  IT_PROCESSOITEMSERIE.USUARIO'#13#10'  FROM'#13#10'  IT_PROCESSOITEMSERI' +
      'E IT_PROCESSOITEMSERIE'#13#10'WHERE'#13#10'  IT_PROCESSOITEMSERIE.PROCESSOID' +
      ' = :PROCESSOID'#13#10'  AND IT_PROCESSOITEMSERIE.TIPOPROCESSOID = :TIP' +
      'OPROCESSOID'#13#10'  AND IT_PROCESSOITEMSERIE.DATAPROCESSOID = :DATAPR' +
      'OCESSOID'#13#10'  AND IT_PROCESSOITEMSERIE.ITEMID = :ITEMID'
    DataSource = dsProcessoItemLink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'PROCESSOID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftBCD
        Name = 'TIPOPROCESSOID'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftDateTime
        Name = 'DATAPROCESSOID'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'ITEMID'
        ParamType = ptInput
        Size = 2
      end>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 280
    Top = 96
    object sqldtsProcessoItemSeriePROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemSerieTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemSerieDATAPROCESSOID: TSQLTimeStampField
      FieldName = 'DATAPROCESSOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqldtsProcessoItemSerieITEMID: TBCDField
      FieldName = 'ITEMID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsProcessoItemSerieSERIEID: TStringField
      FieldName = 'SERIEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object sqldtsProcessoItemSerieMODELOID: TStringField
      FieldName = 'MODELOID'
      Size = 40
    end
    object sqldtsProcessoItemSerieCOMPOSICAO: TMemoField
      FieldName = 'COMPOSICAO'
      BlobType = ftMemo
      Size = 1
    end
    object sqldtsProcessoItemSerieUSUARIO: TStringField
      Tag = 1
      FieldName = 'USUARIO'
    end
  end
  object dsProcessoItemLink: TDataSource
    DataSet = sqldtsProcessoItem
    Left = 408
    Top = 96
  end
  object sqldtsConta: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  IT_CONTA.EMPRESAID,'#13#10'  EF_EMPRESA.NOMEFANTASIA L_NOMEF' +
      'ANTASIA,'#13#10'  IT_CONTA.NOMECAMPOID,'#13#10'  IT_CONTA.CONTACONTABILID,'#13#10 +
      '  EF_CONTACONTABIL.DESCRICAO L_DESCRICAOCONTA,'#13#10'  IT_CONTA.CREDD' +
      'EB,'#13#10'  IT_CONTA.USUARIO '#13#10'  FROM'#13#10'  IT_CONTA IT_CONTA,'#13#10'  EF_EMP' +
      'RESA EF_EMPRESA,'#13#10'  EF_CONTACONTABIL EF_CONTACONTABIL'#13#10' WHERE'#13#10' ' +
      ' EF_EMPRESA.EMPRESAID(+) = IT_CONTA.EMPRESAID'#13#10'  AND EF_CONTACON' +
      'TABIL.CONTACONTABILID(+) = IT_CONTA.CONTACONTABILID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 280
    Top = 144
    object sqldtsContaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsContaL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object sqldtsContaNOMECAMPOID: TStringField
      FieldName = 'NOMECAMPOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object sqldtsContaCONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object sqldtsContaL_DESCRICAOCONTA: TStringField
      FieldName = 'L_DESCRICAOCONTA'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsContaCREDDEB: TStringField
      FieldName = 'CREDDEB'
      Size = 1
    end
    object sqldtsContaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvConta: TDataSetProvider
    DataSet = sqldtsConta
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 408
    Top = 144
  end
  object sqldtsLocalChegada: TSQLDataSet
    CommandText = 
      'SELECT IT_LOCALCHEGADA.LOCALCHEGADAID,'#13#10'       IT_LOCALCHEGADA.D' +
      'ESCRICAO,'#13#10'       IT_LOCALCHEGADA.USUARIO'#13#10'  FROM IT_LOCALCHEGAD' +
      'A'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 280
    Top = 192
    object sqldtsLocalChegadaLOCALCHEGADAID: TBCDField
      FieldName = 'LOCALCHEGADAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsLocalChegadaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object sqldtsLocalChegadaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object sqldtsViaEmbarque: TSQLDataSet
    CommandText = 
      'SELECT IT_VIAEMBARQUE.VIAEMBARQUEID,'#13#10'       IT_VIAEMBARQUE.DESC' +
      'RICAO,'#13#10'       IT_VIAEMBARQUE.USUARIO'#13#10'  FROM IT_VIAEMBARQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 280
    Top = 240
    object sqldtsViaEmbarqueVIAEMBARQUEID: TBCDField
      FieldName = 'VIAEMBARQUEID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object sqldtsViaEmbarqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object sqldtsViaEmbarqueUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsprvLocalChegada: TDataSetProvider
    DataSet = sqldtsLocalChegada
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 408
    Top = 192
  end
  object dsprvViaEmbarque: TDataSetProvider
    DataSet = sqldtsViaEmbarque
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    UpdateMode = upWhereChanged
    Left = 408
    Top = 240
  end
end
