object frmDestinoPeca: TfrmDestinoPeca
  Left = 368
  Top = 129
  BorderStyle = bsToolWindow
  Caption = 'Classifica'#231#227'o da Pe'#231'a'
  ClientHeight = 288
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 437
    Height = 247
    Align = alClient
    Caption = ' Dados da Classifica'#231#227'o '
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 33
      Width = 27
      Height = 13
      Caption = 'OS Id'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 199
      Top = 58
      Width = 45
      Height = 13
      Caption = 'Empenho'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 10
      Top = 57
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object Label4: TLabel
      Left = 10
      Top = 81
      Width = 35
      Height = 13
      Caption = 'Modelo'
    end
    object Label5: TLabel
      Left = 199
      Top = 35
      Width = 37
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEdit5
    end
    object Label7: TLabel
      Left = 10
      Top = 108
      Width = 62
      Height = 13
      Caption = 'Classifica'#231#227'o'
    end
    object Label9: TLabel
      Left = 199
      Top = 80
      Width = 20
      Height = 13
      Caption = #205'tem'
      FocusControl = DBEdit8
    end
    object Label6: TLabel
      Left = 10
      Top = 133
      Width = 55
      Height = 13
      Caption = 'C'#243'd. Barras'
    end
    object Label8: TLabel
      Left = 10
      Top = 174
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    object barcode: TBarcode
      Left = 140
      Top = 127
      Width = 107
      Height = 41
      BarColor = clBlack
      BackgroundColor = clWhite
      BarcodeType = btCode39
      Digits = 'CGL'
      Magnification = 1
      Version = 'Registered 1.0'
      Author.Name = 'Ramos de Souza Janones'
      Author.Phone = '(034)236-8620'
      Author.Email = 'laug@ufu.br'
      BarCaption = True
      RescaleEAN = True
    end
    object DBEdit1: TDBEdit
      Left = 76
      Top = 27
      Width = 120
      Height = 21
      Hint = 'Ordem de Servi'#231'o'
      Color = clInactiveBorder
      DataField = 'OSID'
      DataSource = dmOS.dsOsClassifPeca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 249
      Top = 52
      Width = 166
      Height = 21
      Color = clInactiveBorder
      DataField = 'PECAID'
      DataSource = dmOS.dsOsClassifPeca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 249
      Top = 27
      Width = 166
      Height = 21
      Color = clInactiveBorder
      DataField = 'PRODUTOID'
      DataSource = dmOS.dsOsClassifPeca
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 249
      Top = 77
      Width = 166
      Height = 21
      Color = clInactiveBorder
      DataField = 'ITEMID'
      DataSource = dmOS.dsOsClassifPeca
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 76
      Top = 128
      Width = 63
      Height = 21
      DataField = 'CODIGOBARRASID'
      DataSource = dmOS.dsOsClassifPeca
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 76
      Top = 172
      Width = 342
      Height = 63
      DataField = 'OBSERVACAO'
      DataSource = dmOS.dsOsClassifPeca
      ScrollBars = ssVertical
      TabOrder = 5
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 76
      Top = 52
      Width = 121
      Height = 21
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      DataField = 'SERIEID'
      DataSource = dmOS.dsOsClassifPeca
      TabOrder = 6
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBComboDlg2: TwwDBComboDlg
      Left = 76
      Top = 78
      Width = 122
      Height = 21
      OnCustomDlg = wwDBComboDlg2CustomDlg
      ShowButton = True
      Style = csDropDown
      DataField = 'MODELOID'
      DataSource = dmOS.dsOsClassifPeca
      TabOrder = 7
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 76
      Top = 103
      Width = 63
      Height = 21
      OnCustomDlg = wwDBComboDlg3CustomDlg
      ShowButton = True
      Style = csDropDown
      DataField = 'CLASSIFPECAID'
      DataSource = dmOS.dsOsClassifPeca
      TabOrder = 8
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit3: TDBEdit
      Left = 140
      Top = 103
      Width = 275
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOCLASSIFPECA'
      DataSource = dmOS.dsOsClassifPeca
      TabOrder = 9
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 247
    Width = 437
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnClassificar: TBitBtn
      Left = 8
      Top = 6
      Width = 81
      Height = 30
      Caption = 'Classificar'
      TabOrder = 0
      OnClick = btnClassificarClick
      Glyph.Data = {
        F6040000424DF604000000000000360000002800000010000000130000000100
        200000000000C004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00088D
        BD00088DBD00088DBD00088DBD00088DBD00088DBD00088DBD00088DBD00088D
        BD000C841800088DBD00088DBD00088DBD00FF00FF00FF00FF00088DBD00299F
        B70071C8F20085D8F20067CDF50067CDF50067CDF50067CDF50067CDF50067CD
        F5000C8418000C84180038AAB200088DBD00FF00FF00FF00FF00088DBD0067CD
        F40038AAB2009BD7EA006ED2F6006ED2F6006ED2F6006ED2F6006ED2F6006ED2
        F6000C84180031B54C000C84180086D6EF00088DBD00FF00FF00088DBD0072D3
        F500088DBD00B2DAE6007BD6F4000C8418000C8418000C8418000C8418000C84
        18000C84180030B84C0031B54C000C841800088DBD00FF00FF00088DBD007BD6
        F4001D97B900A9C09B00A9C09B000C8418005FDF8B005FDF8B005ADB890056D5
        8B0041B6570038BB540030B84C0031B54C000C841800FF00FF00088DBD0082D7
        F300528350007FBFF200FAECDE000C8418005FDF8B005FDF8B005FDF8B005ADB
        890056D58B0041B6570038BB540030B84C0032B44C000C841800088DBD0085D8
        F200AE828400299FB700FEFCFB000C8418005FDF8B005FDF8B005FDF8B005FDF
        8B005ADB890056D58B0041B6570038BB54000C841800088DBD00088DBD0091D5
        EB00AA847C001D97B900088DBD000C8418000C8418000C8418000C8418000C84
        18000C8418005ADB890056D58B000C841800088DBD00088DBD00088DBD009BD7
        EA00AC848000FAECDE00FDF3E900FAEADA00F9E7D500F8E3CF00F8E0CA00F4DA
        C2000C8418005FDF8B000C841800FF00FF00FF00FF00FF00FF00088DBD00FEFC
        FB00AC848000FCF4EB00FDF8F300FDF3E900FBEFE200FAEADA00F9E7D500F8E0
        CA000C8418000C841800098EBC00FF00FF00FF00FF00FF00FF00FF00FF00088D
        BD00D4B59000FDF7F000FEFCFB00FDF8F300FDF5ED00FDF5ED00FDF3E900FAEA
        DA000C841800088DBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D4B59000FDF8F300FEFCFB00FEFCF900FEFCF900F4DAC200EFD1B600C3B7
        9B007C575600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00DEB58C00FDF9F500FEFCFB00FEFCFB00FEFCFB00A8837700A8837700A883
        7700A8837700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00E5BC9300FDF7F000FEFCFB00FEFCFB00FEFCFB00A8837700E2B78D00E2B7
        8D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00E5BC9300DBB58C00DBB58C00DBB58C00DBB58C00A8837700DEB58C00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnFechar: TBitBtn
      Left = 351
      Top = 6
      Width = 74
      Height = 30
      Hint = 'Fechar o formul'#225'rio'
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btnFecharClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000000000000000000000000000000000003F00007F0000
        7F3F007F3F007F3F007F3F007F3F007F3F007F3F000000003F00007F00007F00
        007F00007F00003F00007F0000FF0000FF3F00FF7F00FF7F00FF7F00FF7F00FF
        7F00FF7F007F7F009F9F00BF0000FF0000FF0000FF00007F00007F0000FF0000
        FF0000FF3F00FF7F00FF7F00FF7F00FF7F00FF7F007F7F00BFBF00606000BF00
        00FF0000FF00007F00003F00007F00007F00007F00007F3F007F3F00FFBF00FF
        BF00FFBF007F7F00BFBF008080006060007F00007F00003F0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF007F7F00BFBF008080008080
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000040404040
        40404040407F7F00BFBF00808000808000404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF2020000000008080808080808080807F7F00BFBF008080008080
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F0060600060606080
        80808080807F7F009F9F00202020808000404040FFFFFFFFFFFF000000000000
        0000000000007F7F00DFDF006060006060608080807F7F009F9F003F3F3F8080
        00404040FFFFFFFFFFFF5F5F00BFBF00BFBF00BFBF00DFDF00FFFF00DFDF0060
        60006060607F7F00BFBF00808000808000404040FFFFFFFFFFFF7F7F00FFFF3F
        FFFF7FFFFF7FFFFF7FFFFFBFFFFF3F7F7F006060607F7F00BFBF008080008080
        00404040FFFFFFFFFFFF0000000000000000000000007F7F00FFFF3F7F7F0060
        60608080807F7F00BFBF00808000808000404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7F7F007F7F006060608080808080807F7F3FBFBF008080008080
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20200000000080808080
        8080808080606060BFBF7F9F9F00808000404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000808080808080808080808080606060BFBF7F9F9F
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404040
        40404040404040404040402020207F7F3F202020FFFFFFFFFFFF}
    end
  end
end
