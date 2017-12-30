object SrvAppFC: TSrvAppFC
  OldCreateOrder = False
  Left = 353
  Top = 115
  Height = 319
  Width = 275
  object sqldtsImpostoServico: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 8
  end
  object dsprvImpostoServico: TDataSetProvider
    DataSet = sqldtsImpostoServico
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 8
  end
  object sqldtsLimiteContribuicao: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 56
  end
  object dsprvLimiteContribuicao: TDataSetProvider
    DataSet = sqldtsLimiteContribuicao
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 56
  end
  object sqldtsPrestador: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 112
  end
  object dsprvPrestador: TDataSetProvider
    DataSet = sqldtsPrestador
    Options = [poCascadeDeletes, poCascadeUpdates, poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 112
  end
  object sqldtsPrestadorReceb: TSQLDataSet
    DataSource = dsPrestadorLink
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 160
  end
  object dsPrestadorLink: TDataSource
    DataSet = sqldtsPrestador
    Left = 168
    Top = 160
  end
  object sqldtsRecibo: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SrvAppGSI.sqlcnnTOSHIBA
    Left = 48
    Top = 208
  end
  object dsprvRecibo: TDataSetProvider
    DataSet = sqldtsRecibo
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText]
    Left = 164
    Top = 208
  end
end
