object frmRelEmissaoDuplicata: TfrmRelEmissaoDuplicata
  Left = -4
  Top = -4
  Caption = 'frmRelEmissaoDuplicata'
  ClientHeight = 715
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -2
    Top = 9
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = frmEmissaoDuplicata.cdsDuplicata
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoomToFit
    object DetailBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 691
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        1828.270833333333000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRShape8: TQRShape
        Left = 116
        Top = 310
        Width = 85
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          156.104166666667000000
          306.916666666667000000
          820.208333333334000000
          224.895833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 116
        Top = 144
        Width = 110
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          306.916666666667000000
          381.000000000000000000
          291.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 604
        Top = 126
        Width = 110
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1598.083333333330000000
          333.375000000000000000
          291.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape36: TQRShape
        Left = 116
        Top = 374
        Width = 597
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333300000
          306.916666666667000000
          989.541666666667000000
          1579.562500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 4
        Top = 6
        Width = 261
        Height = 116
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          306.916666666667000000
          10.583333333333300000
          15.875000000000000000
          690.562500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel2: TQRLabel
        Left = 11
        Top = 86
        Width = 248
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          29.104166666666670000
          227.541666666666700000
          656.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOSHIBA MEDICAL DO BRASIL LTDA.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Microstyle Bold Extended ATT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 264
        Top = 6
        Width = 450
        Height = 116
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          306.916666666667000000
          698.500000000000000000
          15.875000000000000000
          1190.625000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlblEnd: TQRLabel
        Left = 276
        Top = 14
        Width = 286
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          37.041666666666670000
          756.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RUA MARCELO MORAES CORDEIRO, 110 - CEP 06765-280'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 116
        Top = 174
        Width = 597
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          306.916666666667000000
          460.375000000000000000
          1579.562500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel4: TQRLabel
        Left = 121
        Top = 176
        Width = 83
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          320.145833333333300000
          465.666666666666700000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DESCONTO DE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 122
        Top = 147
        Width = 90
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          322.791666666667000000
          388.937500000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'NFSID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape6: TQRShape
        Left = 116
        Top = 126
        Width = 110
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          306.916666666667000000
          333.375000000000000000
          291.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 120
        Top = 128
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          338.666666666666700000
          254.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N.F.FATURA N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 200
        Top = 310
        Width = 513
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          156.104166666667000000
          529.166666666667000000
          820.208333333334000000
          1357.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 126
        Top = 320
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          846.666666666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Valor por'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRRichText20: TQRRichText
        Left = 124
        Top = 376
        Width = 581
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          328.083333333333000000
          994.833333333333000000
          1537.229166666670000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Reconhe'#231'o(cemos) '
          'a exatid'#227'o desta '
          'DUPLICATA DE '
          'VENDA '
          'MERCANTIL/PREST'
          'A'#199#195'O DE '
          'SERVI'#199'OS na '
          'import'#226'ncia '
          'acima que pagarei'
          '(emos) '#224' TOSHIBA '
          'MEDICAL DO '
          'BRASIL LTDA, ou '#224' '
          'sua ordem na '
          'pra'#231'a e vencimento '
          'indicados.'
          '')
      end
      object QRShape13: TQRShape
        Left = 116
        Top = 202
        Width = 597
        Height = 103
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          272.520833333333000000
          306.916666666667000000
          534.458333333333000000
          1579.562500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 120
        Top = 206
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          545.041666666666700000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome do Sacado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape17: TQRShape
        Left = 4
        Top = 120
        Width = 109
        Height = 329
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          870.479166666666800000
          10.583333333333330000
          317.500000000000000000
          288.395833333333400000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlblFone: TQRLabel
        Left = 276
        Top = 46
        Width = 214
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          121.708333333333300000
          566.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE (11) 4788-4350  FAX:(11)  4788-4399'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrlblEnd2: TQRLabel
        Left = 276
        Top = 30
        Width = 321
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          79.375000000000000000
          849.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PARQUE INDUSTRIAL DAS OLIVEIRAS - TABO'#195'O DA SERRA - SP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrlblCNPJ: TQRLabel
        Left = 276
        Top = 70
        Width = 132
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          185.208333333333300000
          349.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ: 46.563.938/0001-10'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrlblInscrEst: TQRLabel
        Left = 276
        Top = 86
        Width = 168
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          227.541666666666700000
          444.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Inscr. Estadual: 675.132.345.115'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrlblInscrMun: TQRLabel
        Left = 276
        Top = 102
        Width = 126
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          730.250000000000000000
          269.875000000000000000
          333.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Inscr. Municipal: 20.835'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 500
        Top = 86
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1322.916666666667000000
          227.541666666666700000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data de Emiss'#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 8
        Top = 14
        Width = 254
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          21.166666666666670000
          37.041666666666670000
          672.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOSHIBA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -59
        Font.Name = 'Eurostile-Black'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 44
      end
      object QRShape3: TQRShape
        Left = 228
        Top = 126
        Width = 110
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          603.250000000000000000
          333.375000000000000000
          291.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 240
        Top = 128
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          635.000000000000000000
          338.666666666666700000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N.F. VALOR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 340
        Top = 126
        Width = 141
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          899.583333333333000000
          333.375000000000000000
          373.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 348
        Top = 128
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          920.750000000000000000
          338.666666666666700000
          328.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DUPLICATA VALOR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 482
        Top = 126
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1275.291666666670000000
          333.375000000000000000
          317.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 616
        Top = 128
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1629.833333333333000000
          338.666666666666700000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VENCIMENTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 496
        Top = 128
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1312.333333333333000000
          338.666666666666700000
          246.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DUPLICATA N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape16: TQRShape
        Left = 228
        Top = 144
        Width = 110
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          603.250000000000000000
          381.000000000000000000
          291.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 340
        Top = 144
        Width = 141
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          899.583333333333000000
          381.000000000000000000
          373.062500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 482
        Top = 144
        Width = 120
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1275.291666666670000000
          381.000000000000000000
          317.500000000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 604
        Top = 144
        Width = 110
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1598.083333333330000000
          381.000000000000000000
          291.041666666667000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 120
        Top = 278
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          735.541666666666700000
          325.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pra'#231'a de Pagamento:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 120
        Top = 222
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          587.375000000000000000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Endere'#231'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel15: TQRLabel
        Left = 120
        Top = 254
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          672.041666666666700000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 120
        Top = 238
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          317.500000000000000000
          629.708333333333300000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Munic'#237'pio:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 552
        Top = 238
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1460.500000000000000000
          629.708333333333300000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 248
        Top = 278
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          656.166666666666700000
          735.541666666666700000
          283.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S'#195'O PAULO - SP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 320
        Top = 254
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666700000
          672.041666666666700000
          232.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Inscr. Estadual:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 126
        Top = 336
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          889.000000000000000000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Extenso'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 128
        Top = 438
        Width = 194
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          338.666666666666700000
          1158.875000000000000000
          513.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA ______/______/_________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 344
        Top = 438
        Width = 332
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          910.166666666666700000
          1158.875000000000000000
          878.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ASSINATURA:___________________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 480
        Top = 455
        Width = 120
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1270.000000000000000000
          1203.854166666667000000
          317.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Representante Legal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 0
        Top = 470
        Width = 717
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          0.000000000000000000
          1243.541666666667000000
          1897.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '---------------------------------------------------'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 239
        Top = 146
        Width = 93
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          632.354166666666700000
          386.291666666666700000
          246.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'VLRTOTALNOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 397
        Top = 146
        Width = 79
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1050.395833333333000000
          386.291666666666700000
          209.020833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'VLRPARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 490
        Top = 146
        Width = 90
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1296.458333333330000000
          386.291666666667000000
          238.125000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'DUPLICATAID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 621
        Top = 146
        Width = 81
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1643.062500000000000000
          386.291666666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'DATAVENCIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 226
        Top = 207
        Width = 36
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          597.958333333333300000
          547.687500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 189
        Top = 223
        Width = 70
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          500.062500000000000000
          590.020833333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'ENDERECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 189
        Top = 239
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          500.062500000000000000
          632.354166666666700000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 501
        Top = 239
        Width = 28
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1325.562500000000000000
          632.354166666667000000
          74.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'SIGLAUFID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 589
        Top = 239
        Width = 38
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1558.395833333333000000
          632.354166666666700000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'CEPID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 205
        Top = 314
        Width = 502
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          121.708333333333000000
          542.395833333333000000
          830.791666666667000000
          1328.208333333330000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'VLRPARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '###########0.00'
        OnPrint = QRDBText11Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 602
        Top = 85
        Width = 90
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1592.791666666670000000
          224.895833333333000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'DATAEMISSAOID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 165
        Top = 255
        Width = 57
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          436.562500000000000000
          674.687500000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'CPFCNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 421
        Top = 255
        Width = 101
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1113.895833333333000000
          674.687500000000000000
          267.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmEmissaoDuplicata.cdsDuplicata
        DataField = 'INSCRESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel17: TQRLabel
        Left = 456
        Top = 238
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1206.500000000000000000
          629.708333333333300000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Estado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel23: TQRLabel
        Left = 204
        Top = 410
        Width = 449
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          539.750000000000000000
          1084.791666666667000000
          1187.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Na Falta de pagamento do vencimento ser'#227'o cobrados juros legais ' +
          'mais despesas banc'#225'rias'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRGrImage1: TQRGrImage
        Left = 7
        Top = 128
        Width = 102
        Height = 232
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          613.833333333333300000
          18.520833333333330000
          338.666666666666700000
          269.875000000000000000)
        AutoSize = True
        Center = True
        Picture.Data = {
          0A544A504547496D61676515230000FFD8FFE000104A46494600010201004800
          480000FFED0B3E50686F746F73686F7020332E30003842494D03ED0A5265736F
          6C7574696F6E0000000010004800000002000200480000000200023842494D04
          0D18465820476C6F62616C204C69676874696E6720416E676C65000000000400
          0000783842494D041912465820476C6F62616C20416C74697475646500000000
          040000001E3842494D03F30B5072696E7420466C616773000000090000000000
          00000001003842494D040A0E436F7079726967687420466C6167000000000100
          003842494D2710144A6170616E657365205072696E7420466C61677300000000
          0A000100000000000000023842494D03F517436F6C6F722048616C66746F6E65
          2053657474696E677300000048002F66660001006C6666000600000000000100
          2F6666000100A1999A0006000000000001003200000001005A00000006000000
          000001003500000001002D000000060000000000013842494D03F817436F6C6F
          72205472616E736665722053657474696E6773000000700000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF03E800003842494D04000B4C6179657220537461746500000002000138
          42494D04020C4C617965722047726F7570730000000004000000003842494D04
          0806477569646573000000001000000001000002400000024000000000384249
          4D041E0D55524C206F766572726964657300000004000000003842494D041A06
          536C696365730000000079000000060000000000000000000000E80000006600
          00000C00530065006D0020007400ED00740075006C006F002D00340000000100
          0000000000000000000000000000000000000100000000000000000000006600
          0000E80000000000000000000000000000000000000000000000000000000000
          00000000003842494D04111149434320556E74616767656420466C6167000000
          0101003842494D0414174C617965722049442047656E657261746F7220426173
          6500000004000000023842494D040C154E65772057696E646F7773205468756D
          626E61696C0000075E00000001000000310000007000000094000040C0000007
          4200180001FFD8FFE000104A46494600010201004800480000FFEE000E41646F
          626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C
          0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E
          0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108007000310301220002110103
          1101FFDD00040004FFC4013F0000010501010101010100000000000000030001
          020405060708090A0B0100010501010101010100000000000000010002030405
          060708090A0B1000010401030204020507060805030C33010002110304211231
          054151611322718132061491A1B14223241552C16233347282D14307259253F0
          E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3
          462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767
          778797A7B7C7D7E7F71100020201020404030405060707060535010002110321
          3112044151617122130532819114A1B14223C152D1F0332462E1728292435315
          637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D3
          75E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737
          475767778797A7B7C7FFDA000C03010002110311003F00F554951EB8F733A2E7
          39BEAEE18F6C1C77165C0EC77BA8B1ADB5D5DADFCCB1B55BB3FD15881F556B35
          7D5EC1A4B4B7D2AFD392D2C2ED84D7EBEDB1ACB1DF68DBEBFAB65753EEF53D6F
          469DFE9A4A7552492494A4950E8849C174927F58CAE75FFB517ABE9294924924
          A7FFD0F4BEA98CCCBE9B938CF659636DA9CD35D25ADB1D23E85365AEAEB65AEF
          CC7BECAFFE3143A3B725BD3A96E554EA2D01D353ED37BDADDCEF49B6E43ECC87
          5B6FA5B3D5FD35BFA4FCF4FD62FBF1FA4E65F8C1EEBEAA2C7D42A01CFDED6B8B
          3D363996B5CFDDFF00056FFC5D8ABFD58170E8386722BB2ABDEC2FB997CFA81E
          F73ACB0BF7B2873773DDBF6FA357FC5A4A7512492494D0E89FD05DFF008632BF
          F6E2F57D7318BD433A9CEC2C3A4B5B8F75D966DDDE9FB8FDAADFA1BEEAEF73AA
          635DFCDD3FE1ABB3F58FE8EBA7494A49249253FFD1F47EB8EB1BD1B38D42D367
          D9EDD831DC597496B80F42CAD97595DBFB8F65373FFE0AC40FAAB5594FD5CE9D
          558007B28607435CD331CD82E6D56FAEEFFB50F7D75FA97FA9622F5F18A7A267
          B72CD8319F8F636DF44816ED734B08A4BFD9EAEBECF53F47FE9143EADD38B8FD
          13171F105ADA680EA43720B4DAD756F7D56D771A7F43BEBB58F67E87F45FE8BD
          8929D349249253C8D2E70EAB80D658FA9DEAE5486B2D0D78765DA76BEEADBF64
          C8D95D76FE8322EABECBEB7DA99EBFF32BAE5C9D17E257D4319D6DF5FAD564DD
          53711E47A84E4653F6646357EA35DEDDFF00A67FA5F42BB3FD1AEB1252924924
          94FF00FFD2F4AEAF8B7E674BCBC4C7735B75F4BEB617E8D9734B76BDC1B66D6B
          BE8EFD8F43E858CFC4E95462B8B3F401D5B5B538D8C635AE736BC76DCE6D6FB7
          ECD5EDC7F56CAFD5B3D2FD27E914FAC398DE95966C7318DF45E0BAD63AC66AD2
          3F494545B65CDFF82AFDF62ADF55A9F43A061E392D2FA586BB8B06D6FAAC73AB
          C8DACF4F1FD3FD3B6CFD1FA157A6929D549249253CBE3F51BF1F331316BB3632
          CC8C83634D4F73487E5DF57E92F6D5633F914B599147A57FF48F569F62EA1731
          8D7670CBC1A68B18CA4E465B9ED7564977EB56B6CDB77A56B1BB6AFF0007EA63
          3FFE36A5D3A4A524924929FFD3F45FAC07FC879FED6BA71EC10F2D0DD5A5BEFF
          0057F47FE7A87D5A686F42C460DA5B5B0B1AE66D87358E731974565ED6FACD6F
          AAE66FB3D3DFEFB2C7FBD13AFD42EE87D42A2C7D9BF1AE6ECAEBF59EE963BDB5
          63EEABD7B3F72AF52BF53FD2217D58A1D8FF0057F0297546873296875443816B
          BF3DB175745BF4BF7EA494EA24924929E3DD681D47A5D3716FA5665E49A5BE93
          0BFD56E55CE7C64D97556B5BB3DDE9E2D5FCDFADF68F5A9FD12EC172D8EEB2BE
          A180EAAB77E96FCCAECB1AE0DDCD1937BBD2DBEB57EAFA7FD23DF4FB28F5FD2D
          F67E897529294924924A7FFFD4F48EB795F63E8D9D962C75068C7B6C1731AD7B
          985AC73858CAAD2DAAC7B3F72DFD17FA455FEAB640C9FABD817FAB66417D209B
          EE3363C8D1F6D9FA4C86B5D63BDFB197DB5D7F42AFD1A3F5C7D75F45CF7DAE2D
          ADB8D69739B1B80D8EFA3EA16B377F5903EAADADBBEAE74EB5BB8EEA193BC00E
          DD1FA405A276FBF77B5253AA924924A79BC4E9B6646462658A6AB29A6FCA163E
          07AC08CABADAFDD66EADF8CDB58CB367B323D5D96556FF00835D22A1D13FA0BB
          FF000C657FEDC5EAFA4A524924929FFFD5F42FACA6B1F57FA89B5CD655F67B3D
          473DA5CDDA5A77EF6303DFB36FD3D8C7D9FB89FEAF5429E8D8B5B4303034EC65
          61C1AC61739D5D2CF5594DAFF46BDB57AB6D35DB76CF5ACFA6B4480441120F62
          9D25292492494D1E8CD7330887B4B4FDA324C381060E45EE69D7F79AAF24924A
          524924929FFFD93842494D04211A56657273696F6E20636F6D7061746962696C
          69747920696E666F000000005500000001010000000F00410064006F00620065
          002000500068006F0074006F00730068006F00700000001300410064006F0062
          0065002000500068006F0074006F00730068006F007000200036002E00300000
          0001003842494D04060C4A504547205175616C69747900000000070006000000
          010100FFEE000E41646F626500644000000001FFDB0084000202020202020202
          0202030202020304030202030405040404040405060505050505050606070708
          07070609090A0A09090C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0103030305040509
          0606090D0A090A0D0F0E0E0E0E0F0F0C0C0C0C0C0F0F0C0C0C0C0C0C0F0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800E8
          006603011100021101031101FFDD0004000DFFC401A200000007010101010100
          00000000000000040503020601000708090A0B01000202030101010101000000
          00000000010002030405060708090A0B10000201030302040206070304020602
          73010203110400052112314151061361227181143291A10715B14223C152D1E1
          331662F0247282F12543345392A2B26373C235442793A3B33617546474C3D2E2
          082683090A181984944546A4B456D355281AF2E3F3C4D4E4F465758595A5B5C5
          D5E5F566768696A6B6C6D6E6F637475767778797A7B7C7D7E7F7384858687888
          98A8B8C8D8E8F82939495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACA
          DAEAFA110002020102030505040506040803036D010002110304211231410551
          1361220671819132A1B1F014C1D1E1234215526272F1332434438216925325A2
          63B2C20773D235E2448317549308090A18192636451A2764745537F2A3B3C328
          29D3E3F38494A4B4C4D4E4F465758595A5B5C5D5E5F5465666768696A6B6C6D6
          E6F6475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F83949596979
          8999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C030100021103
          11003F00FBF98ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFD0
          FBF98ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFD1FBF98ABC
          47FE722BFE5757FCAA2F347FD0BEFD53FE5687FA2FE87FAD7D5F9FD5FEB11FD7
          3EA9F5DFF45FACFA1CFD1F5FF77CE9CB6C55E1DFF3805FA4BFE54B798FFC5BFE
          32FF0095A1FF002B03CC9FF2B57FC79F5BFD35FA4BD74FD1FEB7D63F73C7F42F
          E8EE3F54FF0047FF007DEFCB157DBF8ABB15762AEC55D8ABC27CC37B791FFCE4
          D7E5169C9773269F75F961F98B737560B2308649ADF5AF2424323C60F1668D66
          902B11501D80FB47157BB62AEC55D8ABB157FFD2FBF98ABE4BFF009CD4BB7B4F
          C94805C5DEBD65E5BBCF3BF936D7CFF37968EA2BA8FF0086A5D7EC86B4B19D20
          1BDE2D65EA87107C656A056B4C558DFF00CE105C68B3795BF3AA1F26DCF99AE3
          F2D2CBF346F62FCAF1E69FD37F5B8F477D074499D22FF10817FE88BD92E4AFA9
          FB45A98ABED8C55D8ABB15762AEC55E01E63FF00D6A7FC9BFF00CD55F997FF00
          75CF2262AF7FC55D8ABB15762AFF00FFD3FBF98ABE6FFF009CA5D3FF0033F52F
          CBBF2EC1F93ED247E778FF00307C9371693F0BA96D22B687CC16525DCBA8C567
          2C33496490AB35D22C8BCA10E390AD7157A07E544DF99F2687AB41F9B7AFF92B
          CC1E6CB1D5A4804BE45B4BDB2B1B7B6FABDBBC705CC37F7B7D28B80CECEDF181
          C1A3F846E5957A862AEC55D8ABB15762AF00F31FFEB53FE4DFFE6AAFCCBFFBAE
          7913157BFE2AEC55D8ABB157FFD4FBF98AB0AFCC18BF3166F2BDE47F9557FE5C
          D37CE86487F47DDF9AED2F2FB4B58C483D612C163736933318EA1692001A84D4
          6D8ABCC7FE71F3F2D3F307F2F2CFF34752FCCFD7BCBDAFF9C3F33FCF1379BF50
          9BCAD677763A6C0AFA4695A52411437B3DCCC081A6F224C8DF6BE8C55F41E2AE
          C55D8ABB15762AF00F31FF00EB53FE4DFF00E6AAFCCBFF00BAE7913157BFE2AE
          C55D8ABB157FFFD5FBF98AB00FCCDF3F2FE5A7942FFCDCFE53D77CEAB632C111
          F2F79712CE4D425F5E558F946B7F776505139726E528341B54ED8ABC97FE719B
          CEDE78FCC3B1FCDEF3679C344D7FCB3A5EA5F9833FFCABCF2E7997EA42FACB42
          4D13475588AD85CDDC2AA6F45D3802563F113DE98ABE99C55D8ABB15762AEC55
          E01E63FF00D6A7FC9BFF00CD55F997FF0075CF2262AA9AEFFCE4CFE4EF973CD5
          AF794356F30DEC1A8795ED2E2F7CC3A8C7A46A53699691595D699697BCF508AD
          9AD89B47D5ED1AE78B916E92739CC6AAC42AF7BC55D8ABB157FFD6FBF98ABE39
          FF009CEED5B4BD1FFE71E752975CD3BCBD7DA25FF9ABCA3A6EB373E69B28750D
          26C6CEFB5EB1B7B8BDB9B7B82B1110C6ECC0BB00A68D514C55E47FF3EBCD43EB
          FF00901E64616DA142079B6DEE5E6F2FE8F63A25BC936A7E55F2F6A9711C96FA
          7450C2D25ACF7925AF3E3C8AC2AAF57527157E9162AEC55D8ABB15762AF9EBCD
          723C3FF3941F9432C704975245F94DF99AE96B1140F215D6BC8A422991912ADD
          072603C4818ABE1AF347E5D7E69F9FF5DF3FEADA57E42FE72797349D657CE3A0
          4BF97979A97E5F5BE95A85AF9B67D32EF598A5D525D624BEB4B5D4E7D2E133B5
          B417663479FEAD231755455FAD58ABB15762AFFFD7FBF98ABC17FE7267F34AC3
          F26BF25FCDDF981AA79164FCC7B0D245A4571E57A27D5A41737314026BD91E29
          D61B684B892590C6FC156BC4E2AC0BFE70A7CFBE6AFCD5FC957FCCAF355CF95B
          979BFCD7E617D0B45F275A0B7D274CD3F4CBF934848229F933DE19A4B192EFEB
          0E14B898008AAAA3157D6F8ABB15762AEC55D8ABC03CC7FF00AD4FF937FF009A
          ABF32FFEEB9E44C55F03F9B355FCA8F2FF00E6D7E75E95E7DFF9C77FCB3FCE9D
          4E1F306A7E6393F31FCDD0DC5E5C43A5FD634BB6B9B5B8BFB8F2B6A36D1C5A44
          9AADAA4891DD15B68244795502CB262AFD77C55D8ABB157FFFD0FBF98ABE62FF
          009CB9F3F7983F2EBF28ADF57F2E79E6D7F2CAE758F39794BCBDA9FE61DE4163
          710E8BA6EB3AE59D8EA17CC9A92BDA521B695D8B4CA514549A52A15798FF00CF
          BCE2D06EFF0022351F37E93E71F2F79BF56FCC5F36EA1E64F3AA7962CB4AD3AC
          74BD5E7B6B3B6934FF00AA690AB144EB05B43337A83D56F579B93C812ABEEBC5
          5D8ABB15762AEC55F3D79AE64B6FF9CA0FCA1B89048D1C1F94DF99B23AC51BCA
          E42EB5E45242C7186763B6C14127A015C55F0D79A07E5679FF005DF3FF009834
          0BAFCFD3A05C2F9C7CBDAF7E51E9DF95BAF7FB975F33CFA65E6BFA7DA6A975A2
          04B14D567D2E10FF005C9E278BD49BE2B75756455FAD58ABB15762AFFFD1FBF9
          8ABE4AFF009CD8F3C6A5E40FC88BCD674BD4743D0E6BFF0034795F46BAF31798
          EC6DB52D3B4DB5D4F59B4B4B9BD96DAF4ADBB0822919EB21E2295A8A720ABCDB
          FE7DCFF99FAEFE6BFE4C79AFCC5AFEABA16AF73179B605867F2F69B61A5DA41F
          A43CB1A0EAF716261D3912366B1B9D426B5E4F5969105958BA9C55F7F62AEC55
          D8ABB15762AF9D3CE7A7D96ADFF392FF00953A5EA56D1DEE9DA97E517E685ADF
          D9CA3924B0CDACF915248D8770CA4838ABE28F35E8DF963E6CFCC8FCD4FF0013
          EB7F967E49D5FCBDE6ABAD1DB459FC8379E64B836F6F142F6D7173A9DBEA31C5
          24D3C322C8E8A8A6227D265E68C4AAFD62C55D8ABB157FFFD2FBF98ABCAFF39B
          CEFE41FCBDF215F7993F3274A975EF2E2DEE9DA7C5A0DB696FAD5D5F5FEA3771
          5A58DADAE9F1472BCF34B712A2A2AA93538AA51F915F987F96BF98DE58D76FFF
          002D3CB779E4EB4D035EB8D17CD3E56D4B4297CB97F63ABC36F6F3C91DDD84D1
          42EAE6DE781C1237565DF6A055ED78ABB15762AEC55D8ABE5CFCD4F33D87927F
          3E7C89E73D561B8B8D2FCA3F927F9B3AD6A505A2A3DC3DBD86A9E47B89562591
          E352E5632143328AF523AE2AF2AF345CDC7E5FAFE7E799FCA7F9D3E75F2CE91E
          53F28FFCAEDF30791EC343F2CDC4115A6B69ABDC345633DED94B299A69744B96
          916493887656E5F1B5157DF18ABB15762AFF00FFD3FBF98ABE53FF009CCD92D6
          CFF24CEB8FE611E5CD5FCABE70F286BDE4F99B47BDD7C5E6BBA66BF6373A5E9D
          FA334E78EEAE3EB9728907189830E55AD062AC6BFE709356BBF32F947F383CDF
          AF6B02FF00CEFE6DFCCDBFBFFCC1D18797753F2B7E86D522D1B47B35D3FF0046
          EAF2CD74B4B4B6B79F93B9AFAB4ED8ABED1C55D8ABB15762AEC55F2E7E6A7962
          C3CEDF9F3E44F266AB35C5BE97E6EFC93FCD9D17529ED1912E12DEFF0054F23D
          BCAD1348922870B212A595857A83D315623ADFFCE265AEB43CDDA1EB5FF3939F
          99F3BFE667936DFC89E69D3993C8B14B7FE5CB05D4562B3554F2A2BA08C6AB77
          5962E327EF3E273C138AAFB4715762AEC55FFFD4FBF98ABC37FE720FF2DBCD7F
          9A1E44D3346F23EB3A4E85E6CF2F79B7CB3E6DD0AFF5DB79EEB4E373E5BD5ADB
          558A2B986DA48657491AD82B04914D0ECC3AE2A977FCE3E7E5A7E60FE5E59FE6
          8EA5F99FAF797B5FF387E67F9E26F37EA13795ACEEEC74D815F48D2B4A482286
          F67B9981034DE44991BED7D18ABE83C55D8ABB15762AEC55F3A79CF50B0D27FE
          725FF2A755D56FADF4CD2F4CFCA2FCD0BBD4B52BB9521B7B7B78759F22C92CB2
          CB210A888A0B33310001538ABE06FCC1F33FE447986EFF0035B4B83F313FE71E
          7CC3E6AFCC2F305C6ABE4EFF009C8ED43F303404D6FCB51CE22FA94CA8C1EEE3
          9F46E1C6D23B797D293847CDA3F526A2AFD84C55D8ABB157FFD5FBF98AB0AFCC
          1F385D7913CAF79E64B2F24798FF0030EE2D248634F2B79520B5B8D526134810
          BC51DE5D59C456307935651F0834A9DB1578D7FCE3479E3CEDF9811FE76EBBE7
          3D175EF2B429F99135B793FCA1E66FA92EA9A4E90BA0688EB6D3C36173771C5C
          AE5E7942194B5240DD1862AFA6B15762AEC55D8ABB15780798FF00F5A9FF0026
          FF00F3557E65FF00DD73C898ABCEBCD1FF0038F5E7ED5ACBF363C8DA4F9A3CAF
          6FF97FF9CBADDDEB1E60D7AF34BB997CCFA77E9058C4E9693ADC88659A0F4FFD
          0AE1C235B0F4F8A3FA2BC957D898ABB15762AFFFD6FBF98ABC47FE722BC91F99
          7F989F945E68F297E51F9DFF00E55FF9E752FAA9D3B5FF00566B6E5145711C97
          36BF5BB6579ED7EB112B47EB44A5D3955462AF1CFF009C0EF206BFF95DF923A9
          7917CDFF0096B73F96FE72D1BCEFE649BCCCB713C57C9ACC9A85E1BFB4D4E0D4
          D1DDF504163716F6BF589A9296B764751C3157DA38ABB15762AEC55D8ABC03CC
          7FFAD4FF00937FF9AABF32FF00EEB9E44C55F107E6BF91BF3A3CDDADFE656B9E
          5AD47F33FCD3772EABE74F2DF97CF93BCFD7F65A2C5AB1974F9BCAAD369DA76B
          76B15ADAD92DBDD69FA92C90249CA5331E47D393157EAF62AEC55D8ABFFFD7FB
          F98ABE5BFF009CC3D0353F30FE4BBDBD868775E6BB0D33CDBE51D63CD9E50B1B
          986D6E757D0F4CD7ACAF354B184DC5C5AC4EF2DB44E163795039F841AD3154AF
          FE710EDB529746FCEDF365C794F52F22E8DF98DF9ADAC79ABCADE53D626B492F
          ED6D6FB4ED316E9AE62B2BABC8607B8D422BAB828253FDE73FDBC55F5C62AEC5
          5D8ABB15762AF00F31FF00EB53FE4DFF00E6AAFCCBFF00BAE7913157CD3F9D7E
          44F3EFE5A1FCDDFCD7D0FCA2D0F91EDE6BBF35F985F4AFCE9F35F96DE48638D5
          EFAFBF41D9F9727B481C468D2C890CEED271257D49582955FA2B8ABB15762AFF
          00FFD0FBF98ABE53FF009CCB8FF487E4CDBF961744F2E6B93F9F7CEDE4EF28DA
          A79AF4CFD33A5DA4BAF6BF65A72DF4BA7FAB009DADBD7F5114C8A39015DB6C55
          8EFF00CE157975BC8DE5AFCE9FCB5974AF29D8CFF96DF99F7BA24DA9F93F425F
          2E596A864D0B44D416F26D392E2E5639B85E2C2C4486AB1A77DF157D9D8ABB15
          762AEC55D8ABE7AF3589DBFE7283F2856D648E1B96FCA6FCCD16F2CA8644573A
          D79178B322B21600EE40615F11D7157E7179FE3F2CD8F9B3F31ADBF347F33FF2
          DAF7CEEDACEA37371E6ED0BF203CDDE60B8B136D35A5B99ADB518B52BAD285C5
          95CDCC09FE90974B0CEF124ED216098ABF68B15762AEC55FFFD1FBF98ABE3FFF
          009CE3D63CB5A2FE45A4FE72D0BCBDE61F28DEF9D7C9FA7F99EC7CD285B4B4D3
          EF75DB382EA79984D004F4627670E5C042391D862AF33FF9F6C79A3CAFE6DFC9
          3F35EA5E50F28794BC95A47F8A74F79F47F2645245A70D42F3C9FE5BD43510C2
          5B8BA6F561BBBA96060CFC916358DBE3462557E8662AEC55D8ABB15762AF00F3
          1FFEB53FE4DFFE6AAFCCBFFBAE7913157C6FE6FF00C9CFCCDFCDDD6BF3620FCA
          ED134FD2BCA47CD1E72F29EBC3CC5E721A5DE4F61E634B34F35595B595BF93B5
          77B6B7D467B686EA1924BB7955809A3544645C55FA8F8ABB15762AFF00FFD2FB
          F98ABE69FF009CBBD0BCD5AFFE4179DADFC99E78F2FF00E5DEB9602D3518FCD3
          E683691E9514369731CB3C77135F5BDD410FAB1A94591E270AC41A62AF38FF00
          9C01D7FF00C51F91371AE997CCB70F7DE66BF12DD798ACB49B58A67860B585A5
          D22E745B2B0B6BFB0731D62BA110676E6A4D1000ABEDDC55D8ABB15762AEC55F
          3A79CC5FB7FCE4BFE54AE9525BC3AA37E517E680D365BB4792DD6E0EB3E45F49
          A548D91990350B056048E8475C55F14FE70BFE59DAF9F3CD1AF6A7A2FE526A37
          3A9EBDAB5AF9875CBDFCBFF30DF5D47FE1DB6B6935AD4750BE875282296DB4E1
          711A5C5C460A46C7D33F12380ABF58715762AEC55FFFD3FBF98ABCABF39FF26F
          C97F9F3E42D43F2DFCFF001DF49E5BD4AEACEF27FD1B74F6572B3584E9730324
          F1FC4A5648C1DB155BF943E44F2DFE5BE83AC794BCB7E79F31F9EA2D3B5763A9
          DC79A7CC575E64D434FB96B4B622C4DC5DCB2C9022C3E9CAB05401EA7303F795
          2ABD5F15762AEC55D8ABB15780798FFF005A9FF26FFF003557E65FFDD73C898A
          BF3E7F34FCE3F9596DE76FCF25D33F2CAD750D52D24F33B7E6FE8D71E6FD5219
          E4F2CE997DA5BDCE9D069AB482D2EBCDFA838586D23056F6350F2126421557EC
          2E2AEC55D8ABFFD4FBF98ABC47FE722BC91F997F989F945E68F297E51F9DFF00
          E55FF9E752FAA9D3B5FF00566B6E5145711C9736BF5BB6579ED7EB112B47EB44
          A5D3955462AF1CFF009C0EF206BFF95DF923A97917CDFF0096B73F96FE72D1BC
          EFE649BCCCB713C57C9ACC9A85E1BFB4D4E0D4D1DDF504163716F6BF589A9296
          B764751C3157DA38ABB15762AEC55D8ABE73F3ACF776BFF392DF955756162754
          BEB6FCA1FCD096CB4C591213732A6B3E4564844925110BB00BC9B615A9C55F38
          EA5F99FE79F3D7E687913F2FBF32FCC0BFF38FBA779D21D4A5D7FCAB67A71B3D
          57F48691F52974EB387CD7ABC0D677E646965746D32157430931CD50DC557E8D
          62AEC55D8ABFFFD5FBF98ABE41FF009CE4D175ED7FF206FB4DD0B47D5BCC4ADE
          68F2B4FE61F2FE89722D2F6FB47B6D6AD27D46DE394DC5A8ABDBA38A1952A7F6
          875C55E65FF3ED9F2A79B7CA5F925E6DB2F38F97755F2CEA97DE6F86EE5B2D62
          E23B9B99EEBFC31A041AADF738AE2E41177AA43773D4BF262E5D955988C55FA1
          78ABB15762AEC55D8ABC03CC7FFAD4FF00937FF9AABF32FF00EEB9E44C55ED3A
          EE81A179A34ABDD07CCDA2D8798B43D4A3F4B51D1B53B68AEED2743FB32C132B
          A38F6607154DB15762AEC55FFFD6FBF98ABC2BFE724BC8577F991F93DE6BF2CD
          95AF95AF6E3843A80B5F39690DAE690E2C245B96596C967B62CC447F0373F85A
          8D434A62AF33FF009C17F29DDF977FE71DFC9FAF5DE8FE4BF2FF00FCAD3B5D3F
          CF96DA37917436D06C2DA1D7348B095619E06B8B9F5AE23E3C5A605432841C07
          1DD57D838ABB15762AEC55D8ABC03CC7FF00AD4FF937FF009AABF32FFEEB9E44
          C55EFF008ABB15762AEC55FFD7FBF98ABE32FF009CF7BDD1ECBFE71D3531E61B
          0D0EEF41D43CD7E50D3B5ABAF31DBADD69963697BAFD8DBDC5EDC44EF1A110C6
          ECC0B3A853BD76C55E41FF003EB19627FF009C7BF332430E9089FE2FB7BC927D
          1B4EB6D32179F54F2A797753B98E486D15222F6B3DDBDAF20A1B8C2A1EAE1895
          5FA598ABB15762AEC55D8ABC03CC7FFAD4FF00937FF9AABF32FF00EEB9E44C55
          EFF8ABB15762AEC55FFFD0FBF98ABE50FF009CD0D7A5D0BF248093CD43C8BA26
          BFE74F26681E70F3991663F45E89AB7986C2CF52BBF53508A7B58BD3B791CFA9
          2C6CA9F6BB62A907FCE14EBB06A9E57FCE5D1F48FCC93F9B9E4FF25FE67DFE8B
          E45F3F34BA6DCB5F69ADA2E8D7EC5AEF4982DED6E4A5D5E4EBEA2276E3FB340A
          BECEC55D8ABB15762AEC55E01E63FF00D6A7FC9BFF00CD55F997FF0075CF2262
          AF7FC55D8ABB15762AFF00FFD1FBF98ABE64FF009CB3F3179D3CB7F95FA2DCF9
          0B4987CC5AFEA5E7EF25690DE58B968A3B5D56D351F30595B5D69F7334D6F749
          0437513B4524A626F4D58B81F0E2AF44FC9C9FCE937952E23F3C7E53E87F935A
          85AEA3345A7794BCBDACC5ADD9BDA18E2905D7AF0D869CB1BBCAF2298FD234E2
          1B91E540ABD5F15762AEC55D8ABB157936B3E51D6AF7F3D7F2E7CF90431B7977
          CB7E43F3A681AA4E645122DEEB7A9F95AEACD563EACAD1E95704B0D94800FDA1
          8ABD6715762AEC55D8ABFFD2FBF98ABB15762AEC55D8ABB15762AEC55D8ABB15
          762AEC55D8ABFFD3FBF98ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55
          D8ABFFD9}
      end
      object QRShape9: TQRShape
        Left = 136
        Top = 498
        Width = 433
        Height = 185
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          489.479166666666600000
          359.833333333333400000
          1317.625000000000000000
          1145.645833333333000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel32: TQRLabel
        Left = 148
        Top = 538
        Width = 105
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          391.583333333333300000
          1423.458333333333000000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Prezado Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel33: TQRLabel
        Left = 148
        Top = 504
        Width = 339
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          391.583333333333300000
          1333.500000000000000000
          896.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOSHIBA MEDICAL DO BRASIL LTDA.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Microstyle Bold Extended ATT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel34: TQRLabel
        Left = 148
        Top = 578
        Width = 381
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          391.583333333333400000
          1529.291666666667000000
          1008.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Solicitamos a devolu'#231#227'o do canhoto da Nota Fiscal e da Duplicata' +
          ', devidamente assinados pelo seu representante legal, utilizando' +
          '-se do envelope porte pago em anexo.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel35: TQRLabel
        Left = 148
        Top = 658
        Width = 103
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          391.583333333333300000
          1740.958333333333000000
          272.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Muito Obrigado.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
    end
  end
  object Extenso1: TExtenso
    Moeda = 'Real'
    PluralMoeda = 'Reais'
    Fracao = 'centavo'
    PluralFracao = 'centavos'
    Numero = '0,00'
    Extenso = 'Real'
    Left = 12
    Top = 9
  end
end
