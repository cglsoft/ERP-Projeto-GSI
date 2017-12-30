object frmRdv: TfrmRdv
  Left = 919
  Top = 160
  Caption = 'Despesas de Viagem'
  ClientHeight = 511
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 112
    Width = 785
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 492
    Width = 785
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 460
    Width = 785
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 785
      Height = 32
      Align = alBottom
      AutoSize = True
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          MinWidth = 137
          Width = 150
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 618
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 9
        end>
      TtmbCria = True
      TtmbClientDataSet = dmRD.cdsRdv
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 785
    Height = 83
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    TabStop = True
    object Label1: TLabel
      Left = 5
      Top = 4
      Width = 65
      Height = 13
      Caption = 'Funcion'#225'rioId'
    end
    object Label2: TLabel
      Left = 77
      Top = 4
      Width = 55
      Height = 13
      Caption = 'Funcion'#225'rio'
      FocusControl = dbedtFuncionario
    end
    object Label15: TLabel
      Left = 372
      Top = 4
      Width = 66
      Height = 13
      Caption = 'Per'#237'odo Inicial'
    end
    object Label13: TLabel
      Left = 466
      Top = 4
      Width = 61
      Height = 13
      Caption = 'Per'#237'odo Final'
    end
    object Label3: TLabel
      Left = 5
      Top = 41
      Width = 69
      Height = 13
      Caption = 'Data Abertura'
    end
    object Label4: TLabel
      Left = 116
      Top = 40
      Width = 114
      Height = 13
      Caption = 'Data Fechamento Reais'
    end
    object Label5: TLabel
      Left = 489
      Top = 40
      Width = 89
      Height = 13
      Caption = 'Saldo em Reais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 371
      Top = 40
      Width = 81
      Height = 13
      Caption = 'Data M'#234's Aberto'
    end
    object Label9: TLabel
      Left = 593
      Top = 40
      Width = 81
      Height = 13
      Caption = 'Saldo em US$'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 236
      Top = 40
      Width = 107
      Height = 13
      Caption = 'Data Fechamento US$'
    end
    object wwdbcmbFuncionarioID: TwwDBComboDlg
      Left = 4
      Top = 18
      Width = 71
      Height = 20
      Hint = 'C'#243'digo do Funcion'#225'rio'
      OnCustomDlg = wwdbcmbFuncionarioIDCustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'RDVID'
      DataSource = dmRD.dsRdv
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object dbedtFuncionario: TDBEdit
      Left = 77
      Top = 18
      Width = 291
      Height = 21
      Hint = 'Nome do Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_NOMEFUNCIONARIO'
      DataSource = dmRD.dsRdv
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object wwdbdtpcktDtFech: TwwDBDateTimePicker
      Left = 115
      Top = 55
      Width = 108
      Height = 21
      Hint = 'Data de Fechamento]'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAFECHAMENTO'
      DataSource = dmRD.dsRdv
      Date = 37477.000000000000000000
      Epoch = 1950
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 488
      Top = 55
      Width = 96
      Height = 21
      Hint = 'Saldo'
      Color = clInactiveBorder
      DataField = 'VLRSALDO'
      DataSource = dmRD.dsRdv
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 371
      Top = 18
      Width = 92
      Height = 21
      Hint = 'Data Inicial '
      Date = 38158.678982083330000000
      Time = 38158.678982083330000000
      Checked = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 465
      Top = 18
      Width = 86
      Height = 21
      Hint = 'Data Final'
      Date = 38158.679181446760000000
      Time = 38158.679181446760000000
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 556
      Top = 16
      Width = 56
      Height = 24
      Caption = 'Filtrar'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADAADADA00000000000DADAD0F8F8F8F8F0000000800000008008F8F0F8F8F8
        F8F00F00008F811F8F8008F8F0F8F118F8F00F71108F8F118F800811F0F8F8F1
        18F00F71108F11111F800811F0F8F8F8F8F00F7110444444444008F8F0444444
        4440044440000000000004444444440ADADA00000000000DADAD}
    end
    object wwdbdtpcktDtMesAberto: TwwDBDateTimePicker
      Left = 370
      Top = 55
      Width = 108
      Height = 21
      Hint = 'Data de Abertura'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAMESABERTO'
      DataSource = dmRD.dsRdv
      Date = 40056.000000000000000000
      Epoch = 1950
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 7
    end
    object wwchbxBloqueado: TwwCheckBox
      Left = 641
      Top = 3
      Width = 101
      Height = 17
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Caption = ' Bloqueado'
      DataField = 'BLOQUEADO'
      DataSource = dmRD.dsRdv
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object dbedtDtAbertura: TDBEdit
      Left = 5
      Top = 55
      Width = 106
      Height = 21
      Color = clInactiveBorder
      DataField = 'DATAABERTURA'
      DataSource = dmRD.dsRdv
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 592
      Top = 55
      Width = 96
      Height = 21
      Hint = 'Saldo'
      Color = clInactiveBorder
      DataField = 'VLRSALDOUS'
      DataSource = dmRD.dsRdv
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 235
      Top = 54
      Width = 108
      Height = 21
      Hint = 'Data de Fechamento]'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAFECHAMENTOUS'
      DataSource = dmRD.dsRdv
      Epoch = 1950
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 11
    end
  end
  object pgctrlRDVItem: TPageControl
    Left = 0
    Top = 115
    Width = 785
    Height = 345
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Extrato do Funcion'#225'rio (INTERNO)'
      object tmbEdtListExtrato: TtmbEdicaoLista
        Left = 710
        Top = 0
        Width = 67
        Height = 317
        Align = alRight
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmRD.cdsRdvItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmRD.dsRdvItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Items RDV'
        object SpeedButton1: TSpeedButton
          Left = 2
          Top = 141
          Width = 64
          Height = 24
          Caption = 'Alterar'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
            5555557777777775F5555559999999505555555777777757FFF5555555555550
            0955555555555FF7775F55555555995501955555555577557F75555555555555
            01995555555555557F5755555555555501905555555555557F57555555555555
            0F905555555555557FF75555555555500005555555555557777555555555550F
            F05555555555557F57F5555555555008F05555555555F775F755555555570000
            05555555555775577555555555700007555555555F755F775555555570000755
            55555555775F77555555555700075555555555F75F7755555555570007555555
            5555577F77555555555500075555555555557777555555555555}
          NumGlyphs = 2
          OnClick = SpeedButton1Click
        end
        object tmbAjtgrdExtrato: tPanel1
          Left = 3
          Top = 117
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdRDVItens
          tmbCria = True
          tmbAjusta = False
        end
      end
      object dbgrdRDVItens: TDBGrid
        Left = 0
        Top = 0
        Width = 710
        Height = 317
        Align = alClient
        Color = clInfoBk
        DataSource = dmRD.dsRdvItem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdRDVItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAMOVIMENTOID'
            Title.Caption = 'Dt. Mov.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADOC'
            Title.Caption = 'Dt do Doc.'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_OPERACAO'
            Title.Caption = 'D/C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESPESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRSALDO'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMCHEGADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_KMRODADOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFECHAMENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACONTABILIZACAO'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOMOEDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADIANTAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_IDENTIFSOLIC'
            Title.Caption = 'Identif. Solicita'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Extrato Funcion'#225'rio (EXTERNO)'
      ImageIndex = 4
      object dbgrdExtratoUS: TDBGrid
        Left = 0
        Top = 0
        Width = 710
        Height = 317
        Align = alClient
        Color = clCream
        DataSource = dmRD.dsRDVItemUS
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdExtratoUSDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAMOVIMENTOID'
            Title.Caption = 'Dt. Mov.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADOC'
            Title.Caption = 'Dt do Doc.'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_OPERACAO'
            Title.Caption = 'D/C'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESPESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRSALDO'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMCHEGADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_KMRODADOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFECHAMENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACONTABILIZACAO'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOMOEDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADIANTAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
      object tmbEdtListExtratoUS: TtmbEdicaoLista
        Left = 710
        Top = 0
        Width = 67
        Height = 317
        Align = alRight
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmRD.cdsRDVItemUS
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmRD.dsRDVItemUS
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Items RDV'
        object SpeedButton2: TSpeedButton
          Left = 2
          Top = 142
          Width = 64
          Height = 23
          Caption = 'Alterar'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
            5555557777777775F5555559999999505555555777777757FFF5555555555550
            0955555555555FF7775F55555555995501955555555577557F75555555555555
            01995555555555557F5755555555555501905555555555557F57555555555555
            0F905555555555557FF75555555555500005555555555557777555555555550F
            F05555555555557F57F5555555555008F05555555555F775F755555555570000
            05555555555775577555555555700007555555555F755F775555555570000755
            55555555775F77555555555700075555555555F75F7755555555570007555555
            5555577F77555555555500075555555555557777555555555555}
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
        object tmbAjtgrdExtratoUS: tPanel1
          Left = 3
          Top = 117
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdExtratoUS
          tmbCria = True
          tmbAjusta = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Despesas Gerais de OS'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 63
        Width = 777
        Height = 254
        Align = alClient
        Color = clCream
        DataSource = dsConferencia
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 63
        Align = alTop
        Caption = ' Filtrar Despesas '
        TabOrder = 1
        object Label7: TLabel
          Left = 9
          Top = 19
          Width = 66
          Height = 13
          Caption = 'Per'#237'odo Inicial'
        end
        object Label8: TLabel
          Left = 101
          Top = 19
          Width = 61
          Height = 13
          Caption = 'Per'#237'odo Final'
        end
        object DateTimePicker3: TDateTimePicker
          Left = 7
          Top = 35
          Width = 92
          Height = 21
          Date = 38180.478576388890000000
          Time = 38180.478576388890000000
          TabOrder = 0
        end
        object DateTimePicker4: TDateTimePicker
          Left = 101
          Top = 35
          Width = 92
          Height = 21
          Date = 38180.478603402780000000
          Time = 38180.478603402780000000
          TabOrder = 1
        end
        object btnFiltroDespesas: TBitBtn
          Left = 196
          Top = 32
          Width = 56
          Height = 25
          Caption = 'Filtrar'
          TabOrder = 2
          OnClick = btnFiltroDespesasClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADA00000000000DADAD0F8F8F8F8F0000000800000008008F8F0F8F8F8
            F8F00F00008F811F8F8008F8F0F8F118F8F00F71108F8F118F800811F0F8F8F1
            18F00F71108F11111F800811F0F8F8F8F8F00F7110444444444008F8F0444444
            4440044440000000000004444444440ADADA00000000000DADAD}
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Lancamentos Pendentes'
      ImageIndex = 2
      object tmbEdtListLancamento: TtmbEdicaoLista
        Left = 710
        Top = 0
        Width = 67
        Height = 317
        Align = alRight
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmRD.cdsRdvEspelho
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmRD.dsRdvEspelho
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Espelho'
        object tmbAjtgrdLanc: tPanel1
          Left = 2
          Top = 116
          Width = 70
          Height = 24
          AutoSize = True
          BevelOuter = bvLowered
          TabOrder = 0
          tmbDBGrid = dbgrdPendentes
          tmbCria = True
          tmbAjusta = False
        end
      end
      object dbgrdPendentes: TDBGrid
        Left = 0
        Top = 0
        Width = 710
        Height = 317
        Align = alClient
        Color = clCream
        DataSource = dmRD.dsRdvEspelho
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATADOCID'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESPESA'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRSALDO'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Width = 294
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMCHEGADA'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_KMRODADOS'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADIANTAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Log'
      ImageIndex = 3
      object tmbEdtListLog: TtmbEdicaoLista
        Left = 710
        Top = 0
        Width = 67
        Height = 317
        Align = alRight
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmRD.cdsRdvLog
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmRD.dsRdvLog
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'RDV Log'
        object tPanel11: tPanel1
          Left = -3
          Top = 116
          Width = 70
          Height = 24
          AutoSize = True
          BevelOuter = bvLowered
          TabOrder = 0
          tmbDBGrid = dbgrdLog
          tmbCria = True
          tmbAjusta = False
        end
      end
      object dbgrdLog: TDBGrid
        Left = 0
        Top = 0
        Width = 710
        Height = 317
        Align = alClient
        Color = clCream
        DataSource = dmRD.dsRdvLog
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMRDVID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAEXCLUSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOGRDVID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_LOGRDVDESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAMOVIMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODESPESAOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_OPERACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESPESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRSALDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KMCHEGADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFECHAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADIANTAMENTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 781
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 768
      Height = 25
      UseSystemFont = False
      ActionManager = actmngRdv
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Spacing = 0
    end
  end
  object actmngRdv: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actImprimir
            Caption = '&Imprimir RDV'
            ImageIndex = 6
          end
          item
            Action = actMemo
            Caption = '&Memo - Acerto Caixa'
            ImageIndex = 2
          end
          item
            Action = actanalisarExcelItens
            ImageIndex = 3
          end
          item
            Action = actanalisarExcel
            Caption = 'E&xportar ( Despesas )'
            ImageIndex = 3
          end
          item
            Caption = '&ActionClientItem4'
            ImageIndex = 5
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actMemo
            Caption = '&Memo - Acerto Caixa'
            ImageIndex = 2
          end
          item
            Action = actImprimir
            Caption = '&Imprimir RDV'
            ImageIndex = 6
          end
          item
            Items = <
              item
                Action = actanalisarExcel
                Caption = '&Exportar ( Despesas )'
                ImageIndex = 3
              end
              item
                Action = actanalisarExcelItens
                ImageIndex = 3
              end>
            Caption = '&Exportar'
            ImageIndex = 3
          end>
      end
      item
        Items = <
          item
            Action = actImprimir
            Caption = '&Imprimir RDV'
            ImageIndex = 8
          end
          item
            Action = actMemo
            Caption = '&Memo - Acerto Caixa'
            ImageIndex = 2
          end
          item
            Action = actTransfIndividual
            Caption = '&Transf. Individual'
            ImageIndex = 5
          end
          item
            Action = actTransfLogIndividual
            Caption = 'T&ransf Individual LOG'
            ImageIndex = 9
          end
          item
            Items = <
              item
                Action = actanalisarExcel
                Caption = '&Exportar ( Despesas )'
                ImageIndex = 3
              end
              item
                Action = actanalisarExcelItens
                Caption = 'E&xportar  '#205'tens Desp. (INTERNO)'
                ImageIndex = 3
              end
              item
                Action = Action1
                ImageIndex = 3
              end
              item
                Action = actExportarLog
                Caption = 'Ex&portar LOG'
                ImageIndex = 3
              end>
            Caption = '&Exportar'
            ImageIndex = 3
          end
          item
            Action = actAtualDtFech
            Caption = '&Atual. Dt. Fech'
            ImageIndex = 5
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 656
    Top = 77
    StyleName = 'XP Style'
    object actImprimir: TAction
      Category = 'Rdv'
      Caption = 'Imprimir RDV'
      ImageIndex = 8
      OnExecute = actImprimirExecute
    end
    object actanalisarExcel: TAction
      Category = 'Exportar'
      Caption = 'Exportar ( Despesas )'
      ImageIndex = 3
      OnExecute = actanalisarExcelExecute
    end
    object actanalisarExcelItens: TAction
      Category = 'Exportar'
      Caption = 'Exportar  '#205'tens Desp. (INTERNO)'
      ImageIndex = 3
      OnExecute = actanalisarExcelItensExecute
    end
    object actMemo: TAction
      Category = 'Rdv'
      Caption = 'Memo - Acerto Caixa'
      ImageIndex = 2
      OnExecute = actMemoExecute
    end
    object actTransfIndividual: TAction
      Category = 'Transfer'#234'ncia'
      Caption = 'Transf. Individual'
      Hint = 'Transferir individualmente os Empenho do RDV'
      ImageIndex = 5
      OnExecute = actTransfIndividualExecute
    end
    object actTransfLogIndividual: TAction
      Category = 'Transfer'#234'ncia'
      Caption = 'Transf Individual LOG'
      Hint = 'Transfer'#234'ncia individual do Log'
      ImageIndex = 9
      OnExecute = actTransfLogIndividualExecute
    end
    object Action1: TAction
      Category = 'Exportar'
      Caption = 'Exportar  '#205'tens Desp. (EXTERNO)'
      ImageIndex = 3
      OnExecute = Action1Execute
    end
    object actExportarLog: TAction
      Category = 'Exportar'
      Caption = 'Exportar LOG'
      ImageIndex = 3
      OnExecute = actExportarLogExecute
    end
    object actAtualDtFech: TAction
      Category = 'Rdv'
      Caption = 'Atual. Dt. Fech'
      Hint = 'Atualizar Data de Fechamento'
      ImageIndex = 5
      OnExecute = actAtualDtFechExecute
    end
  end
  object ImageList1: TImageList
    Left = 624
    Top = 77
    Bitmap = {
      494C01010A000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000BF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006C6A
      6A00AAA5A500A59F9F006C6A6A006C6A6A006C6A6A00E6E3E1006C6A6A006C6A
      6A006C6A6A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000BF000000FF000000BF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006C6A6A00DBD9
      D800A59F9F00A59F9F00A59F9F0036363600353535006C6A6A00C1BFBE00E6E3
      E100B8B6B6006C6A6A006C6A6A006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000BF000000BF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6A6A00D5D3D200CAC8
      C700948D8C00948D8C00948D8C003C363B000A0A0A00070707000B0B0B000707
      07007C6F6A00BCBABA006C6A6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000BF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6A6A00CAC8C700CAC8C700948D
      8C00D8D6D500CECBCB00BFBDBC00AFAFAF00A59F9F00948C8A005B5A5A000707
      070009090900080808006C6A6A00786D6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C6A6A00CAC8C700948D8C00F1EE
      E900F8F3EC00F8F3EC00E6E3E100E0DEDD00E0DEDD00D1CFCF00BFBDBC00ACAB
      AB00948C8A00575555007C6F6A00786D6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006C6A6A006C6A6A00EFEC
      E700ADA8A8007C6F6A00948C8A009993920096908F009B969500999392009F9A
      9A00BCBABA00D1CFCF00C4C1C1006C6A6A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000BF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006C6A
      6A00B7847E00A47E74008B766D007C6F6A0067656500786D6B00948D8C00A8A2
      A200CECBCB00C4C1C1006C6A6A000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000BF000000BF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B8837E00FBDBB700F8D1A600EAC9A900B7847E00B7847E00B8837E008172
      6B006C6A6A006C6A6A000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000BF000000FF000000BF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B8837E00FCDCBA00F8D3AA00F7D0A500F7D0A500F7D0A500B8837E000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000BF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B784
      7E00FCE7CF00FBE1C300F9D8B300F8D1A600F7D0A500B8837E00000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8837E00F8F3
      EC00F8F3EC00FBEBD700FCE4CA00FCDEBD00EFCBA500B8837E00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8837E00B883
      7E00B8837E00F9EFE100FCE7CF00FBE1C300B8837E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8837E00B8837E00B8837E000000000000000000000000000000
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
      0000000000000000000080808000800000008000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080000000808080008080800080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD000000BD000000BD000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      840084848400848484000000000000000000000000000000000000000000BF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000000000000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD000000BD000000BD000000BD000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      840084848400848484000000000000000000000000000000000000000000BF00
      0000BF00000000000000000000000000000000BFBF0000BFBF0000BFBF0000BF
      BF0000BFBF000000000000000000000000000000000000000000000000000000
      0000808080008000000000000000000000000000000000000000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BD000000BD000000BD000000FFFFFF00BD000000BD00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      000084848400848484000000000000000000BF000000BF000000BF000000BF00
      0000BF000000BF00000000000000000000000000000000000000000000000000
      0000000000000000000000BFBF00000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00BD000000BD000000BD000000FFFFFF000000000000000000BD00
      0000BD000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      000084848400848484000000000000000000000000000000000000000000BF00
      0000BF000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000808080000000000000000000000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B00BD000000FFFFFF00FFFFFF0000000000000000000000
      0000BD000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000848484000000000000BDBD0000BDBD0000BDBD000000
      000084848400848484000000000000000000000000000000000000000000BF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000BD000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF0000000000000000000000
      00000000000000000000BD000000FFFFFF000000000000000000000000000000
      0000000000000000000000FFFF000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      8000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF008000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000BD0000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      000084848400848484000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008000
      0000800000000000000000000000000000000000000000000000000000008000
      0000808080000000000000000000000000000000000000000000FFFFFF007B7B
      7B007B7B7B00000000000000000000000000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000000000000000000000000000000000000000000008000
      0000808080000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF00000000000000000000BDBD000000
      00008484840084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000000000000000000000000000000000008000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      00008484840000000000000000000000000000000000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000000000000000000000000000000000000800000008080
      8000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      84000000000000000000000000000000000000000000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000000080808000000000000000000000000000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080000000808080008080800080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000800000008000000080808000000000000000
      000000000000000000000000000000000000000000007B0000007B3900007B39
      00007B3900007B3900007B3900007B3900007B39000000000000000000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF390000FF7B
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B00009C9C0000BD00
      0000FF000000FF000000FF0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF000000FF39
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B0000BDBD00006363
      0000BD000000FF000000FF0000007B0000000000000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B3900007B390000FFBD0000FFBD0000FFBD00007B7B0000BDBD00008484
      0000636300007B0000007B000000000000000000000000000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000BD000000BD000000BD00
      0000BD000000000000000000000000000000000000000000000000000000BDBD
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF000000
      00007B7B7B0000000000000000000000000000000000BDBD000000000000FFFF
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004242420042424200424242007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007B7B7B0000000000BDBD000000000000FFFF00000000
      000000000000BD0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0021210000000000008484840084848400848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B00FFFFFF007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF000000
      00007B7B7B007B7B7B0000000000BDBD000000000000FFFF0000FFFF00000000
      0000FFFFFF00BD0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005A5A0000636300006363630084848400848484007B7B00009C9C00002121
      21008484000042424200FFFFFF00FFFFFF008400000084000000000000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF0000000000BDBD000000000000FFFF0000FFFF0000000000000000
      000000000000BD00000000000000000000000000000000000000000000000000
      00007B7B0000DEDE00006363000063636300848484007B7B00009C9C00003939
      39008484000042424200FFFFFF00FFFFFF008400000000000000000000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B007B7B7B00FFFFFF007B7B7B0000000000FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF000000
      00007B7B7B000000000000000000FFFF0000FFFF000000000000FFFF00000000
      000000000000BD00000000000000000000005A5A0000BDBD0000BDBD0000BDBD
      0000DEDE0000FFFF0000DEDE000063630000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF000000000000FFFFFF0000000000FFFF
      000000000000BD00000000000000000000007B7B0000FFFF3900FFFF7B00FFFF
      7B00FFFF7B00FFFFBD00FFFF39007B7B0000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF008400000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF000000
      00007B7B7B0000000000000000000000000000000000FFFFFF00000000000000
      000000000000BD00000000000000000000000000000000000000000000000000
      00007B7B0000FFFF39007B7B000063636300848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BD0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B00007B7B00006363630084848400848484007B7B3900BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000FFFFFF00BD00
      0000BD000000FFFFFF00BD000000BD000000BD000000FFFFFF00BD000000BD00
      0000FFFFFF00BD0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00212100000000000084848400848484008484840063636300BDBD7B009C9C
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BD000000BD000000BD00
      0000BD000000BD000000BD000000BD000000BD000000BD000000BD000000BD00
      0000BD000000BD0000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400848484008484840063636300BDBD
      7B009C9C000042424200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000042424200424242004242420042424200424242002121
      21007B7B390021212100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFC0700000000FFFFFC0100000000
      FFFFFC0100000000E007FC0000000000C000FC00000000008001FFF000000000
      0000FFFC000000000000F7FC000000008000E7F000000000E001C00000000000
      F003800000000000F01F000100000000E03F800300000000C03FC00700000000
      C07FE7FF00000000F8FFF7FF00000000FFFFFFFFFFFFFC3FFF9FFE0FFF03F81F
      FF0FF803EE01FBDFFE0FF803E600F3CF8007F0030200F7EF8023F003E654FFE7
      8033FC03EE0400018039FC03FF01FFFF803CF803C1030001803EF003C181E7E7
      873FC00301C1E3E7803FC00301FFE1EF857FF00701FFE3CF80FFF80F03FFF9DF
      81FFFC3F07FFF81FFFFFFFFF0FFFFC3F8021FFFFFFFFFFFF0000FFFFFF1FFFFF
      0000EEFBFE3FFFE78001E6C7C07F80030000C337BCFF8005000081A360008003
      0000033D400080030000261D4000800B00006E3E4000800300007E3980008003
      00007E0DC00080030000BE02C00080030000FF00C00080030000FF83C0008003
      0000FFFFC000FFFF0000FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cdsConferencia: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 409
    Top = 468
  end
  object dsConferencia: TDataSource
    DataSet = cdsConferencia
    Left = 488
    Top = 468
  end
end
