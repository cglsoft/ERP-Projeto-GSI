object frmAparelho: TfrmAparelho
  Left = 160
  Top = 118
  Caption = 'Aparelhos'
  ClientHeight = 514
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 214
    Width = 708
    Height = 248
    ActivePage = tbshtDadosInst
    Align = alClient
    TabOrder = 0
    object tbshtDadosInst: TTabSheet
      Caption = 'Dados do Aparelho'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 410
        Height = 210
        Caption = 'Dados de Instal'#231#227'o do Aparelho'
        TabOrder = 0
        object Label7: TLabel
          Left = 6
          Top = 25
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label8: TLabel
          Left = 220
          Top = 25
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit6
        end
        object Label11: TLabel
          Left = 6
          Top = 50
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit9
        end
        object Label12: TLabel
          Left = 6
          Top = 73
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label18: TLabel
          Left = 6
          Top = 137
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label19: TLabel
          Left = 6
          Top = 163
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit19
        end
        object Label21: TLabel
          Left = 6
          Top = 189
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit21
        end
        object Label20: TLabel
          Left = 343
          Top = 163
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit20
        end
        object Label5: TLabel
          Left = 96
          Top = 86
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 80
          Top = 24
          Width = 113
          Height = 20
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CEPID'
          DataSource = dmOS.dsAparelho
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit6: TDBEdit
          Left = 264
          Top = 22
          Width = 132
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmOS.dsAparelho
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 80
          Top = 46
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmOS.dsAparelho
          TabOrder = 2
        end
        object DBMemo1: TDBMemo
          Left = 80
          Top = 70
          Width = 316
          Height = 61
          DataField = 'ENDERECO'
          DataSource = dmOS.dsAparelho
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 80
          Top = 136
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmOS.dsAparelho
          TabOrder = 4
        end
        object DBEdit19: TDBEdit
          Left = 80
          Top = 161
          Width = 258
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmOS.dsAparelho
          TabOrder = 5
        end
        object DBEdit21: TDBEdit
          Left = 80
          Top = 185
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = dmOS.dsAparelho
          TabOrder = 7
        end
        object DBEdit20: TDBEdit
          Left = 365
          Top = 160
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmOS.dsAparelho
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 413
        Top = 0
        Width = 283
        Height = 67
        Caption = 'Dados de Contrato/ Garantia'
        TabOrder = 3
        object Label4: TLabel
          Left = 6
          Top = 20
          Width = 43
          Height = 13
          Caption = 'Contrato'
        end
        object Label6: TLabel
          Left = 69
          Top = 21
          Width = 51
          Height = 13
          Caption = 'Data In'#237'cio'
        end
        object Label9: TLabel
          Left = 176
          Top = 20
          Width = 42
          Height = 13
          Caption = 'Data Fim'
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 35
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTRATOID'
          DataSource = dmOS.dsAparelho
          TabOrder = 0
        end
      end
      object wwDBDateTimePicker3: TwwDBDateTimePicker
        Left = 480
        Top = 34
        Width = 103
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATACONTGARANTIAINI'
        DataSource = dmOS.dsAparelho
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
        OnClick = wwDBDateTimePicker3Click
      end
      object wwDBDateTimePicker4: TwwDBDateTimePicker
        Left = 587
        Top = 33
        Width = 103
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATACONTGARANTIAFIM'
        DataSource = dmOS.dsAparelho
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
      end
    end
    object tbshtTubos: TTabSheet
      Caption = 'Tubo Ativo'
      ImageIndex = 1
      object TmbEdtListTubo: TtmbEdicaoLista
        Left = 633
        Top = 0
        Width = 67
        Height = 220
        Align = alRight
        BevelInner = bvRaised
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmOS.cdsTubo
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsTubo
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Tubo'
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 633
        Height = 220
        Align = alClient
        Color = clCream
        DataSource = dmOS.dsTubo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tbshtTuboOff: TTabSheet
      Caption = 'Tubo Inativo'
      ImageIndex = 2
      object TmbEdtListTuboInativo: TtmbEdicaoLista
        Left = 633
        Top = 0
        Width = 67
        Height = 220
        Align = alRight
        BevelInner = bvRaised
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmOS.cdsTuboInativo
        TtmbVertical = True
        TtmbTamMax = False
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'TuboInativo'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 633
        Height = 220
        Align = alClient
        Color = clCream
        DataSource = dmOS.dsTuboInativo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Mala Direta'
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 410
        Height = 220
        Align = alLeft
        Caption = 'Dados de Instal'#231#227'o do Aparelho'
        TabOrder = 0
        object Label27: TLabel
          Left = 6
          Top = 25
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label28: TLabel
          Left = 220
          Top = 25
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit13
        end
        object Label29: TLabel
          Left = 6
          Top = 50
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit14
        end
        object Label30: TLabel
          Left = 6
          Top = 73
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label31: TLabel
          Left = 6
          Top = 137
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit24
        end
        object Label32: TLabel
          Left = 6
          Top = 163
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit25
        end
        object Label33: TLabel
          Left = 6
          Top = 189
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit26
        end
        object Label34: TLabel
          Left = 343
          Top = 163
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit27
        end
        object Label35: TLabel
          Left = 96
          Top = 86
          Width = 33
          Height = 13
          Caption = 'Cliente'
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 80
          Top = 24
          Width = 113
          Height = 20
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CEPMDID'
          DataSource = dmOS.dsAparelho
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit13: TDBEdit
          Left = 264
          Top = 22
          Width = 132
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMEROMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 80
          Top = 46
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTOMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 2
        end
        object DBMemo3: TDBMemo
          Left = 80
          Top = 70
          Width = 316
          Height = 61
          DataField = 'ENDERECOMD'
          DataSource = dmOS.dsAparelho
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object DBEdit24: TDBEdit
          Left = 80
          Top = 136
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRROMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 4
        end
        object DBEdit25: TDBEdit
          Left = 80
          Top = 161
          Width = 258
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADEMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 5
        end
        object DBEdit26: TDBEdit
          Left = 80
          Top = 185
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONEMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 7
        end
        object DBEdit27: TDBEdit
          Left = 365
          Top = 160
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFMDID'
          DataSource = dmOS.dsAparelho
          TabOrder = 6
        end
      end
      object GroupBox5: TGroupBox
        Left = 410
        Top = 0
        Width = 290
        Height = 220
        Align = alClient
        Caption = 'Dados de Contrato/ Garantia'
        TabOrder = 1
        object Label36: TLabel
          Left = 6
          Top = 20
          Width = 39
          Height = 13
          Caption = 'Contato'
        end
        object Label38: TLabel
          Left = 6
          Top = 130
          Width = 59
          Height = 13
          Caption = 'Nome Depto'
        end
        object Label39: TLabel
          Left = 6
          Top = 166
          Width = 28
          Height = 13
          Caption = 'e-mail'
        end
        object Label40: TLabel
          Left = 6
          Top = 57
          Width = 48
          Height = 13
          Caption = 'Contato 2'
        end
        object Label41: TLabel
          Left = 6
          Top = 92
          Width = 48
          Height = 13
          Caption = 'Contato 3'
        end
        object DBEdit28: TDBEdit
          Left = 6
          Top = 143
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEDEPTOMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 0
        end
        object DBEdit29: TDBEdit
          Left = 6
          Top = 33
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATOMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 1
        end
        object DBEdit30: TDBEdit
          Left = 6
          Top = 180
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAILMD'
          DataSource = dmOS.dsAparelho
          TabOrder = 2
        end
        object DBEdit31: TDBEdit
          Left = 6
          Top = 72
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATOMD2'
          DataSource = dmOS.dsAparelho
          TabOrder = 3
        end
        object DBEdit32: TDBEdit
          Left = 6
          Top = 105
          Width = 275
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATOMD3'
          DataSource = dmOS.dsAparelho
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 4
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 700
        Height = 220
        Align = alClient
        Caption = 'Dados de Importa'#231#227'o'
        TabOrder = 0
        ExplicitLeft = 413
        ExplicitTop = 69
        ExplicitWidth = 283
        ExplicitHeight = 141
        object Label16: TLabel
          Left = 10
          Top = 16
          Width = 13
          Height = 13
          Caption = 'Nx'
        end
        object Label17: TLabel
          Left = 78
          Top = 16
          Width = 35
          Height = 13
          Caption = 'Invoice'
        end
        object Label22: TLabel
          Left = 181
          Top = 17
          Width = 20
          Height = 13
          Caption = 'Tmb'
        end
        object Label23: TLabel
          Left = 10
          Top = 58
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object DBEdit12: TDBEdit
          Left = 8
          Top = 32
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NXID'
          DataSource = dmOS.dsAparelho
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 76
          Top = 32
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INVOICEID'
          DataSource = dmOS.dsAparelho
          TabOrder = 1
        end
        object DBEdit17: TDBEdit
          Left = 180
          Top = 32
          Width = 96
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TMBID'
          DataSource = dmOS.dsAparelho
          TabOrder = 2
        end
        object DBMemo2: TDBMemo
          Left = 9
          Top = 74
          Width = 685
          Height = 135
          DataField = 'OBSERVACAO'
          DataSource = dmOS.dsAparelho
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object DBCheckBox1: TDBCheckBox
          Left = 81
          Top = 56
          Width = 113
          Height = 17
          Caption = 'Exibe Observa'#231#227'o'
          DataField = 'EXIBEOBS'
          DataSource = dmOS.dsAparelho
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 494
    Width = 708
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
  object Panel4: TPanel
    Left = 0
    Top = 29
    Width = 708
    Height = 185
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label14: TLabel
      Left = 8
      Top = 4
      Width = 24
      Height = 13
      Caption = 'S'#233'rie'
    end
    object Label1: TLabel
      Left = 128
      Top = 4
      Width = 34
      Height = 13
      Caption = 'Modelo'
    end
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 85
      Height = 13
      Caption = 'S'#233'rie do Aparelho'
      FocusControl = DBEdit3
    end
    object Label3: TLabel
      Left = 127
      Top = 38
      Width = 95
      Height = 13
      Caption = 'Modelo do Aparelho'
    end
    object Label13: TLabel
      Left = 508
      Top = 105
      Width = 76
      Height = 13
      Caption = 'Data Instala'#231#227'o'
    end
    object Label15: TLabel
      Left = 509
      Top = 146
      Width = 67
      Height = 13
      Caption = 'Data Garantia'
    end
    object Label37: TLabel
      Left = 615
      Top = 106
      Width = 33
      Height = 13
      Caption = 'Vers'#227'o'
    end
    object Label10: TLabel
      Left = 8
      Top = 107
      Width = 33
      Height = 13
      Caption = 'Cliente'
      WordWrap = True
    end
    object Label24: TLabel
      Left = 8
      Top = 144
      Width = 75
      Height = 13
      Caption = 'Cliente Anterior'
    end
    object Label25: TLabel
      Left = 616
      Top = 145
      Width = 27
      Height = 13
      Caption = 'Pasta'
    end
    object Label26: TLabel
      Left = 8
      Top = 72
      Width = 95
      Height = 13
      Caption = 'Modelo do Jap'#227'o ID'
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 17
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'SERIEID'
      DataSource = dmOS.dsAparelho
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 7
      Top = 51
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'SERIEAPARELHOID'
      DataSource = dmOS.dsAparelho
      TabOrder = 2
    end
    object DBEdit15: TDBEdit
      Left = 615
      Top = 121
      Width = 83
      Height = 21
      DataField = 'VERSAOSOFT'
      DataSource = dmOS.dsAparelho
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 88
      Top = 159
      Width = 417
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'L_NOMECLIENTEANTERIOR'
      DataSource = dmOS.dsAparelho
      Enabled = False
      ReadOnly = True
      TabOrder = 9
    end
    object wwDBComboDlg5: TwwDBComboDlg
      Left = 8
      Top = 121
      Width = 77
      Height = 21
      OnCustomDlg = wwDBComboDlg5CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLIENTEID'
      DataSource = dmOS.dsAparelho
      TabOrder = 4
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBComboDlg11: TwwDBComboDlg
      Left = 8
      Top = 159
      Width = 77
      Height = 21
      OnCustomDlg = wwDBComboDlg11CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'CLIENTEANTERIORID'
      DataSource = dmOS.dsAparelho
      TabOrder = 5
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit10: TDBEdit
      Left = 88
      Top = 121
      Width = 417
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'L_NOMECLIENTE'
      DataSource = dmOS.dsAparelho
      Enabled = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit22: TDBEdit
      Left = 251
      Top = 17
      Width = 382
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOMODELO'
      DataSource = dmOS.dsAparelho
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit23: TDBEdit
      Left = 251
      Top = 51
      Width = 382
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOMODELOAPARELHO'
      DataSource = dmOS.dsAparelho
      Enabled = False
      ReadOnly = True
      TabOrder = 12
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 127
      Top = 17
      Width = 121
      Height = 21
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      CharCase = ecUpperCase
      DataField = 'MODELOID'
      DataSource = dmOS.dsAparelho
      TabOrder = 1
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBComboDlg2: TwwDBComboDlg
      Left = 127
      Top = 51
      Width = 121
      Height = 21
      OnCustomDlg = wwDBComboDlg2CustomDlg
      ShowButton = True
      Style = csDropDown
      CharCase = ecUpperCase
      DataField = 'MODELOAPARELHOID'
      DataSource = dmOS.dsAparelho
      TabOrder = 3
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 508
      Top = 121
      Width = 104
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAINSTALACAO'
      DataSource = dmOS.dsAparelho
      Date = 38091.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 6
      OnClick = wwDBDateTimePicker1Click
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 508
      Top = 159
      Width = 105
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAGARANTIA'
      DataSource = dmOS.dsAparelho
      Epoch = 1950
      Enabled = False
      ShowButton = True
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 616
      Top = 158
      Width = 82
      Height = 21
      DataField = 'L_PASTA'
      DataSource = dmOS.dsAparelho
      TabOrder = 13
    end
    object DBEdit5: TDBEdit
      Left = 7
      Top = 85
      Width = 117
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      DataField = 'MODELOJAPAOID'
      DataSource = dmOS.dsAparelho
      TabOrder = 14
    end
    object DBEdit7: TDBEdit
      Left = 636
      Top = 17
      Width = 67
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_SIGLAGRUPO'
      DataSource = dmOS.dsAparelho
      ReadOnly = True
      TabOrder = 15
    end
    object DBEdit8: TDBEdit
      Left = 636
      Top = 51
      Width = 68
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_SIGLAGRUPOAPARELHO'
      DataSource = dmOS.dsAparelho
      ReadOnly = True
      TabOrder = 16
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 462
    Width = 708
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 708
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
          Width = 470
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 80
        end>
      TtmbCria = True
      TtmbClientDataSet = dmOS.cdsAparelho
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 708
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 517
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 189
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 504
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 528
      Top = 0
      Width = 176
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 176
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actImpEtiqueta
            Caption = 'I&mpress'#227'o Etiqueta'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 600
    Top = 148
    StyleName = 'XP Style'
    object actImpEtiqueta: TAction
      Category = 'Ferramentas'
      Caption = 'Impress'#227'o Etiqueta'
      Hint = 'Impress'#227'o da Etiqueta ANVISA'
      ImageIndex = 0
      OnExecute = actImpEtiquetaExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 596
    Top = 100
    Bitmap = {
      494C010101000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FFFF00C6C6C600C6C6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600848484008484840084848400C6C6C600C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C60000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C6C6C60000000000C6C6C600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000C0070000000000008003000000000000
      0001000000000000000100000000000000010000000000000000000000000000
      00000000000000008000000000000000C000000000000000E001000000000000
      E007000000000000F007000000000000F003000000000000F803000000000000
      FFFF00000000000000000000000000000000000000000000000000000000}
  end
end
