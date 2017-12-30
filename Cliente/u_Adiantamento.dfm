object frmAdiantamento: TfrmAdiantamento
  Left = 141
  Top = 119
  Caption = 'Adiantamento'
  ClientHeight = 544
  ClientWidth = 704
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
    Top = 225
    Width = 704
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 206
  end
  object pnlAdiantamento: TPanel
    Left = 0
    Top = 29
    Width = 704
    Height = 76
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object lblDataSolicitacao: TLabel
      Left = 91
      Top = 8
      Width = 78
      Height = 13
      Caption = 'Data Solicita'#231#227'o'
    end
    object lblDataDeposito: TLabel
      Left = 185
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Data Dep'#243'sito'
    end
    object lblAdiantamentoId: TLabel
      Left = 10
      Top = 8
      Width = 74
      Height = 13
      Caption = 'AdiantamentoId'
    end
    object lblHorasSolicitadas: TLabel
      Left = 291
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Horas Solic.'
    end
    object lblSolicitante: TLabel
      Left = 380
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Solicitante'
    end
    object Label1: TLabel
      Left = 291
      Top = 40
      Width = 78
      Height = 13
      Caption = 'Nome Lib Chefia'
    end
    object Label2: TLabel
      Left = 379
      Top = 40
      Width = 112
      Height = 13
      Caption = 'Data / Horas Libera'#231#227'o'
    end
    object wwDBDateTimePicker3: TwwDBDateTimePicker
      Left = 90
      Top = 22
      Width = 92
      Height = 21
      Hint = 'Data de Solicita'#231#227'o'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATASOLICITACAO'
      DataSource = dmRD.dsAdiantamento
      Date = 37078.000000000000000000
      Epoch = 1950
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      ShowButton = True
      TabOrder = 1
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 184
      Top = 22
      Width = 92
      Height = 21
      Hint = 'Data de Dep'#243'sito'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATADEPOSITO'
      DataSource = dmRD.dsAdiantamento
      Date = 37082.000000000000000000
      Epoch = 1950
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 22
      Width = 79
      Height = 21
      Hint = 'N'#186' do adiantamento'
      Color = clScrollBar
      DataField = 'ADIANTAMENTOID'
      DataSource = dmRD.dsAdiantamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 290
      Top = 22
      Width = 81
      Height = 21
      Hint = 'Horas Solic.'
      Color = clInactiveBorder
      DataField = 'HORASOLICITADA'
      DataSource = dmRD.dsAdiantamento
      MaxLength = 5
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 380
      Top = 22
      Width = 112
      Height = 21
      Color = clInactiveBorder
      DataField = 'USUARIO'
      DataSource = dmRD.dsAdiantamento
      ReadOnly = True
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 527
      Top = 5
      Width = 159
      Height = 17
      Caption = 'Liberado p/ Transf'#234'ncia'
      Color = clInactiveBorder
      DataField = 'LIBCHEFIA'
      DataSource = dmRD.dsAdiantamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 527
      Top = 28
      Width = 159
      Height = 17
      Caption = 'Impress'#227'o adiantamento'
      Color = clInactiveBorder
      DataField = 'IMPRESSO'
      DataSource = dmRD.dsAdiantamento
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 8
      Top = 43
      Width = 170
      Height = 28
      Caption = 'Tipo de Despesas'
      Columns = 2
      DataField = 'TIPOMOEDA'
      DataSource = dmRD.dsAdiantamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'Internas '
        'Exterior')
      ParentBackground = True
      ParentFont = False
      TabOrder = 7
      Values.Strings = (
        'R'
        'D')
    end
    object DBEdit4: TDBEdit
      Left = 290
      Top = 54
      Width = 81
      Height = 21
      Hint = 'Horas Solic.'
      Color = clInactiveBorder
      DataField = 'NOMELIBCHEFIA'
      DataSource = dmRD.dsAdiantamento
      MaxLength = 5
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 378
      Top = 54
      Width = 135
      Height = 21
      Hint = 'Horas Solic.'
      Color = clInactiveBorder
      DataField = 'DATALIBCHEFIA'
      DataSource = dmRD.dsAdiantamento
      MaxLength = 5
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 9
    end
  end
  object gbDadosAdiantamento: TGroupBox
    Left = 0
    Top = 105
    Width = 704
    Height = 120
    Align = alTop
    Caption = ' Dados do Adiantamento '
    TabOrder = 1
    object lblValor: TLabel
      Left = 8
      Top = 62
      Width = 65
      Height = 26
      Caption = 'Total do Adiantamento'
      WordWrap = True
    end
    object lblSaldo: TLabel
      Left = 205
      Top = 69
      Width = 27
      Height = 13
      Caption = 'Saldo'
    end
    object lblHistorico: TLabel
      Left = 8
      Top = 42
      Width = 41
      Height = 13
      Caption = 'Hist'#243'rico'
    end
    object lblFuncionarioId: TLabel
      Left = 8
      Top = 17
      Width = 55
      Height = 13
      Caption = 'Funcion'#225'rio'
    end
    object Label18: TLabel
      Left = 8
      Top = 97
      Width = 58
      Height = 13
      Caption = 'Identif. Solic'
    end
    object DBEdit8: TDBEdit
      Left = 78
      Top = 65
      Width = 115
      Height = 21
      Hint = 'Saldo'
      Color = clInactiveBorder
      DataField = 'VLROPERACAO'
      DataSource = dmRD.dsAdiantamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object DBEdit10: TDBEdit
      Left = 239
      Top = 65
      Width = 115
      Height = 21
      Hint = 'Valor'
      Color = clInactiveBorder
      DataField = 'L_VLRSALDO'
      DataSource = dmRD.dsAdiantamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object DBEdit11: TDBEdit
      Left = 78
      Top = 40
      Width = 491
      Height = 21
      Hint = 'Dados do Adiantamento'
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = dmRD.dsAdiantamento
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object wwDBComboDlg5: TwwDBComboDlg
      Left = 78
      Top = 15
      Width = 71
      Height = 20
      Hint = 'N'#186' do Funcion'#225'rio'
      OnCustomDlg = wwDBComboDlg5CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FUNCIONARIOID'
      DataSource = dmRD.dsAdiantamento
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit3: TDBEdit
      Left = 151
      Top = 15
      Width = 418
      Height = 21
      Hint = 'Funcion'#225'rio'
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_NOMEFUNCIONARIO'
      DataSource = dmRD.dsAdiantamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit16: TDBEdit
      Left = 78
      Top = 92
      Width = 100
      Height = 21
      DataField = 'IDENTIFSOLIC'
      DataSource = dmRD.dsAdiantamento
      TabOrder = 5
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 228
    Width = 704
    Height = 265
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    ExplicitTop = 209
    ExplicitHeight = 198
    object TabSheet1: TTabSheet
      Caption = #205'tens do Adiantamento'
      ExplicitHeight = 170
      object dbgrdItensAdiantamento: TDBGrid
        Left = 0
        Top = 0
        Width = 629
        Height = 237
        Align = alClient
        Color = clCream
        DataSource = dmRD.dsAdiantamentoItem
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATASOLICITACAO'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERACAOID'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAO'
            Width = 255
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLROPERACAO'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICO'
            Width = 279
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
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_KMRODADOS'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 76
            Visible = True
          end>
      end
      object tmbEdtListAdiantItem: TtmbEdicaoLista
        Left = 629
        Top = 0
        Width = 67
        Height = 237
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
        TtmbClientDataSet = dmRD.cdsAdiantamentoItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmRD.dsAdiantamentoItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Itens'
        ExplicitHeight = 170
      end
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 704
    Height = 29
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = tmbEdicaoTop1
        ImageIndex = -1
        MinHeight = 29
        Width = 165
      end
      item
        Break = False
        Control = ActionToolBar2
        ImageIndex = -1
        MinHeight = 26
        Width = 537
      end>
    EdgeBorders = []
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 152
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 152
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object tmbEdicaoTop1: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 152
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 152
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object ActionToolBar2: TActionToolBar
      Left = 176
      Top = 1
      Width = 524
      Height = 26
      ActionManager = actmngRdv
      Caption = 'ActionToolBar2'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 525
    Width = 704
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
    ExplicitTop = 439
  end
  object Panel3: TPanel
    Left = 0
    Top = 493
    Width = 704
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 5
    ExplicitTop = 407
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 704
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
          Width = 472
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 74
        end>
      TtmbCria = True
      TtmbClientDataSet = dmRD.cdsAdiantamento
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object ImageList1: TImageList
    Left = 560
    Top = 128
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000007B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B00FFFFFF0000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C00000FFFF0000FFFF0000FFFF00C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF0000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800080808000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B0000007B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      00000000000000000000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000007B0000007B0000007B00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000007B0000007B0000007B0000007B0000007B00FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C00000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B0000007B00FFFFFF000000000000007B0000007B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000007B000000
      7B0000007B0000007B00FFFFFF0000000000000000000000000000007B000000
      7B00FFFFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000007B0000007B000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      7B0000007B00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000007B0000007B00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000007B0000007B00FFFFFF00000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFE79C0070000
      C007E43F80030000C007C27300010000C007C3E700010000C007E04700010000
      C007F00F00000000C007F81F00000000C007FC3F80000000C007F81FC0000000
      C007F01FE0010000C007C007E0070000C00F8023F0070000C01F8C31F0030000
      C03FFE7FF8030000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object actmngRdv: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actNovo
            Caption = '&Novo'
            ImageIndex = 0
          end
          item
            Action = actCancela
            Caption = '&Cancelar'
            ImageIndex = 1
          end
          item
            Action = actImpAdiant
            Caption = '&Imprimir Adiantamento'
            ImageIndex = 2
          end>
        ActionBar = ActionToolBar2
      end>
    Images = ImageList1
    Left = 512
    Top = 128
    StyleName = 'XP Style'
    object actNovo: TAction
      Category = 'Adiantamento'
      Caption = 'Novo'
      ImageIndex = 0
      OnExecute = actNovoExecute
    end
    object actCancela: TAction
      Category = 'Adiantamento'
      Caption = 'Cancelar'
      ImageIndex = 1
      OnExecute = actCancelaExecute
    end
    object actImpAdiant: TAction
      Category = 'Adiantamento'
      Caption = 'Imprimir Adiantamento'
      ImageIndex = 2
      OnExecute = actImpAdiantExecute
    end
  end
end
