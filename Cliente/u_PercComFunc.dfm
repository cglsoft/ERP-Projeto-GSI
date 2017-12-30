object frmPercComFunc: TfrmPercComFunc
  Left = 223
  Top = 104
  Caption = 'Percentual de Comiss'#227'o do Funcion'#225'rio'
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
    BandBorderStyle = bsNone
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 651
      end>
    FixedSize = True
    TtmbCria = True
    TtmbFormulario = Owner
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 655
    Height = 80
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label8: TLabel
      Left = 10
      Top = 38
      Width = 69
      Height = 13
      Caption = 'Tipo Venda ID'
    end
    object Label1: TLabel
      Left = 10
      Top = 2
      Width = 94
      Height = 13
      Caption = 'Classe Vendedor ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 442
      Top = 38
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      FocusControl = DBEdit3
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 10
      Top = 51
      Width = 77
      Height = 20
      OnCustomDlg = wwDBComboDlg3CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'TIPOVENDAID'
      DataSource = dmPP.dsPercComFunc
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit8: TDBEdit
      Left = 102
      Top = 51
      Width = 334
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DESCRICAOTIPOVENDA'
      DataSource = dmPP.dsPercComFunc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 10
      Top = 17
      Width = 77
      Height = 20
      Hint = 'C'#243'digo do vendedor'
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'CLASSEVENDEDORID'
      DataSource = dmPP.dsPercComFunc
      TabOrder = 2
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit1: TDBEdit
      Left = 102
      Top = 17
      Width = 503
      Height = 20
      Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOCLASSEVENDEDOR'
      DataSource = dmPP.dsPercComFunc
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 442
      Top = 51
      Width = 162
      Height = 21
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmPP.dsPercComFunc
      ReadOnly = True
      TabOrder = 4
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
    Top = 113
    Width = 655
    Height = 351
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Grupos'
      object tmbEdicaoBottom1: TtmbEdicaoBottom
        Left = 0
        Top = 291
        Width = 647
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
            Width = 443
          end
          item
            Break = False
            ImageIndex = -1
            MinHeight = 26
            Width = 46
          end>
        TtmbCria = True
        TtmbClientDataSet = dmPP.cdsPercComFunc
        TtmbFormulario = Owner
        TtmbCloseComando = True
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 580
        Top = 0
        Width = 67
        Height = 291
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
        TtmbClientDataSet = dmPP.cdsPercComFuncGrupo
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPercComFuncGrupo
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Item'
      end
      object dbgrdPadraoPesquisa: TDBGrid
        Left = 0
        Top = 0
        Width = 580
        Height = 291
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmPP.dsPercComFuncGrupo
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
            FieldName = 'GRUPOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_SIGLAGRUPO'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRPERCENTUAL'
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
