object SrvAppCP: TSrvAppCP
  OldCreateOrder = False
  Left = 413
  Top = 136
  Height = 141
  Width = 286
  object sqldsPesquisa: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'   A.SIGLAUFID, A.TIPOLOGRADOURO, A.PREPOSICAO, A.TITULO' +
      'PATENTE, A.NOMELOGRADOURO, A.BAIRROLOGRADOURO , A.NOMELOCALIDADE' +
      ' , D.NOMEUF , A.CEPID'#13#10' , E.NOMEPAISPORTUGUES'#13#10'FROM'#13#10'   CP_LOCAL' +
      'IDADES B'#13#10' , CP_BAIRROS C'#13#10' , CP_UNIDADESFEDERACAO D'#13#10' , CP_PAIS' +
      'ES E'#13#10' , CP_LOGRADOUROS A'#13#10'WHERE'#13#10'     (B.SIGLAUFID = D.SIGLAUFI' +
      'D)'#13#10' AND (C.SIGLAUFID = D.SIGLAUFID)'#13#10' AND (B.SIGLAPAISID = E.SI' +
      'GLAPAISID)'#13#10' AND (D.SIGLAPAISID = E.SIGLAPAISID)'#13#10' AND (A.LOCALI' +
      'DADEDNEID = B.LOCALIDADEDNEID)'#13#10' AND (A.BAIRRODNEID = C.BAIRRODN' +
      'EID)'#13#10' AND (NOMELOGRADOURO LIKE '#39'%JOANA VERA MALDONADO%'#39')'#13#10' AND ' +
      '(CEPID=06770150)'#13#10' AND (ROWNUM < 100)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 96
    Top = 8
    object sqldsPesquisaSIGLAUFID: TStringField
      FieldName = 'SIGLAUFID'
      Size = 2
    end
    object sqldsPesquisaTIPOLOGRADOURO: TStringField
      FieldName = 'TIPOLOGRADOURO'
      Size = 26
    end
    object sqldsPesquisaPREPOSICAO: TStringField
      FieldName = 'PREPOSICAO'
      Size = 3
    end
    object sqldsPesquisaTITULOPATENTE: TStringField
      FieldName = 'TITULOPATENTE'
      Size = 72
    end
    object sqldsPesquisaNOMELOGRADOURO: TStringField
      FieldName = 'NOMELOGRADOURO'
      Size = 72
    end
    object sqldsPesquisaBAIRROLOGRADOURO: TStringField
      FieldName = 'BAIRROLOGRADOURO'
      Size = 72
    end
    object sqldsPesquisaNOMELOCALIDADE: TStringField
      FieldName = 'NOMELOCALIDADE'
      Size = 72
    end
    object sqldsPesquisaNOMEUF: TStringField
      FieldName = 'NOMEUF'
      Size = 72
    end
    object sqldsPesquisaCEPID: TBCDField
      FieldName = 'CEPID'
      Precision = 8
      Size = 0
    end
    object sqldsPesquisaNOMEPAISPORTUGUES: TStringField
      FieldName = 'NOMEPAISPORTUGUES'
      Size = 72
    end
  end
  object dsprvPesquisa: TDataSetProvider
    DataSet = sqldsPesquisa
    Left = 176
    Top = 8
  end
end
