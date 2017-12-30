object frmFI: TfrmFI
  Left = 194
  Top = 109
  ActiveControl = wwDBComboDlg1
  Caption = 'Financeiro'
  ClientHeight = 546
  ClientWidth = 764
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 29
    Width = 764
    Height = 4
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 230
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 526
    Width = 764
    Height = 20
    Panels = <
      item
        Width = 280
      end
      item
        Width = 200
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 494
    Width = 764
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 764
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
          Width = 541
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 65
        end>
      TtmbCria = True
      TtmbClientDataSet = dmFI.cdsFI
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object pgctrlOSPastas: TPageControl
    Left = 0
    Top = 33
    Width = 764
    Height = 461
    Hint = 'Dados Adicionais da Ordem de Servi'#231'o'
    ActivePage = tbshtCliente
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    HotTrack = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object tbshtCliente: TTabSheet
      Caption = 'Informa'#231#245'es do T'#237'tulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object grpbxDadosCliente: TGroupBox
        Left = 0
        Top = 0
        Width = 756
        Height = 553
        Hint = 'Dados do Cliente para abertura da Ordem de Servi'#231'o'
        Align = alTop
        Caption = 'Dados do &FI'
        TabOrder = 0
        object Label2: TLabel
          Left = 7
          Top = 192
          Width = 68
          Height = 13
          Hint = 'Tipo da Ordem de Servi'#231'o'
          Caption = 'Fornecedor Id'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 226
          Top = 15
          Width = 39
          Height = 13
          Caption = 'Usu'#225'rio '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label10: TLabel
          Left = 109
          Top = 15
          Width = 66
          Height = 13
          Hint = 'Data de Abertura da Ordem de Servi'#231'o'
          Caption = 'Data Registro'
          FocusControl = dbedtDtAbertura
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 7
          Top = 15
          Width = 23
          Height = 13
          Hint = 
            'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
            'momento em que se inserir um novo registro'
          Caption = 'FI Id'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 7
          Top = 99
          Width = 33
          Height = 13
          Caption = 'Filial Id'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 5
          Top = 63
          Width = 53
          Height = 13
          Caption = 'Empresa Id'
        end
        object Label1: TLabel
          Left = 7
          Top = 122
          Width = 37
          Height = 13
          Caption = 'A'#231#227'o Id'
        end
        object Label4: TLabel
          Left = 7
          Top = 215
          Width = 46
          Height = 13
          Caption = 'Nr.Doc Id'
          FocusControl = DBEdit1
        end
        object Label6: TLabel
          Left = 122
          Top = 215
          Width = 77
          Height = 13
          Caption = 'Data Emiss'#227'o Id'
        end
        object Label5: TLabel
          Left = 239
          Top = 215
          Width = 47
          Height = 13
          Caption = 'S'#233'rie Doc'
          FocusControl = DBEdit4
        end
        object Label9: TLabel
          Left = 382
          Top = 215
          Width = 80
          Height = 13
          Caption = 'Data Venc. Doc.'
        end
        object Label30: TLabel
          Left = 7
          Top = 265
          Width = 71
          Height = 13
          Hint = 'C'#243'digo do Cliente  autom'#225'tico do Aparelho / Componente'
          Caption = 'Cond. Pagto Id'
        end
        object Label16: TLabel
          Left = 3
          Top = 317
          Width = 41
          Height = 13
          Caption = 'Hist'#243'rico'
          FocusControl = DBMemo1
        end
        object Label11: TLabel
          Left = 7
          Top = 295
          Width = 47
          Height = 13
          Caption = 'Valor Doc'
          FocusControl = DBEdit2
        end
        object Label14: TLabel
          Left = 283
          Top = 295
          Width = 63
          Height = 13
          Caption = 'Valor L'#237'quido'
          FocusControl = DBEdit9
        end
        object wwDBComboDlg1: TwwDBComboDlg
          Left = 79
          Top = 193
          Width = 74
          Height = 20
          OnCustomDlg = wwDBComboDlg1CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'FORNECEDORID'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit12: TDBEdit
          Left = 159
          Top = 193
          Width = 586
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_NOMEFORNECEDOR'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 226
          Top = 27
          Width = 95
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'USUARIO'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 7
          Top = 27
          Width = 98
          Height = 21
          Hint = 
            'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
            'momento em que se inserir um novo registro'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          Ctl3D = True
          DataField = 'FIID'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object dbedtDtAbertura: TDBEdit
          Left = 109
          Top = 27
          Width = 79
          Height = 21
          Hint = 'Data de Abertura da Ordem de Servi'#231'o'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          Ctl3D = True
          DataField = 'DATAREGISTRO'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 79
          Top = 95
          Width = 74
          Height = 21
          OnCustomDlg = wwDBComboDlg2CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'FILIALID'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit17: TDBEdit
          Left = 159
          Top = 95
          Width = 586
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_NOMEFILIAL'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 79
          Top = 63
          Width = 74
          Height = 20
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'EMPRESAID'
          DataSource = dmFI.dsFI
          TabOrder = 7
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit5: TDBEdit
          Left = 159
          Top = 63
          Width = 586
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_NOMEEMPRESA'
          DataSource = dmFI.dsFI
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 159
          Top = 122
          Width = 380
          Height = 21
          DataField = 'L_DESCRICAOACAO'
          DataSource = dmFI.dsFI
          TabOrder = 9
        end
        object wwDBComboDlg5: TwwDBComboDlg
          Left = 79
          Top = 122
          Width = 74
          Height = 20
          OnCustomDlg = wwDBComboDlg5CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'ACAOID'
          DataSource = dmFI.dsFI
          TabOrder = 10
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit1: TDBEdit
          Left = 7
          Top = 231
          Width = 111
          Height = 21
          DataField = 'NUMDOCID'
          DataSource = dmFI.dsFI
          TabOrder = 11
        end
        object DBEdit4: TDBEdit
          Left = 239
          Top = 231
          Width = 136
          Height = 21
          DataField = 'SERIEDOC'
          DataSource = dmFI.dsFI
          TabOrder = 12
        end
        object wwDBComboDlg8: TwwDBComboDlg
          Left = 79
          Top = 262
          Width = 74
          Height = 21
          OnCustomDlg = wwDBComboDlg8CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CONDPAGTOID'
          DataSource = dmFI.dsFI
          TabOrder = 13
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit38: TDBEdit
          Left = 159
          Top = 265
          Width = 586
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_DESCRICAOCONDPAGTO'
          DataSource = dmFI.dsFI
          ReadOnly = True
          TabOrder = 14
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 124
          Top = 231
          Width = 109
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAEMISSAOID'
          DataSource = dmFI.dsFI
          Epoch = 1950
          ShowButton = True
          TabOrder = 15
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 382
          Top = 231
          Width = 131
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAVENDOC'
          DataSource = dmFI.dsFI
          Epoch = 1950
          ShowButton = True
          TabOrder = 16
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 336
          Width = 750
          Height = 94
          DataField = 'HISTORICO'
          DataSource = dmFI.dsFI
          TabOrder = 17
        end
        object DBCheckBox1: TDBCheckBox
          Left = 500
          Top = 215
          Width = 147
          Height = 17
          Caption = 'Documento Pagto '#224' Vista'
          DataField = 'DOCPGTOVISTA'
          DataSource = dmFI.dsFI
          TabOrder = 18
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit2: TDBEdit
          Left = 79
          Top = 295
          Width = 179
          Height = 21
          DataField = 'VLRDOC'
          DataSource = dmFI.dsFI
          TabOrder = 19
        end
        object DBEdit9: TDBEdit
          Left = 361
          Top = 295
          Width = 179
          Height = 21
          DataField = 'VLRLIQUIDO'
          DataSource = dmFI.dsFI
          TabOrder = 20
        end
        object GroupBox3: TGroupBox
          Left = 545
          Top = 110
          Width = 186
          Height = 32
          Caption = 'A'#231#227'o do Documento'
          TabOrder = 21
          object DBCheckBox4: TDBCheckBox
            Left = 183
            Top = 12
            Width = 170
            Height = 17
            Caption = 'Movimento Contas a Receber'
            DataField = 'L_MOVCONTASRECEBER'
            DataSource = dmFI.dsFI
            Enabled = False
            TabOrder = 0
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 12
            Width = 170
            Height = 17
            Caption = 'Movimento Contas a Pagar'
            DataField = 'L_MOVCONTASPAGAR'
            DataSource = dmFI.dsFI
            Enabled = False
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 359
            Top = 12
            Width = 170
            Height = 17
            Caption = 'Movimento Informativo'
            DataField = 'L_MOVINFORMATIVO'
            DataSource = dmFI.dsFI
            Enabled = False
            TabOrder = 2
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 339
          Top = 12
          Width = 213
          Height = 36
          Caption = 'Tipo Movimento'
          Columns = 3
          DataField = 'TIPOMOVIMENTO'
          DataSource = dmFI.dsFI
          Items.Strings = (
            'Banco '
            'Caixa'
            'Provis'#227'o')
          ParentBackground = True
          TabOrder = 22
          Values.Strings = (
            'B'
            'C'
            'P')
        end
      end
    end
    object tbshtHoras: TTabSheet
      Caption = 'Parcela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object tmbedtListParcela: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 433
        Hint = 'Horas'
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
        TtmbClientDataSet = dmOS.cdsOsHora
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsOsHora
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'OSHora'
        object tPanel11: tPanel1
          Left = 1
          Top = 117
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdHoras
          tmbCria = True
          tmbAjusta = True
        end
      end
      object dbgrdHoras: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 433
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmFI.dsFIParcela
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PARCELAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTVENCIMENTO'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPRORROGACAO'
            Width = 141
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMAPAGTOID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRFORMAPAGTO'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOCOBRANCAID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRTIPOCOBRANCA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANCOID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEBANCO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NUMBANCO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_AGENCIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CONTA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGOBARRASID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITULOCONCESSIONARIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LINHADIGITAVEL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENCIACODIGOCEDENTE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOSSONUMERO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRLIQDOC'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGOBARRAS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsFIParcelaClasse'
            Width = 64
            Visible = True
          end>
      end
    end
    object tbshtMaterial: TTabSheet
      Caption = 'Retens'#227'o'
      ImageIndex = 7
      object dbgrdOSMaterial: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 433
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmFI.dsFIRetencao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
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
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPOSTORETIDOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRIMPOSTO'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_ALIQIMPOSTO'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRLIQUIDOID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 64
            Visible = True
          end>
      end
      object tmbEdtListRetensao: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 433
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
        TtmbClientDataSet = dmOS.cdsOSMaterial
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsOSMaterial
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'OSMaterial'
        object tPanel13: tPanel1
          Left = 0
          Top = 118
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdOSMaterial
          tmbCria = True
          tmbAjusta = True
        end
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 764
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 760
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 747
      Height = 25
      UseSystemFont = False
      ActionManager = actmngManutencao
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
  object ImageList1: TImageList
    Left = 480
    Top = 362
    Bitmap = {
      494C010110001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
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
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000800000008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000BF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000C0C0C000FF00
      0000C0C0C000FF000000C0C0C000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C000000000000000000000000000FFFFFF0000008000000080000000
      80000000800000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000BF000000BF000000000000000000000000000000FFFFFF008080
      8000808080008080800080808000FFFFFF00FFFFFF00FF00FF00C0C0C000FF00
      FF00C0C0C000FF00FF00C0C0C000FFFFFF0000000000C0C0C000000000000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF00C0C0C000FF00
      0000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000FFFF
      FF00FFFFFF00C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C000C0C0
      C00000000000000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000BF000000BF000000000000000000000000000000FFFFFF008080
      8000808080008080800080808000FFFFFF00FFFFFF00FF00FF00FFFFFF00C0C0
      C000C0C0C0000000000000000000000000000000000000000000FF00FF00FF00
      FF00FFFFFF0000000000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800080808000C0C0C000C0C0
      C00000000000C0C0C0000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      000000000000BF00000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C0C0C000FF00FF00FF00FF00FF00
      FF00FF00FF0000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C00000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000808080008080800080808000FFFFFF00FFFFFF00C0C0C000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00FF00FF00
      FF0000000000C0C0C000C0C0C0000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C00000000000FFFFFF0000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF
      0000FFFF000000000000FFFF0000C0C0C0000000000000000000FFFF0000FFFF
      0000FFFFFF0000000000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF00C0C0C000C0C0C00000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000FFFF0000FFFF
      0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF00000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000FFFF0000FFFF000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000FFFFFF0000000000C0C0C000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C0C0C0000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
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
      00000000000000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000FF00
      0000FF00000000000000C0C0C000FFFFFF00C0C0C0000000BF000000BF00FFFF
      FF00C0C0C000FFFFFF00C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      00008080800000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0000000000FFFFFF00C0C0C000FFFFFF000000BF000000BF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000000000008080800000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      BF000000BF0000000000C0C0C000FFFFFF00C0C0C000FFFFFF000000BF000000
      BF00C0C0C000FFFFFF00C0C0C00000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF008080
      8000FFFFFF0000FFFF0000000000000000008080800000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF000000
      BF00FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF000000
      BF000000BF00C0C0C000FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000FFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      BF000000BF0000000000C0C0C000FFFFFF000000BF000000BF000000BF000000
      BF000000BF00FFFFFF00C0C0C0000000000000000000FFFFFF00000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000FFFFFF000000
      000000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      BF00FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000C0C0C0000000
      BF000000BF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000FFFFFF0000FF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF0000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
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
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B000000000000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF0000000000000000000000000000000000FFFFFF007B0000007B00
      0000FFFFFF007B000000FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B007B7B7B0000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00000000007B7B7B0000000000000000000000
      00007B7B7B00000000007B7B7B007B7B7B000000000000000000000000000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B0000007B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000007B00
      0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF000000000000007B0000007B000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000007B0000007B0000007B00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007B0000007B00
      00007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      000000000000000000000000000000000000000000007B0000007B0000007B00
      00007B0000007B7B7B00FFFFFF000000FF000000FF00FFFFFF00000000000000
      0000000000007B7B7B00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF007B0000007B00
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B00FFFFFF000000
      0000000000000000000000000000000000007B0000007B0000007B0000000000
      00007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF000000000000000000000000007B7B7B007B000000000000000000
      0000000000007B0000007B000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B0000007B7B7B00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B0000007B3900007B39
      00007B3900007B3900007B3900007B3900007B39000000000000000000007B00
      00007B0000007B0000007B000000000000000000000000000000000000000000
      0000000000007B7B7B007B0000007B0000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B0000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF390000FF7B
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B00009C9C0000BD00
      0000FF000000FF000000FF0000007B0000000000000000000000000000000000
      00007B7B7B007B0000007B7B7B007B7B7B007B0000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B0000007B7B7B007B7B7B007B0000007B7B7B000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B000000FF000000FF000000FF39
      0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B0000BDBD00006363
      0000BD000000FF000000FF0000007B0000000000000000000000000000000000
      00007B000000000000000000000000000000000000007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000000000000000000000000000000000007B0000000000
      000000000000000000000000000000000000000000000000000000000000BD00
      0000BD00000000000000000000000000000000BDBD0000BDBD0000BDBD0000BD
      BD0000BDBD00000000000000000000000000000000007B0000007B0000007B00
      00007B3900007B390000FFBD0000FFBD0000FFBD00007B7B0000BDBD00008484
      0000636300007B0000007B000000000000000000000000000000000000007B7B
      7B007B000000000000000000000000000000000000007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B000000000000000000000000000000000000007B0000007B7B
      7B0000000000000000000000000000000000BD000000BD000000BD000000BD00
      0000BD000000BD00000000000000000000000000000000000000000000000000
      0000000000000000000000BDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000007B00
      00000000000000000000000000000000000000000000000000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000007B00
      000000000000000000000000000000000000000000000000000000000000BD00
      0000BD000000000000000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000004242420042424200424242007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000000000007B7B7B007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B7B7B00000000000000000000000000000000000000000000000000BD00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0021210000000000008484840084848400848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF007B7B7B007B7B7B007B7B7B007B00
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF005A5A0000636300006363630084848400848484007B7B00009C9C00002121
      21008484000042424200FFFFFF00FFFFFF0000000000000000007B7B7B007B00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      00007B7B0000DEDE00006363000063636300848484007B7B00009C9C00003939
      39008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B007B00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF007B00
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000005A5A0000BDBD0000BDBD0000BDBD
      0000DEDE0000FFFF0000DEDE000063630000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000000000007B7B7B007B00
      00000000000000000000000000000000000000000000000000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000000000000000000000000000000000000000000000000000007B00
      00007B7B7B000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B0000FFFF3900FFFF7B00FFFF
      7B00FFFF7B00FFFFBD00FFFF39007B7B0000636363007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF0000000000000000007B7B7B007B00
      000000000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000007B00
      00007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B0000FFFF39007B7B000063636300848484007B7B0000BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000007B00
      0000000000000000000000000000000000007B0000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B0000007B000000000000000000000000000000000000007B00
      00000000000000000000000000000000000000000000FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007B7B00007B7B00006363630084848400848484007B7B3900BDBD00008484
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000007B7B
      7B007B000000000000000000000000000000000000007B0000007B0000007B00
      0000000000000000000000000000000000000000000000000000000000007B00
      00007B0000007B000000000000000000000000000000000000007B0000007B7B
      7B000000000000000000000000000000000000000000FFFFFF007B7B7B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00212100000000000084848400848484008484840063636300BDBD7B009C9C
      00008484000042424200FFFFFF00FFFFFF000000000000000000000000000000
      00007B0000000000000000000000000000007B7B7B007B000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B7B7B000000000000000000000000007B0000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400848484008484840063636300BDBD
      7B009C9C000042424200FFFFFF00FFFFFF000000000000000000000000000000
      00007B7B7B007B0000007B7B7B007B7B7B007B0000007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B0000007B7B7B007B7B7B007B0000007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000042424200424242004242420042424200424242002121
      21007B7B390021212100FFFFFF00FFFFFF000000000000000000000000000000
      0000000000007B7B7B007B0000007B0000007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B0000007B0000007B7B7B00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000FFFF0000FF800000C0070000FB80
      000080030000F9800000000100008080000000010000F980000000010000FB80
      000000000000FF80000000000000E080000080000000E0800000C000000080FF
      0000E001000080FF0000E007000080FF1800F007000081FF5E00F003000083FF
      FF38F803000087FFFFF9FFFF0000FFFFF800FFFFFFFFFFFFF800FFFFF3FFF3FF
      8000FFFFF001F0FF8000FFFFE201E03F8000FFFF8201840F8000C183C001C10F
      8000AA298201804F80004004C001C00F800007E28003C00F80004004C007800F
      8000AA29800FC00F8000C183C00FF0178000FFFFF8BFFE61801FFFFFFE7FFFF7
      801FFFFFFFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFF55FFFFFFFFFFFFFFFCFF83F
      8007FFF9F007E00F8007E7FFF007C0078003C3F3F00380038001C3E7F0038003
      8070E1C7F00100018078F08FF00000018068F81FE00000018048FC3FC0010001
      8083F81F800300018187F09F10078003838FC1C7380F800387DF83E3FC1FC007
      FFFF8FF1FEFFE00FFFFFFFFFFF7FF83FFFFF8021F87FFC3FFF030000F03FF81F
      EE010000F7BFFBDFE6008001E79FF3CF02000000EFDFF7EFE6540000CFFFFFE7
      EE04000000010001FF010000CFFFFFFFC103000000010001C1810000CFCFE7E7
      01C10000CF8FE3E701FF0000EF0FE1EF01FF0000E78FE3CF03FF0000F73FF9DF
      07FF0000F03FF81F0FFF0000F87FFC3F00000000000000000000000000000000
      000000000000}
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actDerivaOS
                Caption = '&OS Derivada'
                ImageIndex = 10
              end
              item
                Action = actAbreOS
                Caption = '&Abrir OS Fechada'
                ImageIndex = 4
              end>
            Caption = '&Financeiro'
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 368
    Top = 364
    StyleName = 'XP Style'
    object actDerivaOS: TAction
      Category = 'Financeiro'
      Caption = 'OS Derivada'
      Hint = 'Gerar OS Derivada'
      ImageIndex = 10
    end
    object actAbreOS: TAction
      Category = 'Financeiro'
      Caption = 'Abrir OS Fechada'
      Hint = 'Abrir OS Fechada'
      ImageIndex = 4
    end
  end
end
