object frmDemoCatalogo: TfrmDemoCatalogo
  Left = 223
  Top = 104
  Caption = 'Demo Cat'#225'logo'
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 655
    Height = 208
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 69
      Height = 13
      Caption = 'Demo Catal.ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 82
      Top = 5
      Width = 113
      Height = 13
      Caption = 'Descri'#231#227'o Equipamento'
      FocusControl = DBEdit2
    end
    object Label6: TLabel
      Left = 272
      Top = 42
      Width = 70
      Height = 13
      Caption = 'PartNumber ID'
      FocusControl = DBEdit6
    end
    object Label8: TLabel
      Left = 82
      Top = 40
      Width = 38
      Height = 13
      Caption = 'S'#233'rie ID'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 552
      Top = 41
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      FocusControl = DBEdit9
    end
    object Label45: TLabel
      Left = 8
      Top = 41
      Width = 53
      Height = 13
      Caption = 'Empresa Id'
    end
    object Label55: TLabel
      Left = 8
      Top = 77
      Width = 51
      Height = 13
      Caption = 'Produto ID'
      FocusControl = DBEdit1
    end
    object Label54: TLabel
      Left = 82
      Top = 76
      Width = 116
      Height = 13
      Caption = 'Descri'#231#227'o em Portugu'#234's'
      WordWrap = True
    end
    object Label14: TLabel
      Left = 8
      Top = 118
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
      WordWrap = True
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 18
      Width = 69
      Height = 21
      DataField = 'DEMOCATALOGOID'
      DataSource = dmOS.dsDemoCatalogo
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 82
      Top = 17
      Width = 558
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAOEQUIPAMENTO'
      DataSource = dmOS.dsDemoCatalogo
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 268
      Top = 55
      Width = 261
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_PARTNUMBERID'
      DataSource = dmOS.dsDemoCatalogo
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 82
      Top = 54
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SERIEID'
      DataSource = dmOS.dsDemoCatalogo
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 552
      Top = 55
      Width = 89
      Height = 21
      Color = clInactiveBorder
      DataField = 'USUARIO'
      DataSource = dmOS.dsDemoCatalogo
      ReadOnly = True
      TabOrder = 4
    end
    object wwDBComboDlg6: TwwDBComboDlg
      Left = 8
      Top = 55
      Width = 69
      Height = 20
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'EMPRESAID'
      DataSource = dmOS.dsDemoCatalogo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 91
      Width = 69
      Height = 21
      DataField = 'PRODUTOID'
      DataSource = dmOS.dsDemoCatalogo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit15: TDBEdit
      Left = 82
      Top = 89
      Width = 558
      Height = 21
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOPORTUGUES'
      DataSource = dmOS.dsDemoCatalogo
      ReadOnly = True
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 82
      Top = 116
      Width = 558
      Height = 82
      Color = clInactiveBorder
      DataField = 'L_OBSERVACAO'
      DataSource = dmOS.dsDemoCatalogo
      ReadOnly = True
      TabOrder = 8
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
    Top = 241
    Width = 655
    Height = 223
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Natureza'
      object tmbEdicaoBottom1: TtmbEdicaoBottom
        Left = 0
        Top = 163
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
        TtmbClientDataSet = dmOS.cdsTipoOS
        TtmbFormulario = Owner
        TtmbCloseComando = True
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 580
        Top = 0
        Width = 67
        Height = 163
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
        TtmbClientDataSet = dmOS.cdsDemoCatalogoItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmOS.dsDemoCatalogoItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Item'
      end
      object dbgrdPadraoPesquisa: TDBGrid
        Left = 0
        Top = 0
        Width = 580
        Height = 163
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmOS.dsDemoCatalogoItem
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
            FieldName = 'ITEMID'
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
            FieldName = 'L_DESCRICAOPORTUGUES'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_PARTNUMBERID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_OBSERVACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIEID'
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
