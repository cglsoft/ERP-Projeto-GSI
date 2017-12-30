object Form1: TForm1
  Left = 192
  Top = 114
  Width = 544
  Height = 415
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 440
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object sqlcnnTOSHIBA: TSQLConnection
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbexpora.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'DataBase=toshiba'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=gsi'
      'Oracle TransIsolation=ReadCommited'
      'User_Name=gsi')
    VendorLib = 'OCI.DLL'
    Connected = True
    Left = 48
    Top = 24
  end
  object sqldtsDeclaracao: TSQLDataSet
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  IT_DECLARACAO.DECLARACAOID,'#13#10'  IT_DECLARACAO.EMPRESAID' +
      ','#13#10'  EF_EMPRESA.NOMEFANTASIA L_NOMEFANTASIA,'#13#10'  IT_DECLARACAO.DI' +
      'ID,'#13#10'  IT_DECLARACAO.DATAREGISTRO,'#13#10'  IT_DECLARACAO.REFERENCIA,'#13 +
      #10'  IT_DECLARACAO.DATALIBERACAO,'#13#10'  IT_DECLARACAO.TIPOMOEDAFRETE,' +
      #13#10'  IT_DECLARACAO.IMPORTADORID,'#13#10'  EF_ENTIDADEIMPORTADOR.NOME L_' +
      'NOMEIMPORTADOR,'#13#10'  IT_DECLARACAO.FORNECEDORID,'#13#10'  EF_ENTIDADEFOR' +
      'NECEDOR.NOME L_NOMEFORNECEDOR,'#13#10'  IT_DECLARACAO.CONTACONTABILID,' +
      #13#10'  IT_DECLARACAO.CENTROCUSTOID,'#13#10'  IT_DECLARACAO.NUMCONTRATOCAM' +
      'BIO,'#13#10'  IT_DECLARACAO.DATACONTRATO,'#13#10'  IT_DECLARACAO.OBSPEDIDO,'#13 +
      #10'  IT_DECLARACAO.CREDITARICMS,'#13#10'  IT_DECLARACAO.AGREGARVLRFOB,'#13#10 +
      '  IT_DECLARACAO.RESTITUIRICMS,'#13#10'  IT_DECLARACAO.AGREGARFRETE,'#13#10' ' +
      ' IT_DECLARACAO.FOBANTECIPADO,'#13#10'  IT_DECLARACAO.ADMISSAOTEMP,'#13#10'  ' +
      'IT_DECLARACAO.LIBERARESTOQUE,'#13#10'  IT_DECLARACAO.ATIVOFIXO,'#13#10'  IT_' +
      'DECLARACAO.FRETEPAGO,'#13#10'  IT_DECLARACAO.DESPACHANTEID,'#13#10'  IT_DESP' +
      'ACHANTE.NOME L_NOMEDESPACHANTE,'#13#10'  IT_DECLARACAO.NUMDEMONSDESPES' +
      'A,'#13#10'  IT_DECLARACAO.VLRDESPESAII,'#13#10'  IT_DECLARACAO.VLRDESPESAICM' +
      'S,'#13#10'  IT_DECLARACAO.VLRDESPESADESEMB,'#13#10'  IT_DECLARACAO.VLRDESPES' +
      'ATOTAL,'#13#10'  IT_DECLARACAO.NFEID,'#13#10'  IT_DECLARACAO.DATAEMISSAONFEI' +
      'D,'#13#10'  IT_DECLARACAO.DATAENTRADANFEID,'#13#10'  IT_DECLARACAO.NATUREZAO' +
      'PID,'#13#10'  EF_NATUREZAOP.CFOP L_CFOP,'#13#10'  EF_NATUREZAOP.DESCRICAOOPE' +
      'RACAOUSUARIO L_DESCRICAONATUREZAUSUARIO,'#13#10'  EF_NATUREZAOP.DESCRI' +
      'CAOOPERACAONOTA L_DESCRICAONATUREZANOTA,'#13#10'  IT_DECLARACAO.VLRTOT' +
      'ALCIF,'#13#10'  IT_DECLARACAO.VLRTOTALPESO,'#13#10'  IT_DECLARACAO.VLRTOTALF' +
      'OBUS,'#13#10'  IT_DECLARACAO.VLRTOTALFOB,'#13#10'  IT_DECLARACAO.VLRFRETE,'#13#10 +
      '  IT_DECLARACAO.VLRSEGUROINTERNAC,'#13#10'  IT_DECLARACAO.TAXAFOBANTEC' +
      'IPADO,'#13#10'  IT_DECLARACAO.TAXASISCOMEX,'#13#10'  IT_DECLARACAO.VLRTOTALI' +
      'PI,'#13#10'  IT_DECLARACAO.VLRTOTALICMS,'#13#10'  IT_DECLARACAO.VLRTOTALCUST' +
      'OAPARELHO,'#13#10'  IT_DECLARACAO.VLRTOTALCUSTOPECA,'#13#10'  IT_DECLARACAO.' +
      'VLRTOTALMAQEQUIP,'#13#10'  IT_DECLARACAO.VLRTOTALFERRAMENTAL,'#13#10'  IT_DE' +
      'CLARACAO.VLRTOTALMOVUTENSILIOS,'#13#10'  IT_DECLARACAO.VLRTOTALADMTEMP' +
      ','#13#10'  IT_DECLARACAO.VLRTOTALPIS,'#13#10'  IT_DECLARACAO.VLRTOTALCOFINS,' +
      #13#10'  IT_DECLARACAO.VLRTOTALFOB2,'#13#10'  IT_DECLARACAO.VLRTOTALFOBANT,' +
      #13#10'  IT_DECLARACAO.VLRTOTALCIF2,'#13#10'  IT_DECLARACAO.VLRTOTALCIFANT,' +
      #13#10'  IT_DECLARACAO.VLRTOTALDESPDESP,'#13#10'  IT_DECLARACAO.VLRTOTALDES' +
      'PGI,'#13#10'  IT_DECLARACAO.VLRTOTALSEGUROTRANSP,'#13#10'  IT_DECLARACAO.VLR' +
      'TOTALIRRFPAGAR,'#13#10'  IT_DECLARACAO.VLRTOTALFRETELOCAL,'#13#10'  IT_DECLA' +
      'RACAO.USUARIO'#13#10'  FROM'#13#10'  IT_DECLARACAO IT_DECLARACAO,'#13#10'  EF_NATU' +
      'REZAOP EF_NATUREZAOP,'#13#10'  EF_ENTIDADE EF_ENTIDADEFORNECEDOR,'#13#10'  E' +
      'F_ENTIDADE EF_ENTIDADEIMPORTADOR,'#13#10'  EF_EMPRESA,'#13#10'  IT_DESPACHAN' +
      'TE'#13#10' WHERE'#13#10'  EF_NATUREZAOP.NATUREZAOPID (+) = IT_DECLARACAO.NAT' +
      'UREZAOPID'#13#10'  AND EF_ENTIDADEFORNECEDOR.ENTIDADEID (+) = IT_DECLA' +
      'RACAO.FORNECEDORID'#13#10'  AND EF_ENTIDADEIMPORTADOR.ENTIDADEID (+) =' +
      ' IT_DECLARACAO.IMPORTADORID'#13#10'  AND EF_EMPRESA.EMPRESAID (+) = IT' +
      '_DECLARACAO.EMPRESAID'#13#10'  AND IT_DESPACHANTE.DESPACHANTEID (+) = ' +
      'IT_DECLARACAO.DESPACHANTEID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlcnnTOSHIBA
    Left = 132
    Top = 24
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
    object sqldtsDeclaracaoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 22
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
    object sqldtsDeclaracaoOBSPEDIDO: TMemoField
      FieldName = 'OBSPEDIDO'
      BlobType = ftOraClob
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
    object sqldtsDeclaracaoL_NOMEDESPACHANTE: TStringField
      FieldName = 'L_NOMEDESPACHANTE'
      ProviderFlags = []
      Size = 100
    end
    object sqldtsDeclaracaoNUMDEMONSDESPESA: TStringField
      FieldName = 'NUMDEMONSDESPESA'
      Size = 10
    end
    object sqldtsDeclaracaoVLRDESPESAII: TBCDField
      FieldName = 'VLRDESPESAII'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPESAICMS: TBCDField
      FieldName = 'VLRDESPESAICMS'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPESADESEMB: TBCDField
      FieldName = 'VLRDESPESADESEMB'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoVLRDESPESATOTAL: TBCDField
      FieldName = 'VLRDESPESATOTAL'
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
    object sqldtsDeclaracaoVLRTOTALPESO: TBCDField
      FieldName = 'VLRTOTALPESO'
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
    object sqldtsDeclaracaoVLRSEGUROINTERNAC: TBCDField
      FieldName = 'VLRSEGUROINTERNAC'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoTAXAFOBANTECIPADO: TBCDField
      FieldName = 'TAXAFOBANTECIPADO'
      Precision = 14
      Size = 2
    end
    object sqldtsDeclaracaoTAXASISCOMEX: TBCDField
      FieldName = 'TAXASISCOMEX'
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
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  IT_ADICAO.DECLARACAOID,'#13#10'  IT_ADICAO.ADICAOID,'#13#10'  IT_A' +
      'DICAO.NCMID,'#13#10'  IT_ADICAO.PESOLIQUIDO,'#13#10'  IT_ADICAO.VLRFOBUS,'#13#10' ' +
      ' IT_ADICAO.VLRFOB,'#13#10'  IT_ADICAO.VLRCIF,'#13#10'  IT_ADICAO.ALIQUOTAII,' +
      #13#10'  IT_ADICAO.VLRII,'#13#10'  IT_ADICAO.ALIQUOTAIPI,'#13#10'  IT_ADICAO.VLRI' +
      'PI,'#13#10'  IT_ADICAO.USUARIO'#13#10'  FROM'#13#10'  IT_ADICAO IT_ADICAO'#13#10' WHERE'#13 +
      #10'  IT_ADICAO.DECLARACAOID = :DECLARACAOID'#13#10
    DataSource = dsDILink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'DECLARACAOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 132
    Top = 73
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
    NoMetadata = True
    CommandText = 
      'SELECT'#13#10'  IT_MERCADORIA.DECLARACAOID,'#13#10'  IT_MERCADORIA.MERCADORI' +
      'AID,'#13#10'  IT_MERCADORIA.PROCESSOID,'#13#10'  IT_MERCADORIA.TIPOPROCESSOI' +
      'D,'#13#10'  IT_TIPOPROCESSO.SIGLA AS L_SIGLA,  '#13#10'  IT_MERCADORIA.ITEMP' +
      'ROCESSOID,'#13#10'  IT_MERCADORIA.NCMID,'#13#10'  IT_MERCADORIA.LIBERAESTOQU' +
      'E,'#13#10'  IT_MERCADORIA.EMPRESAID,'#13#10'  IT_MERCADORIA.PRODUTOID,'#13#10'  EF' +
      '_PRODUTO.DESCRICAOPORTUGUES AS L_DESCRICAO_PRODUTO,'#13#10'  IT_MERCAD' +
      'ORIA.QUANTIDADE,'#13#10'  IT_MERCADORIA.IMOBILIZADO,'#13#10'  IT_MERCADORIA.' +
      'TIPOMATERIAL,'#13#10'  IT_MERCADORIA.PESOLIQUIDO,'#13#10'  IT_MERCADORIA.PES' +
      'OBRUTO,'#13#10'  IT_MERCADORIA.VLRFOBUS,'#13#10'  IT_MERCADORIA.VLRFOB,'#13#10'  I' +
      'T_MERCADORIA.VLRCIF,'#13#10'  IT_MERCADORIA.VLRCUSTOMOVIMENTO,'#13#10'  IT_M' +
      'ERCADORIA.VLRCUSTOTRANSFERENCIA,'#13#10'  IT_MERCADORIA.VLRBASEIPI,'#13#10' ' +
      ' IT_MERCADORIA.ALIQUOTAIPI,'#13#10'  IT_MERCADORIA.VLRIPI,'#13#10'  IT_MERCA' +
      'DORIA.VLRBASEICMS,'#13#10'  IT_MERCADORIA.VLRICMS,'#13#10'  IT_MERCADORIA.AL' +
      'IQUOTAII,'#13#10'  IT_MERCADORIA.VLRFRETE,'#13#10'  IT_MERCADORIA.VLRFRETEUS' +
      ','#13#10'  IT_MERCADORIA.VLRPIS,'#13#10'  IT_MERCADORIA.VLRCOFINS,'#13#10'  IT_MER' +
      'CADORIA.USUARIO'#13#10'  FROM'#13#10'  IT_MERCADORIA IT_MERCADORIA,'#13#10'  IT_TI' +
      'POPROCESSO IT_TIPOPROCESSO,'#13#10'  EF_PRODUTO EF_PRODUTO'#13#10' WHERE'#13#10'  ' +
      'IT_MERCADORIA.DECLARACAOID = :DECLARACAOID'#13#10'  AND IT_MERCADORIA.' +
      'TIPOPROCESSOID = IT_TIPOPROCESSO.TIPOPROCESSOID(+)'#13#10'  AND IT_MER' +
      'CADORIA.EMPRESAID = EF_PRODUTO.EMPRESAID(+)'#13#10'  AND IT_MERCADORIA' +
      '.PRODUTOID = EF_PRODUTO.PRODUTOID(+)'
    DataSource = dsDILink
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftBCD
        Name = 'DECLARACAOID'
        ParamType = ptInput
        Size = 34
      end>
    SQLConnection = sqlcnnTOSHIBA
    Left = 132
    Top = 121
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
    Left = 208
    Top = 73
  end
  object dsDILink: TDataSource
    DataSet = sqldtsDeclaracao
    Left = 212
    Top = 24
  end
  object dsprvAdicao: TDataSetProvider
    DataSet = sqldtsAdicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 208
    Top = 120
  end
  object dsprvMercadoria: TDataSetProvider
    DataSet = sqldtsMercadoria
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 208
    Top = 176
  end
  object cdsDI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsprvDeclaracao'
    OnReconcileError = cdsDIReconcileError
    Left = 304
    Top = 24
    object cdsDIDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsDIEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsDIL_NOMEFANTASIA: TStringField
      FieldName = 'L_NOMEFANTASIA'
      ProviderFlags = []
      Size = 60
    end
    object cdsDIDIID: TStringField
      FieldName = 'DIID'
      Size = 12
    end
    object cdsDIDATAREGISTRO: TSQLTimeStampField
      FieldName = 'DATAREGISTRO'
    end
    object cdsDIREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 22
    end
    object cdsDIDATALIBERACAO: TSQLTimeStampField
      FieldName = 'DATALIBERACAO'
    end
    object cdsDITIPOMOEDAFRETE: TStringField
      FieldName = 'TIPOMOEDAFRETE'
      Size = 1
    end
    object cdsDIIMPORTADORID: TBCDField
      FieldName = 'IMPORTADORID'
      Precision = 8
      Size = 0
    end
    object cdsDIL_NOMEIMPORTADOR: TStringField
      FieldName = 'L_NOMEIMPORTADOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsDIFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Precision = 8
      Size = 0
    end
    object cdsDIL_NOMEFORNECEDOR: TStringField
      FieldName = 'L_NOMEFORNECEDOR'
      ProviderFlags = []
      Size = 100
    end
    object cdsDICONTACONTABILID: TStringField
      FieldName = 'CONTACONTABILID'
      Size = 10
    end
    object cdsDICENTROCUSTOID: TStringField
      FieldName = 'CENTROCUSTOID'
      Size = 7
    end
    object cdsDINUMCONTRATOCAMBIO: TStringField
      FieldName = 'NUMCONTRATOCAMBIO'
      Size = 8
    end
    object cdsDIDATACONTRATO: TSQLTimeStampField
      FieldName = 'DATACONTRATO'
    end
    object cdsDIOBSPEDIDO: TMemoField
      FieldName = 'OBSPEDIDO'
      BlobType = ftOraClob
      Size = 1
    end
    object cdsDICREDITARICMS: TBCDField
      FieldName = 'CREDITARICMS'
      Precision = 1
      Size = 0
    end
    object cdsDIAGREGARVLRFOB: TBCDField
      FieldName = 'AGREGARVLRFOB'
      Precision = 1
      Size = 0
    end
    object cdsDIRESTITUIRICMS: TBCDField
      FieldName = 'RESTITUIRICMS'
      Precision = 1
      Size = 0
    end
    object cdsDIAGREGARFRETE: TBCDField
      FieldName = 'AGREGARFRETE'
      Precision = 1
      Size = 0
    end
    object cdsDIFOBANTECIPADO: TBCDField
      FieldName = 'FOBANTECIPADO'
      Precision = 1
      Size = 0
    end
    object cdsDIADMISSAOTEMP: TBCDField
      FieldName = 'ADMISSAOTEMP'
      Precision = 1
      Size = 0
    end
    object cdsDILIBERARESTOQUE: TBCDField
      FieldName = 'LIBERARESTOQUE'
      Precision = 1
      Size = 0
    end
    object cdsDIATIVOFIXO: TBCDField
      FieldName = 'ATIVOFIXO'
      Precision = 1
      Size = 0
    end
    object cdsDIFRETEPAGO: TBCDField
      FieldName = 'FRETEPAGO'
      Precision = 1
      Size = 0
    end
    object cdsDIDESPACHANTEID: TBCDField
      FieldName = 'DESPACHANTEID'
      Precision = 8
      Size = 0
    end
    object cdsDIL_NOMEDESPACHANTE: TStringField
      FieldName = 'L_NOMEDESPACHANTE'
      ProviderFlags = []
      Size = 100
    end
    object cdsDINUMDEMONSDESPESA: TStringField
      FieldName = 'NUMDEMONSDESPESA'
      Size = 10
    end
    object cdsDIVLRDESPESAII: TBCDField
      FieldName = 'VLRDESPESAII'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRDESPESAICMS: TBCDField
      FieldName = 'VLRDESPESAICMS'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRDESPESADESEMB: TBCDField
      FieldName = 'VLRDESPESADESEMB'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRDESPESATOTAL: TBCDField
      FieldName = 'VLRDESPESATOTAL'
      Precision = 14
      Size = 2
    end
    object cdsDINFEID: TStringField
      FieldName = 'NFEID'
      Size = 6
    end
    object cdsDIDATAEMISSAONFEID: TSQLTimeStampField
      FieldName = 'DATAEMISSAONFEID'
    end
    object cdsDIDATAENTRADANFEID: TSQLTimeStampField
      FieldName = 'DATAENTRADANFEID'
    end
    object cdsDINATUREZAOPID: TBCDField
      FieldName = 'NATUREZAOPID'
      Precision = 8
      Size = 0
    end
    object cdsDIL_CFOP: TStringField
      FieldName = 'L_CFOP'
      ProviderFlags = []
      Size = 4
    end
    object cdsDIL_DESCRICAONATUREZAUSUARIO: TStringField
      FieldName = 'L_DESCRICAONATUREZAUSUARIO'
      ProviderFlags = []
      Size = 100
    end
    object cdsDIL_DESCRICAONATUREZANOTA: TStringField
      FieldName = 'L_DESCRICAONATUREZANOTA'
      ProviderFlags = []
      Size = 100
    end
    object cdsDIVLRTOTALCIF: TBCDField
      FieldName = 'VLRTOTALCIF'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALPESO: TBCDField
      FieldName = 'VLRTOTALPESO'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALFOBUS: TBCDField
      FieldName = 'VLRTOTALFOBUS'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALFOB: TBCDField
      FieldName = 'VLRTOTALFOB'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRSEGUROINTERNAC: TBCDField
      FieldName = 'VLRSEGUROINTERNAC'
      Precision = 14
      Size = 2
    end
    object cdsDITAXAFOBANTECIPADO: TBCDField
      FieldName = 'TAXAFOBANTECIPADO'
      Precision = 14
      Size = 2
    end
    object cdsDITAXASISCOMEX: TBCDField
      FieldName = 'TAXASISCOMEX'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALIPI: TBCDField
      FieldName = 'VLRTOTALIPI'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALICMS: TBCDField
      FieldName = 'VLRTOTALICMS'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALCUSTOAPARELHO: TBCDField
      FieldName = 'VLRTOTALCUSTOAPARELHO'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALCUSTOPECA: TBCDField
      FieldName = 'VLRTOTALCUSTOPECA'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALMAQEQUIP: TBCDField
      FieldName = 'VLRTOTALMAQEQUIP'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALFERRAMENTAL: TBCDField
      FieldName = 'VLRTOTALFERRAMENTAL'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALMOVUTENSILIOS: TBCDField
      FieldName = 'VLRTOTALMOVUTENSILIOS'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALADMTEMP: TBCDField
      FieldName = 'VLRTOTALADMTEMP'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALPIS: TBCDField
      FieldName = 'VLRTOTALPIS'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALCOFINS: TBCDField
      FieldName = 'VLRTOTALCOFINS'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALFOB2: TBCDField
      FieldName = 'VLRTOTALFOB2'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALFOBANT: TBCDField
      FieldName = 'VLRTOTALFOBANT'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALCIF2: TBCDField
      FieldName = 'VLRTOTALCIF2'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALCIFANT: TBCDField
      FieldName = 'VLRTOTALCIFANT'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALDESPDESP: TBCDField
      FieldName = 'VLRTOTALDESPDESP'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALDESPGI: TBCDField
      FieldName = 'VLRTOTALDESPGI'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALSEGUROTRANSP: TBCDField
      FieldName = 'VLRTOTALSEGUROTRANSP'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALIRRFPAGAR: TBCDField
      FieldName = 'VLRTOTALIRRFPAGAR'
      Precision = 14
      Size = 2
    end
    object cdsDIVLRTOTALFRETELOCAL: TBCDField
      FieldName = 'VLRTOTALFRETELOCAL'
      Precision = 14
      Size = 2
    end
    object cdsDIUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsDIsqldtsMercadoria: TDataSetField
      FieldName = 'sqldtsMercadoria'
    end
    object cdsDIsqldtsAdicao: TDataSetField
      FieldName = 'sqldtsAdicao'
    end
  end
  object cdsAdicao: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDIsqldtsAdicao
    Params = <>
    Left = 304
    Top = 72
    object cdsAdicaoDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdicaoADICAOID: TBCDField
      FieldName = 'ADICAOID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsAdicaoNCMID: TStringField
      FieldName = 'NCMID'
      Size = 8
    end
    object cdsAdicaoPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object cdsAdicaoVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRCIF: TBCDField
      FieldName = 'VLRCIF'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoALIQUOTAII: TBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRII: TBCDField
      FieldName = 'VLRII'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoALIQUOTAIPI: TBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object cdsAdicaoUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object cdsMercadoria: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDIsqldtsMercadoria
    Params = <>
    OnReconcileError = cdsDIReconcileError
    Left = 304
    Top = 120
    object cdsMercadoriaDECLARACAOID: TBCDField
      FieldName = 'DECLARACAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaMERCADORIAID: TBCDField
      FieldName = 'MERCADORIAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaPROCESSOID: TBCDField
      FieldName = 'PROCESSOID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaTIPOPROCESSOID: TBCDField
      FieldName = 'TIPOPROCESSOID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaL_SIGLA: TStringField
      FieldName = 'L_SIGLA'
      ProviderFlags = []
    end
    object cdsMercadoriaITEMPROCESSOID: TBCDField
      FieldName = 'ITEMPROCESSOID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaNCMID: TStringField
      FieldName = 'NCMID'
      Size = 8
    end
    object cdsMercadoriaLIBERAESTOQUE: TBCDField
      FieldName = 'LIBERAESTOQUE'
      Precision = 1
      Size = 0
    end
    object cdsMercadoriaEMPRESAID: TBCDField
      FieldName = 'EMPRESAID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaPRODUTOID: TBCDField
      FieldName = 'PRODUTOID'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaL_DESCRICAO_PRODUTO: TStringField
      FieldName = 'L_DESCRICAO_PRODUTO'
      ProviderFlags = []
      Size = 100
    end
    object cdsMercadoriaQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 8
      Size = 0
    end
    object cdsMercadoriaIMOBILIZADO: TBCDField
      FieldName = 'IMOBILIZADO'
      Precision = 1
      Size = 0
    end
    object cdsMercadoriaTIPOMATERIAL: TStringField
      FieldName = 'TIPOMATERIAL'
      Size = 2
    end
    object cdsMercadoriaPESOLIQUIDO: TFMTBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaPESOBRUTO: TFMTBCDField
      FieldName = 'PESOBRUTO'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRFOBUS: TBCDField
      FieldName = 'VLRFOBUS'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRFOB: TBCDField
      FieldName = 'VLRFOB'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCIF: TBCDField
      FieldName = 'VLRCIF'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCUSTOMOVIMENTO: TBCDField
      FieldName = 'VLRCUSTOMOVIMENTO'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCUSTOTRANSFERENCIA: TBCDField
      FieldName = 'VLRCUSTOTRANSFERENCIA'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRBASEIPI: TBCDField
      FieldName = 'VLRBASEIPI'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaALIQUOTAIPI: TFMTBCDField
      FieldName = 'ALIQUOTAIPI'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRIPI: TBCDField
      FieldName = 'VLRIPI'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRBASEICMS: TBCDField
      FieldName = 'VLRBASEICMS'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRICMS: TBCDField
      FieldName = 'VLRICMS'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaALIQUOTAII: TFMTBCDField
      FieldName = 'ALIQUOTAII'
      Precision = 14
      Size = 6
    end
    object cdsMercadoriaVLRFRETE: TBCDField
      FieldName = 'VLRFRETE'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRFRETEUS: TBCDField
      FieldName = 'VLRFRETEUS'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRPIS: TBCDField
      FieldName = 'VLRPIS'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaVLRCOFINS: TBCDField
      FieldName = 'VLRCOFINS'
      Precision = 14
      Size = 2
    end
    object cdsMercadoriaUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
  end
  object dsDI: TDataSource
    DataSet = cdsDI
    Left = 376
    Top = 24
  end
end
