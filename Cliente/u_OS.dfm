object frmOS: TfrmOS
  Left = 194
  Top = 109
  ActiveControl = DBCheckBox2
  Caption = 'Ordem de Servi'#231'o'
  ClientHeight = 546
  ClientWidth = 764
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 259
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
          Width = 137
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
      TtmbClientDataSet = dmOS.cdsOs
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 764
    Height = 194
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 764
      Height = 42
      Align = alTop
      BevelInner = bvLowered
      BevelOuter = bvNone
      TabOrder = 0
      object Label10: TLabel
        Left = 411
        Top = 4
        Width = 69
        Height = 13
        Hint = 'Data de Abertura da Ordem de Servi'#231'o'
        Caption = 'Data Abertura'
        FocusControl = dbedtDtAbertura
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 310
        Top = 4
        Width = 52
        Height = 13
        Hint = 
          'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
          'momento em que se inserir um novo registro'
        Caption = 'OS N'#250'mer:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 66
        Top = 4
        Width = 20
        Height = 13
        Caption = 'Filial'
        FocusControl = DBEdit17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 4
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
      object Label18: TLabel
        Left = 493
        Top = 4
        Width = 66
        Height = 13
        Caption = 'Data Validade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 573
        Top = 4
        Width = 75
        Height = 13
        Caption = 'Data Conclus'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 669
        Top = 4
        Width = 85
        Height = 13
        Caption = 'Data Fechamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 309
        Top = 19
        Width = 98
        Height = 21
        Hint = 
          'N'#250'mero da Ordem de Servi'#231'o, este n'#250'mero '#233' autom'#225'tico apartir do ' +
          'momento em que se inserir um novo registro'
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        Ctl3D = True
        DataField = 'OSID'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object dbedtDtAbertura: TDBEdit
        Left = 410
        Top = 19
        Width = 79
        Height = 21
        Hint = 'Data de Abertura da Ordem de Servi'#231'o'
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        Ctl3D = True
        DataField = 'DATAABERTURA'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object wwDBComboDlg2: TwwDBComboDlg
        Left = 7
        Top = 19
        Width = 55
        Height = 21
        OnCustomDlg = wwDBComboDlg5CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'FILIALID'
        DataSource = dmOS.dsOs
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
      object DBEdit17: TDBEdit
        Left = 65
        Top = 19
        Width = 240
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clScrollBar
        DataField = 'L_NOMEFANTASIAFILIAL'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object dbedtDtValidade: TDBEdit
        Left = 492
        Top = 19
        Width = 79
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        DataField = 'DATAVALIDADE'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object wwDBDateTimePicker2: TwwDBDateTimePicker
        Left = 573
        Top = 19
        Width = 89
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATACONCLUSAO'
        DataSource = dmOS.dsOs
        Date = 36738.000000000000000000
        Epoch = 1950
        ShowButton = True
        TabOrder = 5
      end
      object wwDBDateTimePicker1: TwwDBDateTimePicker
        Left = 669
        Top = 19
        Width = 89
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'DATAFECHAMENTO'
        DataSource = dmOS.dsOs
        Date = 36909.000000000000000000
        Epoch = 1950
        ShowButton = True
        TabOrder = 6
      end
    end
    object grpbxDadosOS: TGroupBox
      Left = 0
      Top = 41
      Width = 765
      Height = 154
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 10
        Top = 12
        Width = 20
        Height = 13
        Hint = 'Tipo da Ordem de Servi'#231'o'
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 10
        Top = 39
        Width = 24
        Height = 13
        Caption = 'S'#233'rie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 10
        Top = 61
        Width = 34
        Height = 13
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label65: TLabel
        Left = 10
        Top = 82
        Width = 29
        Height = 13
        Caption = 'Grupo'
      end
      object Label9: TLabel
        Left = 142
        Top = 83
        Width = 33
        Height = 13
        Caption = 'Vers'#227'o'
      end
      object Label4: TLabel
        Left = 253
        Top = 39
        Width = 68
        Height = 13
        Caption = 'Os Correla'#231#227'o'
      end
      object Label34: TLabel
        Left = 10
        Top = 105
        Width = 36
        Height = 13
        Caption = 'T'#233'cnico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 131
        Width = 75
        Height = 13
        Caption = 'Localiza'#231#227'o O.S'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 413
        Top = 7
        Width = 68
        Height = 26
        Caption = 'Usu'#225'rio da Abertura O.S.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label22: TLabel
        Left = 274
        Top = 57
        Width = 47
        Height = 13
        Caption = 'N'#186' Cortes'
        FocusControl = DBEdit15
      end
      object Label68: TLabel
        Left = 256
        Top = 82
        Width = 65
        Height = 13
        Caption = 'Vers'#227'o Atual.'
        FocusControl = DBEdit15
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 573
        Top = 99
        Width = 189
        Height = 44
        Hint = 'Tipo de Ordem de Servi'#231'o'
        BiDiMode = bdLeftToRight
        Caption = 'Status da O.S.'
        Columns = 2
        Ctl3D = True
        DataField = 'STATUS'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'A - Aberta'
          'F - Fechada'
          'P - Pendente'
          'B - Bloqueada ')
        ParentBackground = True
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Values.Strings = (
          'A'
          'F'
          'P'
          'B')
      end
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 86
        Top = 12
        Width = 59
        Height = 20
        OnCustomDlg = wwDBComboDlg1CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'TIPOOSID'
        DataSource = dmOS.dsOs
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
        Left = 151
        Top = 10
        Width = 154
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clScrollBar
        DataField = 'L_DESCRICAOTIPOOS'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit19: TDBEdit
        Left = 177
        Top = 79
        Width = 73
        Height = 21
        Hint = 'Data de Encerramento do Servi'#231'o do T'#233'cnico'
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        Ctl3D = True
        DataField = 'L_VERSAOSOFT'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object DBComboBox2: TDBComboBox
        Left = 307
        Top = 12
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TIPOATENDIMENTO'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'CORRETIVA'
          'PREVENTIVA')
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 86
        Top = 78
        Width = 50
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clInactiveBorder
        DataField = 'L_SIGLAGRUPO'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 323
        Top = 34
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OSCORRELACAOID'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object wwdbcdlgSerie: TwwDBComboDlg
        Left = 86
        Top = 33
        Width = 147
        Height = 21
        OnCustomDlg = wwdbtesteCustomDlg
        ShowButton = True
        Style = csDropDown
        CharCase = ecUpperCase
        DataField = 'SERIEID'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object wwdbcdlgModelo: TwwDBComboDlg
        Left = 86
        Top = 56
        Width = 147
        Height = 21
        OnCustomDlg = wwdbcdlgModeloCustomDlg
        ShowButton = True
        Style = csDropDown
        CharCase = ecUpperCase
        DataField = 'MODELOID'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object wwDBComboDlg6: TwwDBComboDlg
        Left = 86
        Top = 105
        Width = 100
        Height = 20
        OnCustomDlg = wwDBComboDlg6CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'TECNICOID'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBEdit6: TDBEdit
        Left = 188
        Top = 104
        Width = 285
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clScrollBar
        DataField = 'L_NOMETECNICO'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object wwRadioGroup1: TwwRadioGroup
        Left = 573
        Top = 66
        Width = 189
        Height = 30
        DisableThemes = False
        BiDiMode = bdLeftToRight
        Caption = 'Assist. T'#233'cnica'
        Columns = 2
        DataField = 'TIPOASSIST'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Interna'
          'Externa')
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 11
        Values.Strings = (
          'I'
          'E')
      end
      object wwDBComboDlg3: TwwDBComboDlg
        Left = 86
        Top = 127
        Width = 99
        Height = 20
        OnCustomDlg = wwDBComboDlg3CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        CharCase = ecUpperCase
        DataField = 'LOCALIZACAOOSID'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBEdit1: TDBEdit
        Left = 188
        Top = 129
        Width = 285
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clScrollBar
        DataField = 'L_LOCALIZACAOOS'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object DBEdit3: TDBEdit
        Left = 490
        Top = 12
        Width = 77
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clScrollBar
        DataField = 'USUARIO'
        DataSource = dmOS.dsOs
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBEdit15: TDBEdit
        Left = 323
        Top = 56
        Width = 121
        Height = 21
        DataField = 'NUMCORTES'
        DataSource = dmOS.dsOs
        TabOrder = 15
      end
      object GroupBox6: TGroupBox
        Left = 573
        Top = 7
        Width = 189
        Height = 59
        Caption = '&Libera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
        object Label64: TLabel
          Left = 26
          Top = 13
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = DBEdit50
        end
        object Label66: TLabel
          Left = 9
          Top = 33
          Width = 23
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit51
        end
        object DBEdit50: TDBEdit
          Left = 59
          Top = 9
          Width = 118
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'LIBCHEFIANOME'
          DataSource = dmOS.dsOs
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit51: TDBEdit
          Left = 59
          Top = 32
          Width = 93
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'LIBCHEFIADATA'
          DataSource = dmOS.dsOs
          ReadOnly = True
          TabOrder = 1
        end
        object DBCheckBox2: TDBCheckBox
          Left = 7
          Top = 13
          Width = 18
          Height = 13
          Hint = 'Checks de controle : Movimenta Estoque'
          DataField = 'LIBCHEFIA'
          DataSource = dmOS.dsOs
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object DBEdit52: TDBEdit
        Left = 323
        Top = 79
        Width = 121
        Height = 21
        DataField = 'VERSAOSOFT'
        DataSource = dmOS.dsOs
        TabOrder = 17
      end
    end
  end
  object pgctrlOSPastas: TPageControl
    Left = 0
    Top = 263
    Width = 764
    Height = 231
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
    TabOrder = 3
    OnChange = pgctrlOSPastasChange
    object tbshtCliente: TTabSheet
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object grpbxDadosCliente: TGroupBox
        Left = 0
        Top = 0
        Width = 553
        Height = 203
        Hint = 'Dados do Cliente para abertura da Ordem de Servi'#231'o'
        Align = alLeft
        Caption = 'Dados do &Cliente'
        TabOrder = 0
        object Label30: TLabel
          Left = 6
          Top = 15
          Width = 32
          Height = 13
          Hint = 'C'#243'digo do Cliente  autom'#225'tico do Aparelho / Componente'
          Caption = 'Cliente'
        end
        object Label36: TLabel
          Left = 6
          Top = 64
          Width = 49
          Height = 13
          Hint = 'Nome do Solicitante  no Cliente '
          Caption = 'Solicitante'
          FocusControl = DBEdit9
        end
        object Label37: TLabel
          Left = 344
          Top = 62
          Width = 28
          Height = 13
          Hint = 'Setor Solic.'
          Caption = 'Setor '
          FocusControl = DBEdit11
        end
        object Label38: TLabel
          Left = 6
          Top = 85
          Width = 71
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Serv.Solicitado'
        end
        object Label43: TLabel
          Left = 6
          Top = 41
          Width = 42
          Height = 13
          Hint = 'Telefone do cliente'
          Caption = 'Telefone'
        end
        object Label44: TLabel
          Left = 329
          Top = 41
          Width = 42
          Height = 13
          Hint = 'N'#250'mero da pasta do cliente'
          Caption = 'N'#186' Pasta'
        end
        object Label39: TLabel
          Left = 6
          Top = 156
          Width = 61
          Height = 13
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'End. Servi'#231'o'
          FocusControl = DBEdit32
        end
        object Label40: TLabel
          Left = 215
          Top = 185
          Width = 57
          Height = 13
          Hint = 'Cidade de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'Cid. Servi'#231'o'
          FocusControl = DBEdit33
        end
        object Label41: TLabel
          Left = 488
          Top = 185
          Width = 14
          Height = 13
          Hint = 'Estado de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'UF'
          FocusControl = DBEdit34
        end
        object Label42: TLabel
          Left = 6
          Top = 110
          Width = 21
          Height = 13
          Hint = 'CEP de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          Caption = 'CEP'
        end
        object Label12: TLabel
          Left = 396
          Top = 109
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit13
        end
        object Label13: TLabel
          Left = 6
          Top = 184
          Width = 27
          Height = 13
          Caption = 'Bairro'
        end
        object Label14: TLabel
          Left = 6
          Top = 132
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit14
        end
        object DBEdit9: TDBEdit
          Left = 82
          Top = 60
          Width = 191
          Height = 21
          Hint = 'Nome do Solicitante  no Cliente '
          CharCase = ecUpperCase
          DataField = 'SOLICITANTE'
          DataSource = dmOS.dsOs
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 390
          Top = 60
          Width = 146
          Height = 21
          Hint = 'Setor Solicitante'
          CharCase = ecUpperCase
          DataField = 'SETOR'
          DataSource = dmOS.dsOs
          TabOrder = 5
        end
        object DBEdit32: TDBEdit
          Left = 82
          Top = 84
          Width = 455
          Height = 21
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          CharCase = ecUpperCase
          DataField = 'SERVICO'
          DataSource = dmOS.dsOs
          TabOrder = 6
        end
        object DBEdit36: TDBEdit
          Left = 391
          Top = 35
          Width = 89
          Height = 21
          Hint = 'Telefone do cliente'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_PASTA'
          DataSource = dmOS.dsOs
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit37: TDBEdit
          Left = 82
          Top = 36
          Width = 190
          Height = 21
          Hint = 'N'#250'mero da pasta do cliente'
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_TELEFONE'
          DataSource = dmOS.dsOs
          ReadOnly = True
          TabOrder = 2
        end
        object wwDBComboDlg8: TwwDBComboDlg
          Left = 82
          Top = 12
          Width = 70
          Height = 21
          OnCustomDlg = wwDBComboDlg8CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CLIENTEID'
          DataSource = dmOS.dsOs
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit38: TDBEdit
          Left = 155
          Top = 12
          Width = 381
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_NOMECLIENTE'
          DataSource = dmOS.dsOs
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit33: TDBEdit
          Left = 280
          Top = 181
          Width = 155
          Height = 21
          Hint = 'Cidade de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmOS.dsOs
          TabOrder = 12
        end
        object DBEdit34: TDBEdit
          Left = 508
          Top = 181
          Width = 30
          Height = 21
          Hint = 'Estado de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmOS.dsOs
          TabOrder = 13
        end
        object wwDBComboDlg9: TwwDBComboDlg
          Left = 82
          Top = 106
          Width = 96
          Height = 20
          OnCustomDlg = wwDBComboDlg9CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CEPID'
          DataSource = dmOS.dsOs
          TabOrder = 7
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit13: TDBEdit
          Left = 448
          Top = 106
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmOS.dsOs
          TabOrder = 8
        end
        object DBEdit18: TDBEdit
          Left = 82
          Top = 181
          Width = 127
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmOS.dsOs
          TabOrder = 11
        end
        object DBMemo1: TDBMemo
          Left = 82
          Top = 153
          Width = 455
          Height = 25
          DataField = 'ENDERECO'
          DataSource = dmOS.dsOs
          ScrollBars = ssVertical
          TabOrder = 10
        end
        object DBEdit14: TDBEdit
          Left = 82
          Top = 129
          Width = 455
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmOS.dsOs
          TabOrder = 9
        end
      end
      object GroupBox3: TGroupBox
        Left = 553
        Top = 0
        Width = 203
        Height = 203
        Hint = 'Dados do Or'#231'amento'
        Align = alClient
        Caption = 'Dados complementares'
        TabOrder = 1
        object Label47: TLabel
          Left = 8
          Top = 20
          Width = 54
          Height = 26
          Hint = 'Data de Entrada do Aparelho no Laborat'#243'rio'
          Caption = 'Dt. Entrada Laborat'#243'rio'
          WordWrap = True
        end
        object Label52: TLabel
          Left = 8
          Top = 52
          Width = 53
          Height = 26
          Hint = 'Data de Sa'#237'da do Aparelho no Laborat'#243'rio'
          Caption = 'Dt. Sa'#237'da Laborat'#243'rio'
          WordWrap = True
        end
        object Label28: TLabel
          Left = 8
          Top = 84
          Width = 60
          Height = 26
          Caption = 'Data / Hora  de Chegada'
          WordWrap = True
        end
        object Label54: TLabel
          Left = 8
          Top = 117
          Width = 60
          Height = 26
          Caption = 'Data / Hora  de Sa'#237'da'
          WordWrap = True
        end
        object SpeedButton2: TSpeedButton
          Left = 181
          Top = 84
          Width = 18
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
            F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
            F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
            7777777700000007777777777777777777777777777777777777}
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 186
          Top = 117
          Width = 12
          Height = 22
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
            F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
            F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
            7777777700000007777777777777777777777777777777777777}
          OnClick = SpeedButton3Click
        end
        object wwDBDateTimePicker5: TwwDBDateTimePicker
          Left = 68
          Top = 22
          Width = 117
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAENTRLABORATORIO'
          DataSource = dmOS.dsOs
          Epoch = 1950
          ShowButton = True
          TabOrder = 0
        end
        object wwDBDateTimePicker6: TwwDBDateTimePicker
          Left = 68
          Top = 54
          Width = 117
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATASAIDALABORATORIO'
          DataSource = dmOS.dsOs
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
        end
        object DBEdit28: TDBEdit
          Left = 68
          Top = 83
          Width = 117
          Height = 21
          DataField = 'DATAHORACHEGADA'
          DataSource = dmOS.dsOs
          TabOrder = 2
        end
        object DBEdit42: TDBEdit
          Left = 68
          Top = 118
          Width = 117
          Height = 21
          DataField = 'DATAHORASAIDA'
          DataSource = dmOS.dsOs
          TabOrder = 3
        end
        object DBEdit47: TDBEdit
          Left = 95
          Top = 145
          Width = 98
          Height = 21
          Color = clInactiveBorder
          DataField = 'OSOFFLINEUSUARIO'
          DataSource = dmOS.dsOs
          Enabled = False
          TabOrder = 4
        end
        object dbckbxOSOFFLine: TDBCheckBox
          Left = 6
          Top = 149
          Width = 83
          Height = 17
          Caption = 'O.S OffLine'
          DataField = 'OSOFFLINE'
          DataSource = dmOS.dsOs
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object dbckbxOSImpressa: TDBCheckBox
          Left = 6
          Top = 165
          Width = 83
          Height = 17
          Caption = 'O.S Impressa'
          DataField = 'OSIMPRESSA'
          DataSource = dmOS.dsOs
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 6
          Top = 181
          Width = 99
          Height = 17
          Caption = 'O.S Eletr'#244'nica'
          DataField = 'OSELETRONICA'
          DataSource = dmOS.dsOs
          ReadOnly = True
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Or'#231'amento'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpbxDadosOrcamento: TGroupBox
        Left = 0
        Top = 0
        Width = 756
        Height = 203
        Hint = 'Dados do Or'#231'amento'
        Align = alClient
        Caption = 'Dados do &Or'#231'amento'
        TabOrder = 0
        object Label46: TLabel
          Left = 7
          Top = 24
          Width = 70
          Height = 13
          Caption = 'Cond Pagto ID'
        end
        object Label20: TLabel
          Left = 520
          Top = 16
          Width = 33
          Height = 13
          Hint = 'Moeda or'#231'ada'
          Caption = 'Moeda'
        end
        object Label51: TLabel
          Left = 7
          Top = 42
          Width = 55
          Height = 26
          Caption = 'Or'#231'amento Ref ID'
          WordWrap = True
        end
        object Label21: TLabel
          Left = 7
          Top = 69
          Width = 52
          Height = 13
          Hint = 
            'N'#250'mero do or'#231'amento ( Carta feito por Depto T'#233'cnico com o n'#250'mero' +
            ' do or'#231'amento par ao Cliente'
          Caption = 'Orcamento'
        end
        object Label23: TLabel
          Left = 232
          Top = 69
          Width = 93
          Height = 13
          Hint = 'Condi'#231#245'es de Pagamento'
          Caption = 'Descr. Cond. Pagto'
          FocusControl = DBEdit5
        end
        object Label29: TLabel
          Left = 7
          Top = 93
          Width = 72
          Height = 13
          Hint = 'Antecipa'#231#227'o de Pagamento'
          Caption = 'Vlr. Antecipado'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 8
          Top = 117
          Width = 53
          Height = 13
          Hint = 'Valor or'#231'ado ( Efeito de Confer'#234'ncia )'
          Caption = 'Vlr. Or'#231'ado'
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 82
          Top = 22
          Width = 83
          Height = 20
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CONDPAGTOID'
          DataSource = dmOS.dsOs
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
        object DBComboBox3: TDBComboBox
          Left = 580
          Top = 16
          Width = 101
          Height = 21
          Hint = 'Moeda or'#231'ada'
          DataField = 'MOEDAORCADA'
          DataSource = dmOS.dsOs
          ItemHeight = 13
          Items.Strings = (
            'US$'
            'R$')
          TabOrder = 1
        end
        object DBEdit29: TDBEdit
          Left = 171
          Top = 22
          Width = 318
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_DESCR_CONDPAGTO'
          DataSource = dmOS.dsOs
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit20: TDBEdit
          Left = 171
          Top = 45
          Width = 318
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataSource = dmOS.dsOs
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object wwDBComboDlg5: TwwDBComboDlg
          Left = 82
          Top = 46
          Width = 83
          Height = 20
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'ORCAMENTOID'
          DataSource = dmOS.dsOs
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit16: TDBEdit
          Left = 82
          Top = 69
          Width = 143
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ORCAMENTOID'
          DataSource = dmOS.dsOs
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 336
          Top = 69
          Width = 345
          Height = 21
          Hint = 'Condi'#231#245'es de Pagamento'
          CharCase = ecUpperCase
          DataField = 'CONDPAGTO'
          DataSource = dmOS.dsOs
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 82
          Top = 93
          Width = 119
          Height = 21
          Hint = 'Antecipa'#231#227'o de Pagamento'
          CharCase = ecUpperCase
          DataField = 'VLRPAGTOANTEC'
          DataSource = dmOS.dsOs
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 82
          Top = 117
          Width = 119
          Height = 21
          Hint = 'Data de Sa'#237'da do Aparelho no Laborat'#243'rio'
          CharCase = ecUpperCase
          DataField = 'VLRORCADO'
          DataSource = dmOS.dsOs
          MaxLength = 10
          TabOrder = 8
        end
      end
    end
    object tbshtHoras: TTabSheet
      Caption = 'Horas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object tmbedtListHora: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 120
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
        object BitBtn1: TBitBtn
          Left = 4
          Top = 144
          Width = 75
          Height = 25
          Action = actLibHoras
          Caption = 'Horas Extras'
          TabOrder = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00FF0000000000FFFF
            FF0000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF000000000000FF
            FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
            FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF0000000000FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
            0000000000000000000000000000FFFFFF0000000000FF00FF000000000000FF
            FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00FF0000000000FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00FF000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
            FF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
            000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
            FF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
      object dbgrdHoras: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 203
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOS.dsOsHora
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
            FieldName = 'ENTIDADEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEPOPULARTECNICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATATRABALHOID'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORATRAB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORATRANSP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORAESPERA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDHORAOUTRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
    end
    object tbshtServico: TTabSheet
      Caption = 'Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label33: TLabel
        Left = 39
        Top = 293
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
        FocusControl = DBEdit25
      end
      object DBEdit25: TDBEdit
        Left = 39
        Top = 306
        Width = 60
        Height = 21
        DataField = 'USUARIO'
        TabOrder = 1
      end
      object tmbEdtListServico: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmOS.cdsOsDefeito
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsOsDefeito
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'OSDefeito'
        object tPanel12: tPanel1
          Left = 0
          Top = 118
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdServico
          tmbCria = True
          tmbAjusta = True
        end
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 689
        Height = 203
        Align = alClient
        TabOrder = 2
        object Label3: TLabel
          Left = 5
          Top = 220
          Width = 73
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Obs do Servi'#231'o'
        end
        object Label58: TLabel
          Left = 5
          Top = 111
          Width = 89
          Height = 13
          Hint = 'Servi'#231'o Solicitado'
          Caption = 'Servi'#231'o executado'
        end
        object DBEdit22: TDBEdit
          Left = 5
          Top = 239
          Width = 663
          Height = 74
          Hint = 'Endere'#231'o de Servi'#231'o autom'#225'tico do Aparelho / Componente'
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'OBSSERVICO'
          DataSource = dmOS.dsOs
          TabOrder = 0
        end
        object dbgrdServico: TDBGrid
          Left = 0
          Top = 0
          Width = 669
          Height = 105
          Align = alTop
          Color = clCream
          Ctl3D = True
          DataSource = dmOS.dsOsDefeito
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
              Width = 39
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEFEITOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAODEFEITO'
              Width = 203
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOCALDEFEITO'
              Width = 227
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Width = 60
              Visible = True
            end>
        end
        object DBMemo2: TDBMemo
          Left = 5
          Top = 130
          Width = 663
          Height = 78
          DataField = 'SERVICOEXECUTADO'
          DataSource = dmOS.dsOsDefeito
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object tbshtRDVDespesas: TTabSheet
      Caption = 'RDV Despesas'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object tbshtAssistInter: TTabSheet
      Caption = 'Empenho'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object tmbEdtListEmpenho: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmOS.cdsOSPeca
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsOSPeca
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'OSPeca'
        object SpeedButton4: TSpeedButton
          Left = 6
          Top = 149
          Width = 59
          Height = 28
          Action = actImpEmpenho
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00BD000000FF00FF00FF00FF00FF00FF0000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00BD000000BD000000FF00FF00FF00FF000000000000BDBD0000BD
            BD0000BDBD0000BDBD0000BDBD00000000000000000000000000BD000000BD00
            0000BD000000BD000000BD000000BD000000FF00FF0000000000000000000000
            00000000000000000000000000000000000000BDBD0000000000FF00FF00FF00
            FF00FF00FF00BD000000BD000000FF00FF00FF00FF0000000000FFFFFF00FF00
            FF00FFFFFF00FF00FF00FFFFFF00FF00FF000000000000000000FF00FF00FF00
            FF00FF00FF00BD000000FF00FF00FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000FF00FF007B7B7B0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF007B7B7B007B7B7B00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00000000000000
            0000000000000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF007B7B7B00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF007B7B7B00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object tPanel14: tPanel1
          Left = -3
          Top = 119
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdEmpenho
          tmbCria = True
          tmbAjusta = True
        end
      end
      object dbgrdEmpenho: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 203
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOS.dsOSPeca
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
        OnDrawColumnCell = dbgrdEmpenhoDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PECAID'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOPRODUTO'
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_LOCALIZACAO'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFSID'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAEMISSAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPECA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UTILIZADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPRESSO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEUTILIZADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENTOENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MATERIALAVALIADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVALIADOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUSTIFICATIVA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Visible = True
          end>
      end
    end
    object tbshtCtrlHora: TTabSheet
      Caption = 'Ctrl. Horas Tec.'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet1: TTabSheet
      Caption = 'Tubos'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 203
        Align = alClient
        Color = clCream
        DataSource = dmOS.dsTubo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SERIEID'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELOID'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIETUBOID'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELOTUBOID'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOMODELOTUBO'
            Width = 533
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAATUALIZACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCORTESATUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCORTESTROCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCORTES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 80
            Visible = True
          end>
      end
      object tmbEdtListTubo: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmOS.cdsTubo
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsTubo
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Tubo'
        object SpeedButton1: TSpeedButton
          Left = 1
          Top = 117
          Width = 64
          Height = 24
          Caption = 'Tubo   '
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADA7447DA
            DADAADADA747747DADADDADAD4DADA4ADADAADAD74ADAD47ADADDADA7ADADAD4
            DADAADADADADADA47DAD777777777777777A888888888888888DFFF4FFFFFFFF
            FFFAADA44DADADA47DADDAD444DADAD47ADAADA4444DADA4ADADDAD444DADA47
            DADAADADA47DAD4DADADDADAD747747ADADAADADAD7447ADADAD}
          OnClick = SpeedButton1Click
        end
      end
    end
    object tbshtMaterial: TTabSheet
      Caption = 'Produto/Servi'#231'o'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object dbgrdOSMaterial: TDBGrid
        Left = 0
        Top = 0
        Width = 689
        Height = 203
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOS.dsOSMaterial
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
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOPRODUTO'
            Width = 212
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOMATSERV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRECOUNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPRECOTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
      object tmbEdtListMaterial: TtmbEdicaoLista
        Left = 689
        Top = 0
        Width = 67
        Height = 120
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
    object TabSheet2: TTabSheet
      Caption = 'Resumo'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 249
        Height = 203
        Align = alLeft
        Caption = 'Or'#231'amento Complementar'
        TabOrder = 0
        object Label45: TLabel
          Left = 9
          Top = 17
          Width = 80
          Height = 13
          Caption = 'Vlr. M'#227'o de Obra'
        end
        object Label48: TLabel
          Left = 9
          Top = 41
          Width = 86
          Height = 13
          Caption = 'Vlr. Deslocamento'
        end
        object Label49: TLabel
          Left = 9
          Top = 62
          Width = 42
          Height = 13
          Caption = 'Vlr. Frete'
          FocusControl = DBEdit24
        end
        object Label50: TLabel
          Left = 9
          Top = 89
          Width = 43
          Height = 13
          Caption = 'Vlr. Pe'#231'a'
          FocusControl = DBEdit26
        end
        object Label24: TLabel
          Left = 9
          Top = 153
          Width = 98
          Height = 13
          Hint = 'Antecipa'#231#227'o de Pagamento'
          Caption = 'Vlr. Total Or'#231'ado'
          FocusControl = DBEdit21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label60: TLabel
          Left = 9
          Top = 116
          Width = 49
          Height = 13
          Caption = 'Vlr.Seguro'
          FocusControl = DBEdit48
        end
        object DBEdit24: TDBEdit
          Left = 115
          Top = 61
          Width = 117
          Height = 21
          DataField = 'VLRFRETE'
          DataSource = dmOS.dsOs
          TabOrder = 2
        end
        object DBEdit26: TDBEdit
          Left = 115
          Top = 85
          Width = 116
          Height = 21
          DataField = 'VLRPECA'
          DataSource = dmOS.dsOs
          TabOrder = 3
        end
        object DBEdit21: TDBEdit
          Left = 115
          Top = 149
          Width = 116
          Height = 21
          Hint = 'Antecipa'#231#227'o de Pagamento'
          CharCase = ecUpperCase
          Color = clMenuBar
          DataField = 'VLRTOTALORCCOMP'
          DataSource = dmOS.dsOs
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit27: TDBEdit
          Left = 115
          Top = 15
          Width = 117
          Height = 21
          DataField = 'VLRMAODEOBRA'
          DataSource = dmOS.dsOs
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 115
          Top = 37
          Width = 117
          Height = 21
          DataField = 'VLRDESLOCAMENTO'
          DataSource = dmOS.dsOs
          TabOrder = 1
        end
        object DBEdit48: TDBEdit
          Left = 115
          Top = 112
          Width = 116
          Height = 21
          DataField = 'VLRSEGURO'
          DataSource = dmOS.dsOs
          TabOrder = 5
        end
      end
      object GroupBox2: TGroupBox
        Left = 249
        Top = 0
        Width = 507
        Height = 203
        Align = alClient
        Caption = 'Valores Finais'
        TabOrder = 1
        object Label31: TLabel
          Left = 7
          Top = 88
          Width = 72
          Height = 13
          Caption = 'Vlr.Total Pe'#231'as'
        end
        object Label32: TLabel
          Left = 7
          Top = 111
          Width = 76
          Height = 13
          Caption = 'Vlr. Total Outros'
        end
        object Label53: TLabel
          Left = 255
          Top = 95
          Width = 97
          Height = 13
          Caption = 'Vlr Total a Pagar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 7
          Top = 15
          Width = 107
          Height = 13
          Caption = 'Vlr. Total M'#227'o de Obra'
        end
        object Label26: TLabel
          Left = 7
          Top = 39
          Width = 113
          Height = 13
          Caption = 'Vlr. Total Deslocamento'
        end
        object Label27: TLabel
          Left = 7
          Top = 63
          Width = 66
          Height = 13
          Caption = 'Vlr.Total Frete'
        end
        object Label55: TLabel
          Left = 255
          Top = 39
          Width = 73
          Height = 13
          Caption = 'Valor Desconto'
        end
        object Label56: TLabel
          Left = 255
          Top = 15
          Width = 74
          Height = 13
          Caption = 'Porc. Desconto'
        end
        object Label57: TLabel
          Left = 255
          Top = 63
          Width = 73
          Height = 13
          Caption = 'Nome Lib.Desc'
        end
        object Label59: TLabel
          Left = 8
          Top = 136
          Width = 97
          Height = 13
          Hint = 'Valor or'#231'ado ( Efeito de Confer'#234'ncia )'
          Caption = 'Vlr. Total Or'#231'amento'
        end
        object DBEdit39: TDBEdit
          Left = 131
          Top = 85
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALPECA'
          DataSource = dmOS.dsOs
          Enabled = False
          TabOrder = 3
        end
        object DBEdit40: TDBEdit
          Left = 131
          Top = 109
          Width = 117
          Height = 21
          DataField = 'VLRTOTALOUTRO'
          DataSource = dmOS.dsOs
          TabOrder = 4
        end
        object DBEdit41: TDBEdit
          Left = 355
          Top = 93
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALPAGAR'
          DataSource = dmOS.dsOs
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit30: TDBEdit
          Left = 131
          Top = 13
          Width = 116
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALMAODEOBRA'
          DataSource = dmOS.dsOs
          Enabled = False
          TabOrder = 0
        end
        object DBEdit31: TDBEdit
          Left = 131
          Top = 37
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRTOTALDESLOCAMENTO'
          DataSource = dmOS.dsOs
          Enabled = False
          TabOrder = 1
        end
        object DBEdit35: TDBEdit
          Left = 131
          Top = 61
          Width = 117
          Height = 21
          DataField = 'VLRTOTALFRETE'
          DataSource = dmOS.dsOs
          TabOrder = 2
        end
        object BitBtn2: TBitBtn
          Left = 360
          Top = 120
          Width = 113
          Height = 25
          Caption = 'Atualizar C'#225'lculo'
          TabOrder = 9
          OnClick = BitBtn2Click
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777700007777777778888887777700007777777000003888777700007777
            770BBBB03088877700007777770BBBB0308887770000777770BBBB0333088777
            0000777770BBBB03330887770000777770000003330887770000777777778033
            3308877700007777777000333308877700007777770BB0333308877700007777
            70BBBB0333088777000077770BBBBBB03308877700007770BBBBBBBB03088777
            0000777000BBBB00030887770000777770BBBB033308777700007777770BBBB0
            3087777700007777770BBBB03077777700007777777000003777777700007777
            77777777777777770000}
        end
        object DBEdit43: TDBEdit
          Left = 355
          Top = 13
          Width = 117
          Height = 21
          DataField = 'PORCDESCONTO'
          DataSource = dmOS.dsOs
          TabOrder = 5
        end
        object DBEdit44: TDBEdit
          Left = 355
          Top = 37
          Width = 117
          Height = 21
          Color = clMenuBar
          DataField = 'VLRDESCONTO'
          DataSource = dmOS.dsOs
          Enabled = False
          TabOrder = 6
        end
        object DBEdit45: TDBEdit
          Left = 355
          Top = 61
          Width = 117
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMELIBDESCONTO'
          DataSource = dmOS.dsOs
          TabOrder = 7
        end
        object DBEdit46: TDBEdit
          Left = 131
          Top = 136
          Width = 117
          Height = 21
          Hint = 'Data de Sa'#237'da do Aparelho no Laborat'#243'rio'
          CharCase = ecUpperCase
          DataField = 'VLRORCADO'
          DataSource = dmOS.dsOs
          MaxLength = 10
          TabOrder = 10
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Ocorr'#234'ncia Operacional'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 691
        Height = 203
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 689
        object Splitter2: TSplitter
          Left = 2
          Top = 110
          Width = 687
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 132
        end
        object dbgrdOcOperacional: TDBGrid
          Left = 2
          Top = 15
          Width = 687
          Height = 95
          Align = alClient
          Color = clCream
          Ctl3D = True
          DataSource = dmOS.dsOSOcOperacional
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
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEMID'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAOCORRENCIA'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OCOPERACIONALID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOOCOPERACIONAL'
              Width = 189
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAACAOTOMADA'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIOACAOTOMADA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
        object DBRichEdit1: TDBRichEdit
          Left = 2
          Top = 113
          Width = 687
          Height = 88
          Align = alBottom
          DataField = 'ACAOTOMADA'
          DataSource = dmOS.dsOSOcOperacional
          TabOrder = 1
          ExplicitWidth = 685
        end
      end
      object tmbEdtListOcOperac: TtmbEdicaoLista
        Left = 691
        Top = 0
        Width = 67
        Height = 120
        Align = alRight
        AutoSize = True
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmOS.cdsOsOcOperacional
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsOSOcOperacional
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Ocorrencia Operacional'
        ExplicitLeft = 689
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 764
    Height = 65
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 760
      end
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 26
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
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 27
      Width = 747
      Height = 26
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object ImageList1: TImageList
    Left = 520
    Top = 154
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
              end
              item
                Action = actFechaOS
                Caption = '&Fechar OS'
                ImageIndex = 5
              end
              item
                Action = actBloqueiaOS
                Caption = '&Bloquear OS'
                ImageIndex = 9
              end
              item
                Action = actDesbloqueiaOS
                Caption = '&Desbloquear OS'
                ImageIndex = 9
              end>
            Caption = '&Ordem de Servi'#231'o'
          end
          item
            Items = <
              item
                Action = actPedEntrada
                Caption = '&Pedido de Entrada'
                ImageIndex = 3
              end
              item
                Action = actPedSaida
                Caption = 'P&edido de Sa'#237'da'
                ImageIndex = 2
              end>
            Caption = '&Pedido'
          end
          item
            Items = <
              item
                Action = actImpOS
                Caption = '&Imprimir OS'
                ImageIndex = 0
              end
              item
                Action = actImpEmpenho
                Caption = 'I&mprimir Empenho'
                ImageIndex = 0
              end
              item
                Action = actImpOSNovo
                Caption = 'Im&p. OS Nova'
                ImageIndex = 0
              end>
            Caption = '&Relat'#243'rio'
          end
          item
            Items = <
              item
                Action = actViewNFE
                Caption = '&Visual. Notas Fiscais'
                ImageIndex = 15
              end
              item
                Action = actViewContrato
                Caption = 'V&isual. Contrato'
                ImageIndex = 8
              end>
            Caption = '&Visualizar'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = actPedEntrada
            Caption = '&Pedido de Entrada'
            ImageIndex = 3
          end
          item
            Action = actPedSaida
            Caption = 'P&edido de Sa'#237'da'
            ImageIndex = 2
          end
          item
            Action = actDemo
            Caption = '&Demonstra'#231#227'o'
            ImageIndex = 8
          end
          item
            Action = actLiberarRDV
            Caption = 'De&spesas RDV'
            ImageIndex = 6
          end
          item
            Action = actLibHoras
            Caption = '&Horas Extras'
            ImageIndex = 7
          end
          item
            Action = actImpOS
            Caption = '&Imprimir OS'
            ImageIndex = 0
          end
          item
            Action = actImpOSNovo
            Caption = 'I&mp. OS Nova'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 440
    Top = 116
    StyleName = 'XP Style'
    object actPedEntrada: TAction
      Category = 'Pedido'
      Caption = 'Pedido de Entrada'
      Hint = 'Geral Pedido de Entrada'
      ImageIndex = 3
      OnExecute = actPedEntradaExecute
    end
    object actPedSaida: TAction
      Category = 'Pedido'
      Caption = 'Pedido de Sa'#237'da'
      Hint = 'Gerar Pedido de Sa'#237'da'
      ImageIndex = 2
      OnExecute = actPedSaidaExecute
    end
    object actDerivaOS: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'OS Derivada'
      Hint = 'Gerar OS Derivada'
      ImageIndex = 10
      OnExecute = actDerivaOSExecute
    end
    object actImpOS: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Imprimir OS'
      Hint = 'Imprimir OS'
      ImageIndex = 0
      OnExecute = actImpOSExecute
    end
    object actImpEmpenho: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Imprimir Empenho'
      Hint = 'Imprimir Empenho'
      ImageIndex = 0
      OnExecute = actImpEmpenhoExecute
    end
    object actLiberarRDV: TAction
      Category = 'Libera'#231#227'o'
      Caption = 'Despesas RDV'
      Hint = 'Liberar despesas do RDV'
      ImageIndex = 6
      OnExecute = actLiberarRDVExecute
    end
    object actLibHoras: TAction
      Category = 'Libera'#231#227'o'
      Caption = 'Horas Extras'
      Hint = 'Liberar Horas'
      ImageIndex = 7
      OnExecute = actLibHorasExecute
    end
    object actImpOSNovo: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Imp. OS Nova'
      Hint = 'Imprimir novo modelo de O.S.'
      ImageIndex = 0
      OnExecute = actImpOSNovoExecute
    end
    object actAbreOS: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Abrir OS Fechada'
      Hint = 'Abrir OS Fechada'
      ImageIndex = 4
      OnExecute = actAbreOSExecute
    end
    object actFechaOS: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Fechar OS'
      Hint = 'Fechar OS'
      ImageIndex = 5
      OnExecute = actFechaOSExecute
    end
    object actBloqueiaOS: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Bloquear OS'
      Hint = 'Bloquear OS'
      ImageIndex = 9
      OnExecute = actBloqueiaOSExecute
    end
    object actDesbloqueiaOS: TAction
      Category = 'Ordem de Servi'#231'o'
      Caption = 'Desbloquear OS'
      Hint = 'Desbloquear OS'
      ImageIndex = 9
      OnExecute = actDesbloqueiaOSExecute
    end
    object actViewNFE: TAction
      Category = 'Visualizar'
      Caption = 'Visual. Notas Fiscais'
      Hint = 'Visualizar as Notas Fiscais de Entrada / Sa'#237'das'
      ImageIndex = 15
      OnExecute = actViewNFEExecute
    end
    object actViewContrato: TAction
      Category = 'Visualizar'
      Caption = 'Visual. Contrato'
      ImageIndex = 8
      OnExecute = actViewContratoExecute
    end
    object actDemo: TAction
      Category = 'Pedido'
      Caption = 'Demonstra'#231#227'o'
      Hint = 'Solicita'#231#227'o de demonstra'#231#227'o'
      ImageIndex = 8
      OnExecute = actDemoExecute
    end
  end
  object QRCompositeReport1: TQRCompositeReport
    OnAddReports = QRCompositeReport1AddReports
    Options = []
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
    PrinterSettings.Orientation = poPortrait
    PrinterSettings.PaperSize = Letter
    Left = 520
    Top = 114
  end
end
