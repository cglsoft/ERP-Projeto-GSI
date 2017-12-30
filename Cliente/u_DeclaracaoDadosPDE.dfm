object frmDeclaracaoDadosPDE: TfrmDeclaracaoDadosPDE
  Left = 125
  Top = 107
  Caption = 'Declara'#231#227'o - Dados do Pedido de Entrada'
  ClientHeight = 335
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox7: TGroupBox
    Left = 0
    Top = 80
    Width = 321
    Height = 105
    Caption = ' &Volumes Transportados '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label30: TLabel
      Left = 7
      Top = 17
      Width = 55
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 69
      Top = 17
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 114
      Top = 17
      Width = 30
      Height = 13
      Caption = 'Marca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 243
      Top = 62
      Width = 63
      Height = 13
      Caption = 'Peso Liqu'#237'do'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 167
      Top = 62
      Width = 52
      Height = 13
      Caption = 'Peso Bruto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 7
      Top = 62
      Width = 38
      Height = 13
      Caption = 'Esp'#233'cie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit31: TDBEdit
      Left = 7
      Top = 33
      Width = 56
      Height = 21
      Hint = 'Volumes Transportados: Quantidade'
      CharCase = ecUpperCase
      DataField = 'EMBQTDVOLUMES'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit34: TDBEdit
      Left = 69
      Top = 33
      Width = 36
      Height = 21
      Hint = 'Nat. Opera'#231#227'o: N'#250'mero'
      CharCase = ecUpperCase
      DataField = 'EMBNUMERO'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit32: TDBEdit
      Left = 112
      Top = 33
      Width = 201
      Height = 21
      Hint = 'Nat. Opera'#231#227'o: Marca'
      CharCase = ecUpperCase
      DataField = 'EMBMARCA'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBComboBox1: TDBComboBox
      Left = 6
      Top = 77
      Width = 154
      Height = 21
      Hint = 'Volumes Transportados: Esp'#233'cie'
      BevelInner = bvLowered
      DataField = 'EMBESPECIE'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'VOLUME'
        'CAIXA'
        'ENGRADADO'
        'PACOTE'
        'A GRANEL')
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit36: TDBEdit
      Left = 243
      Top = 77
      Width = 69
      Height = 21
      Hint = 'Volumes Transportados: Peso Liqu'#237'do'
      DataField = 'EMBPESOLIQUIDO'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit35: TDBEdit
      Left = 166
      Top = 77
      Width = 69
      Height = 21
      Hint = 'Volumes Transportados: Peso Bruto'
      DataField = 'EMBPESOBRUTO'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object GroupBox8: TGroupBox
    Left = 322
    Top = 80
    Width = 411
    Height = 65
    Caption = ' &Transportador '
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label25: TLabel
      Left = 8
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Transportador ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TLabel
      Left = 7
      Top = 41
      Width = 82
      Height = 13
      Caption = 'Placa do Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit42: TDBEdit
      Left = 95
      Top = 37
      Width = 114
      Height = 21
      Hint = 'Placa do Ve'#237'culo'
      DataField = 'PLACAVEICULO'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
    end
    object wwDBComboDlg5: TwwDBComboDlg
      Left = 96
      Top = 13
      Width = 67
      Height = 20
      Hint = 'Transportador: N'#186' do Transportador '
      OnCustomDlg = wwDBComboDlg5CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'TRANSPORTADORID'
      DataSource = dmEF.dsPde
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit23: TDBEdit
      Left = 168
      Top = 12
      Width = 236
      Height = 21
      Hint = 'Transportador: Descri'#231#227'o do Transportador '
      TabStop = False
      Color = clScrollBar
      DataField = 'L_NOMETRANSPORTADOR'
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 1
    end
  end
  object DBRadioGroup4: TDBRadioGroup
    Left = 322
    Top = 145
    Width = 411
    Height = 40
    Hint = 'Tipo de Frete'
    Caption = ' Frete por Conta '
    Color = clBtnFace
    Columns = 2
    Ctl3D = True
    DataField = 'MODALIDADEFRETE'
    DataSource = dmEF.dsPde
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      '1- Emitente'
      '2 - Destinat'#225'rio')
    ParentBackground = True
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Values.Strings = (
      'E'
      'D')
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 184
    Width = 733
    Height = 121
    Caption = 'Observa'#231#227'o'
    TabOrder = 3
    object Label1: TLabel
      Left = 7
      Top = 19
      Width = 72
      Height = 13
      Caption = 'Observa'#231#227'o ID'
    end
    object wwDBRichEdit2: TwwDBRichEdit
      Left = 168
      Top = 16
      Width = 561
      Height = 97
      Hint = 'Nat. Opera'#231#227'o: Descri'#231#227'o da Observa'#231#227'o'
      ScrollBars = ssVertical
      AutoURLDetect = False
      Color = clWhite
      DataField = 'DESCRICAOOBSERVACAO'
      DataSource = dmEF.dsPde
      PrintJobName = 'Delphi 7'
      TabOrder = 1
      EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      PrintHeader.VertMargin = 0.500000000000000000
      PrintHeader.Font.Charset = DEFAULT_CHARSET
      PrintHeader.Font.Color = clWindowText
      PrintHeader.Font.Height = -11
      PrintHeader.Font.Name = 'MS Sans Serif'
      PrintHeader.Font.Style = []
      PrintFooter.VertMargin = 0.500000000000000000
      PrintFooter.Font.Charset = DEFAULT_CHARSET
      PrintFooter.Font.Color = clWindowText
      PrintFooter.Font.Height = -11
      PrintFooter.Font.Name = 'MS Sans Serif'
      PrintFooter.Font.Style = []
      RichEditVersion = 2
      Data = {
        640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
        66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
        696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
        61720D0A7D0D0A00}
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 86
      Top = 15
      Width = 77
      Height = 20
      Hint = 'Nat. N'#186' da Opera'#231#227'o: Observa'#231#227'o'
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'OBSERVACAOID'
      DataSource = dmEF.dsPde
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 315
    Width = 737
    Height = 20
    Panels = <
      item
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel0'
        Style = psControl
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '300'
      end
      item
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel1'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    SimplePanel = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 737
    Height = 33
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 733
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 720
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 33
    Width = 737
    Height = 49
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 6
    object Label9: TLabel
      Left = 6
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Empresa ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 83
      Top = 3
      Width = 46
      Height = 13
      Caption = 'Pedido ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 164
      Top = 3
      Width = 74
      Height = 13
      Caption = 'Data do Pedido'
    end
    object Label36: TLabel
      Left = 255
      Top = 3
      Width = 82
      Height = 13
      Caption = 'Data de Previs'#227'o'
    end
    object Label2: TLabel
      Left = 344
      Top = 2
      Width = 99
      Height = 13
      Caption = 'Ordem de Servi'#231'o ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit6: TDBEdit
      Left = 7
      Top = 16
      Width = 74
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      Color = clScrollBar
      DataField = 'EMPRESAID'
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 82
      Top = 16
      Width = 80
      Height = 21
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'PDEID'
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 1
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 164
      Top = 16
      Width = 89
      Height = 21
      Hint = 'Data do Pedido'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clScrollBar
      DataField = 'DATAPEDIDO'
      DataSource = dmEF.dsPde
      Date = 38154.000000000000000000
      Epoch = 1950
      ReadOnly = True
      ShowButton = True
      TabOrder = 2
    end
    object wwDBDateTimePicker5: TwwDBDateTimePicker
      Left = 254
      Top = 16
      Width = 90
      Height = 21
      Hint = 'Data de Previs'#227'o'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clScrollBar
      DataField = 'DATAPREVISAO'
      DataSource = dmEF.dsPde
      Date = 38154.000000000000000000
      Epoch = 1950
      ReadOnly = True
      ShowButton = True
      TabOrder = 3
    end
    object DBEdit8: TDBEdit
      Left = 345
      Top = 16
      Width = 98
      Height = 21
      Hint = 'N'#186' da Ordem de Servi'#231'o'
      TabStop = False
      Color = clScrollBar
      DataField = 'OSID'
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 4
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 579
      Top = 2
      Width = 155
      Height = 46
      Hint = 'Tipo da Nota'
      Caption = '&Tipo de Nota'
      Color = clBtnFace
      Columns = 2
      DataField = 'TIPONOTA'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Comum'
        'Importada'
        'Fornecedor')
      ParentBackground = True
      ParentColor = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Values.Strings = (
        'C'
        'I'
        'F')
    end
    object GroupBox5: TGroupBox
      Left = 445
      Top = 1
      Width = 133
      Height = 46
      Caption = 'Checks de Controle'
      TabOrder = 5
      object DBCheckBox2: TDBCheckBox
        Left = 7
        Top = 12
        Width = 122
        Height = 17
        Hint = 'Checks de controle : Movimenta Estoque'
        Caption = 'Movimenta Estoque'
        DataField = 'MOVIMENTAESTOQUE'
        DataSource = dmEF.dsPde
        ReadOnly = True
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 7
        Top = 27
        Width = 120
        Height = 17
        Hint = 'Checks de Controle: Contribuinte do ICMS'
        Caption = 'Contribuinte do ICMS'
        DataField = 'CONTRIBUINTEICMS'
        DataSource = dmEF.dsPde
        ReadOnly = True
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 616
    Top = 64
    Bitmap = {
      494C010103000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001002000000000000013
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5B5EF00526BE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004263DE00A5B5EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000637BE7000029D6004263DE0000000000000000007F0000007F3F00007F3F
      00007F3F00007F3F00007F3F00007F3F00007F3F000000000000000000007F00
      00007F0000007F0000007F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004263DE000029D6000029D600637B
      E70000000000000000000000000000000000000000000000000000000000526B
      E7000029D6004263E70000000000000000007F000000FF000000FF3F0000FF7F
      0000FF7F0000FF7F0000FF7F0000FF7F0000FF7F00007F7F00009F9F0000BF00
      0000FF000000FF000000FF0000007F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000000000000000001039DE000029DE000029
      DE00637BE70000000000000000000000000000000000000000003152E7000029
      DE00637BEF000000000000000000000000007F000000FF000000FF000000FF3F
      0000FF7F0000FF7F0000FF7F0000FF7F0000FF7F00007F7F0000BFBF00006060
      0000BF000000FF000000FF0000007F0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF000000000000000000000000000000000000000000000000004263E7000029
      DE000029DE00526BEF000000000000000000000000001039E7000029DE00637B
      EF0000000000000000000000000000000000000000007F0000007F0000007F00
      00007F3F00007F3F0000FFBF0000FFBF0000FFBF00007F7F0000BFBF00008080
      0000606000007F0000007F000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000008494
      F7000029E7000029E7003152EF0094A5F7001039E7000029E700637BEF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000214AEF000029E7000029E7000029E700637BEF00000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004040400040404000404040007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000637BF7000031EF000031EF000031EF0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0020200000000000008080800080808000808080007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000315AF7000031EF000031EF00637BF7000031F7001039F700000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005F5F0000606000006060600080808000808080007F7F00009F9F00002020
      20008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008000000080000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
      FF0000000000000080000000800000000000000000000000000000000000214A
      F7000031F7000031F700A5B5FF000000000000000000315AFF001042FF00B5C6
      FF00000000000000000000000000000000000000000000000000000000000000
      00007F7F0000DFDF00006060000060606000808080007F7F00009F9F00003F3F
      3F008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000001039F7000031
      F7000031F700A5B5FF00000000000000000000000000000000006384FF000031
      FF00A5B5FF000000000000000000000000005F5F0000BFBF0000BFBF0000BFBF
      0000DFDF0000FFFF0000DFDF000060600000606060007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00000000000000
      000000000000808080000000000000000000A5B5FF000031FF000031FF001042
      FF00A5B5FF00000000000000000000000000000000000000000000000000A5B5
      FF00315AFF000000000000000000000000007F7F0000FFFF3F00FFFF7F00FFFF
      7F00FFFF7F00FFFFBF00FFFF3F007F7F0000606060007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000001042FF000031FF001042FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F0000FFFF3F007F7F000060606000808080007F7F0000BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000849CFF004263FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F00007F7F00006060600080808000808080007F7F3F00BFBF00008080
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00202000000000000080808000808080008080800060606000BFBF7F009F9F
      00008080000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008000000080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008080800080808000808080008080800060606000BFBF
      7F009F9F000040404000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000040404000404040004040400040404000404040002020
      20007F7F3F0020202000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFF9FFFF0000F55F9FF180210000FFCF0FE300000000F00787C700000000
      F007C38F80010000F003E01F00000000F003F83F00000000E001F87F00000000
      E000F03F000000000000E18F000000000001C3C700000000000307E700000000
      00071FFF00000000000F3FFF00000000001FFFFF00000000F1FFFFFF00000000
      F3FFFFFF0000000000000000000000000000000000000000000000000000}
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actPDE
            Caption = '&Gerar Pedido'
            ImageIndex = 0
          end
          item
            Action = actFechar
            Caption = '&Fechar'
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = actPDE
            Caption = '&Gerar Pedido'
            ImageIndex = 0
          end
          item
            Action = actFechar
            Caption = '&Fechar'
            ImageIndex = 1
          end>
      end
      item
        Items = <
          item
            Action = actPDE
            Caption = '&Gerar Pedido'
            ImageIndex = 0
          end
          item
            Action = actExcluir
            ImageIndex = 1
          end
          item
            Action = actFechar
            Caption = '&Fechar'
            ImageIndex = 2
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 664
    Top = 64
    StyleName = 'XP Style'
    object actPDE: TAction
      Category = 'Ferramentas'
      Caption = 'Gerar Pedido'
      ImageIndex = 0
      OnExecute = actPDEExecute
    end
    object actExcluir: TAction
      Category = 'Ferramentas'
      Caption = 'Excluir Pedido'
      Hint = 'Excluir Pedido de  Entrada de Importa'#231#227'o'
      ImageIndex = 1
      OnExecute = actExcluirExecute
    end
    object actFechar: TAction
      Category = 'Ferramentas'
      Caption = 'Fechar'
      Hint = 'Fechar a tela'
      ImageIndex = 2
      OnExecute = actFecharExecute
    end
  end
end
