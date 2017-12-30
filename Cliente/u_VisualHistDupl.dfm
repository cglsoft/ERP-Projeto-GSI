object frmVisualHistDupl: TfrmVisualHistDupl
  Left = 118
  Top = 100
  Width = 816
  Height = 480
  Caption = 'Visualizar Hist'#243'rico de Duplicatas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 808
    Height = 446
    Align = alClient
    Caption = 'Visualizar duplicatas'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 804
      Height = 429
      Align = alClient
      DataSource = dsHistDupl
      FixedColor = clScrollBar
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clMaroon
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'EMPRESAID'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NFSID'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAEMISSAOID'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELAID'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAVENCIMENTO'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAPAGTO'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRPARCELA'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DUPLICATAID'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRBASECOMISSAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGTOVENDEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EXPORTADO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Width = 57
          Visible = True
        end>
    end
  end
  object cdsHistDupl: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 128
    object cdsHistDuplEMPRESAID: TBCDField
      Tag = 3
      DisplayLabel = 'Emp ID'
      FieldName = 'EMPRESAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHistDuplNFSID: TBCDField
      Tag = 3
      FieldName = 'NFSID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHistDuplDATAEMISSAOID: TSQLTimeStampField
      Tag = 3
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'DATAEMISSAOID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsHistDuplPARCELAID: TBCDField
      Tag = 3
      DisplayLabel = 'Parc.ID'
      FieldName = 'PARCELAID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsHistDuplDATAVENCIMENTO: TSQLTimeStampField
      DisplayLabel = 'Dt.Venc.'
      FieldName = 'DATAVENCIMENTO'
    end
    object cdsHistDuplDATAPAGTO: TSQLTimeStampField
      DisplayLabel = 'Dt.Pagto'
      FieldName = 'DATAPAGTO'
    end
    object cdsHistDuplVLRPARCELA: TBCDField
      DisplayLabel = 'Vlr. Parcela'
      FieldName = 'VLRPARCELA'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsHistDuplDUPLICATAID: TBCDField
      DisplayLabel = 'Duplic.ID'
      FieldName = 'DUPLICATAID'
      Precision = 10
      Size = 0
    end
    object cdsHistDuplVLRBASECOMISSAO: TBCDField
      DisplayLabel = 'Vlr.Base Comiss'#227'o'
      FieldName = 'VLRBASECOMISSAO'
      DisplayFormat = '##,###,##0.00'
      EditFormat = '##,###,##0.00'
      Precision = 14
      Size = 2
    end
    object cdsHistDuplPAGTOVENDEDOR: TBCDField
      DisplayLabel = 'Pagto Vendedor'
      FieldName = 'PAGTOVENDEDOR'
      Precision = 1
      Size = 0
    end
    object cdsHistDuplEXPORTADO: TBCDField
      DisplayLabel = 'Exportado'
      FieldName = 'EXPORTADO'
      Precision = 1
      Size = 0
    end
    object cdsHistDuplUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
    end
  end
  object dsHistDupl: TDataSource
    DataSet = cdsHistDupl
    Left = 400
    Top = 128
  end
end
