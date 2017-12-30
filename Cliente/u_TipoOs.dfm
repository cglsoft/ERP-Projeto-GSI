object frmTipoOs: TfrmTipoOs
  Left = 223
  Top = 104
  Caption = 'Tipo OS'
  ClientHeight = 484
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tmbEdicaoTop1: TtmbEdicaoTop
    Tag = 255
    Left = 0
    Top = 0
    Width = 655
    Height = 33
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 651
      end>
    FixedSize = True
    TtmbCria = True
    TtmbFormulario = Owner
    ExplicitWidth = 152
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 655
    Height = 142
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 5
      Width = 59
      Height = 13
      Caption = 'Tipo O.S. ID'
    end
    object Label2: TLabel
      Left = 85
      Top = 5
      Width = 126
      Height = 13
      Caption = 'Descri'#231#227'o do Tipo de O.S.'
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 20
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TIPOOSID'
      DataSource = dmOS.dsTipoOS
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 20
      Width = 550
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = dmOS.dsTipoOS
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 47
      Width = 626
      Height = 92
      Caption = 'Controle Internos por Tipo de O.S.'
      TabOrder = 2
      object wwCheckBox1: TwwCheckBox
        Left = 197
        Top = 14
        Width = 153
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Bloquear Abertura de O.S.'
        DataField = 'BLOQABERTURAOS'
        DataSource = dmOS.dsTipoOS
        TabOrder = 0
      end
      object wwCheckBox2: TwwCheckBox
        Left = 432
        Top = 14
        Width = 169
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Bloquear Lan'#231'amentos na O.S.'
        DataField = 'BLOQLANCAMENTOS'
        DataSource = dmOS.dsTipoOS
        TabOrder = 1
      end
      object wwCheckBox4: TwwCheckBox
        Left = 6
        Top = 68
        Width = 145
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Exigir Corre'#231#227'o de O.S.'
        DataField = 'EXIGIRCORRELACAO'
        DataSource = dmOS.dsTipoOS
        TabOrder = 2
      end
      object wwCheckBox5: TwwCheckBox
        Left = 197
        Top = 32
        Width = 244
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Bloquear Movimenta'#231#227'o de Produtos na O.S.'
        DataField = 'BLOQMOVPRODUTOS'
        DataSource = dmOS.dsTipoOS
        TabOrder = 3
      end
      object wwCheckBox3: TwwCheckBox
        Left = 197
        Top = 50
        Width = 188
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Lan'#231'amentos RDV c/ O.S. restrita'
        DataField = 'LANCRDVOSRESTRITA'
        DataSource = dmOS.dsTipoOS
        TabOrder = 4
      end
      object wwCheckBox6: TwwCheckBox
        Left = 197
        Top = 69
        Width = 188
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Garantia de Aparelho / Componente'
        DataField = 'GARANTIA'
        DataSource = dmOS.dsTipoOS
        TabOrder = 5
      end
      object wwCheckBox7: TwwCheckBox
        Left = 6
        Top = 50
        Width = 181
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Exigir S'#233'rie Para Fechamento O.S.'
        DataField = 'EXIGIRSERIEOSFECH'
        DataSource = dmOS.dsTipoOS
        TabOrder = 6
      end
      object wwCheckBox8: TwwCheckBox
        Left = 432
        Top = 33
        Width = 84
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Derivada'
        DataField = 'DERIVADA'
        DataSource = dmOS.dsTipoOS
        TabOrder = 7
      end
      object wwCheckBox9: TwwCheckBox
        Left = 433
        Top = 51
        Width = 181
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Fechamento Espec'#237'fico de O.S.'
        DataField = 'FECHESPECIFICO'
        DataSource = dmOS.dsTipoOS
        TabOrder = 8
      end
      object wwCheckBox10: TwwCheckBox
        Left = 6
        Top = 14
        Width = 181
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Exigir S'#233'rie  para Abertura'
        DataField = 'EXIGIRSERIEABERTURA'
        DataSource = dmOS.dsTipoOS
        TabOrder = 9
      end
      object wwCheckBox11: TwwCheckBox
        Left = 6
        Top = 32
        Width = 169
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Exigir Modelo para Abertura'
        DataField = 'EXIGIRMODELOABERTURA'
        DataSource = dmOS.dsTipoOS
        TabOrder = 10
      end
      object wwCheckBox12: TwwCheckBox
        Left = 433
        Top = 72
        Width = 181
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = '1'
        ValueUnchecked = '0'
        DisplayValueChecked = '1'
        DisplayValueUnchecked = '0'
        NullAndBlankState = cbUnchecked
        Caption = 'Exigir Libera'#231#227'o'
        DataField = 'EXIGIRLIBERACAO'
        DataSource = dmOS.dsTipoOS
        TabOrder = 11
      end
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 464
    Width = 655
    Height = 20
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Style = psControl
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
  object PageControl1: TPageControl
    Left = 0
    Top = 175
    Width = 655
    Height = 289
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Natureza'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object tmbEdicaoBottom1: TtmbEdicaoBottom
        Left = 0
        Top = 229
        Width = 647
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
            Width = 443
          end
          item
            Break = False
            ImageIndex = -1
            MinHeight = 26
            Width = 46
          end>
        TtmbCria = True
        TtmbClientDataSet = dmOS.cdsTipoOS
        TtmbFormulario = Owner
        TtmbCloseComando = True
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 580
        Top = 0
        Width = 67
        Height = 120
        Align = alRight
        BevelOuter = bvLowered
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmOS.cdsTipoOSCFOP
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsTipoOSCFOP
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Item'
      end
      object dbgrdPadraoPesquisa: TDBGrid
        Left = 0
        Top = 0
        Width = 580
        Height = 229
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOS.dsTipoOSCFOP
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
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NATUREZAOPID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAONATUREZA'
            Width = 222
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
end
