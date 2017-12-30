object frmInventario: TfrmInventario
  Left = 343
  Top = 100
  Caption = 'Invent'#225'rio'
  ClientHeight = 515
  ClientWidth = 901
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 281
    Top = 59
    Height = 436
    ExplicitHeight = 429
  end
  object pgctrlInventario: TPageControl
    Left = 284
    Top = 59
    Width = 617
    Height = 436
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = pgctrlInventarioChange
    object TabSheet1: TTabSheet
      Hint = '2087'
      Caption = 'Invent'#225'rio'
      object Splitter2: TSplitter
        Left = 0
        Top = 193
        Width = 609
        Height = 4
        Cursor = crVSplit
        Align = alTop
        ExplicitWidth = 487
      end
      object pgctrlItens: TPageControl
        Left = 0
        Top = 197
        Width = 609
        Height = 211
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'Itens inventariados'
          object dbgrdInventarioItem: TDBGrid
            Left = 0
            Top = 0
            Width = 534
            Height = 183
            Hint = 'Produtos inventariados'
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmEF.dsInventarioItem
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
            OnTitleClick = dbgrdInventarioItemTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'TIPOCTGINVENTID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_TIPOCTGINVENT'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATACFGFISICA'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REALIZADORID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_NOME_REALIZADOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIGITADORID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_NOME_DIGITADOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPRESAID'
                Visible = True
              end>
          end
          object tmbEdtListItensInvent: TtmbEdicaoLista
            Left = 534
            Top = 0
            Width = 67
            Height = 183
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
            TtmbClientDataSet = dmEF.cdsInventarioItem
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmEF.dsInventarioItem
            TtmbFontDefaut = False
            TtmbDesativaInserir = True
            TtmbDireito = 'Itens'
            object tPanel13: tPanel1
              Left = 1
              Top = 117
              Width = 70
              Height = 24
              AutoSize = True
              TabOrder = 0
              tmbDBGrid = dbgrdInventarioItem
              tmbCria = True
              tmbAjusta = True
            end
          end
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 609
        Height = 193
        ActivePage = TabSheet6
        Align = alTop
        TabOrder = 1
        object TabSheet6: TTabSheet
          Caption = 'Invent'#225'rio'
          object dbgrdInventario: TDBGrid
            Left = 0
            Top = 0
            Width = 534
            Height = 165
            Hint = 'Produtos inventariados'
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmEF.dsInventario
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
            OnDblClick = dbgrdInventarioDblClick
            OnTitleClick = dbgrdInventarioItemTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'INVENTARIOID'
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HISTINVENTARIOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCR_INVENTARIO'
                Width = 192
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_SIGLAGRUPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_SUBGRUPOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_PARTNUMBERID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_LOCALIZACAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAINVENTARIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTOQUEFISICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTOQUEQUARENTENA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_ESTOQUEFISICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTOQUEDIFERENCA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_ESTOQUETOTAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DIFERENCASALDO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_CUSTOMEDIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
          object tmbEdtLstInventario: TtmbEdicaoLista
            Left = 534
            Top = 0
            Width = 67
            Height = 165
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
            TtmbClientDataSet = dmEF.cdsInventario
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmEF.dsInventario
            TtmbFontDefaut = False
            TtmbDesativaInserir = False
            TtmbDireito = 'Produtos'
            object tPanel11: tPanel1
              Left = 1
              Top = 117
              Width = 70
              Height = 24
              AutoSize = True
              TabOrder = 0
              tmbDBGrid = dbgrdInventario
              tmbCria = True
              tmbAjusta = True
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Digita'#231#227'o do Invent'#225'rio'
      ImageIndex = 1
      object dbgrdInventarioDIG: TDBGrid
        Left = 0
        Top = 0
        Width = 542
        Height = 408
        Hint = 'Produtos inventariados'
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmEF.dsInventarioDig
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
        OnDblClick = dbgrdInventarioDIGDblClick
        OnTitleClick = dbgrdInventarioItemTitleClick
      end
      object tmbEdtListDigitacao: TtmbEdicaoLista
        Left = 542
        Top = 0
        Width = 67
        Height = 408
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
        TtmbVertical = True
        TtmbTamMax = False
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Digita'#231#227'o'
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Produto'
      ImageIndex = 2
      object dbgrdProduto: TDBGrid
        Left = 0
        Top = 0
        Width = 609
        Height = 408
        Hint = 'Rela'#231#227'o de produtos do Estoque'
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmEF.dsProduto
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
        OnDblClick = dbgrdProdutoDblClick
        OnTitleClick = dbgrdInventarioItemTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEFANTASIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOPORTUGUES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOINGLES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOVOUSADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_SIGLAGRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAO_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBGRUPOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAO_SUBGRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARTNUMBERID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORNECEDORID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOMEFORNECEDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GERACODBARRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOCALIZACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADEID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOUNIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APLICACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCMID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAONCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INCENTIVOICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDUCAOICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAII'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINICIALII'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFINALII'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINICIALIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFINALIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUSPENSAOIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISENTOIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTBATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTBDESPESA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTACTBRECEITA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMEDIOUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMEDIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECOVENDAMINIMO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFOBUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUENOVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEREVISADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEFISICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEPEDENTRADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEPEDSAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEEMTERCEIRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEDETERCEIRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEMINIMO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEEMPENHO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEVALE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEESTORNO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUETOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM2ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM3ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATANCM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATANCM2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATANCM3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTATEMPIPI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTATEMPII'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sqldtsProdutoItem'
            Visible = True
          end>
      end
    end
  end
  object fcstbarStatus: TfcStatusBar
    Left = 0
    Top = 495
    Width = 901
    Height = 20
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        Name = 'UserName'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '300'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    SimplePanel = False
    SizeGrip = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object tmbManutTop1: TtmbManutTop
    Left = 0
    Top = 0
    Width = 901
    Height = 59
    AutoSize = True
    Bands = <
      item
        ImageIndex = -1
        MinHeight = 28
        Width = 664
      end
      item
        Break = False
        Control = tmbajtgrdInventario
        ImageIndex = -1
        MinHeight = 24
        Width = 231
      end
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 897
      end>
    TtmbCria = True
    TtmbPreencheCombos = False
    TtmbDataSource = dmEF.dsInventario
    TtmbDmGsiCdsSQL = dmGsi.cdsSQL
    TtmbRetornoVisivel = False
    TtmbPesquisar = False
    object tmbajtgrdInventario: tPanel1
      Left = 675
      Top = 2
      Width = 70
      Height = 24
      AutoSize = True
      TabOrder = 2
      tmbDBGrid = dbgrdInventario
      tmbCria = True
      tmbAjusta = True
    end
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 762
      Height = 26
      ActionManager = actmngInventario
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 30
      Width = 884
      Height = 25
      UseSystemFont = False
      ActionManager = actmngInventario
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
  object pgctrlConfiguracao: TPageControl
    Left = 0
    Top = 59
    Width = 281
    Height = 436
    ActivePage = TabSheet2
    Align = alLeft
    TabOrder = 3
    object TabSheet2: TTabSheet
      Hint = '2087'
      Caption = 'Configura'#231#227'o'
      object tmbdtinspCadastro: TtmbDataInspector
        Left = 0
        Top = 0
        Width = 273
        Height = 408
        DisableThemes = False
        Align = alClient
        TabOrder = 0
        DataSource = CfgInvent
        Items = <
          item
            DataSource = CfgInvent
            DataField = 'EMPRESAID'
            Caption = 'Empresa ID'
            ReadOnly = True
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'L_NOMEFANTASIA'
            Caption = 'Nome Empresa'
            ReadOnly = True
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'HISTINVENTARIOID'
            Caption = 'Hist. Inventario ID'
            CustomControl = wwDBComboDlg3
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'L_DATAINVENTARIO'
            Caption = 'Dt. Inventario'
            ReadOnly = True
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'L_DESCR_INVENTARIO'
            Caption = 'Descr. Invent'#225'rio'
            ReadOnly = True
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'TIPOCTGINVENTID'
            Caption = 'Tipo Ctg Invent'#225'rio ID'
            CustomControl = wwDBComboDlg1
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'L_TIPOCTGINVENT'
            Caption = 'Descr. Tipo Contagem '
            ReadOnly = True
            WordWrap = False
          end
          item
            DataSource = CfgInvent
            DataField = 'BLOQUEARDIGITACAO'
            Caption = 'Bloquear Digita'#231#227'o'
            CustomControl = wwCheckBox1
            WordWrap = False
          end>
        CaptionWidth = 125
        Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert]
        PaintOptions.AlternatingRowRegions = [arrFixedColumns]
        PaintOptions.BackgroundOptions = [coFillDataCells, coBlendFixedColumn, coBlendActiveRecord, coBlendAlternatingRow]
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWindowText
        CaptionFont.Height = -11
        CaptionFont.Name = 'MS Sans Serif'
        CaptionFont.Style = []
        LineStyleCaption = ovDottedLine
        LineStyleData = ovDottedLine
        CaptionIndent = 16
        ExplicitLeft = -2
        ExplicitTop = -2
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 136
          Top = 159
          Width = 142
          Height = 15
          TabStop = False
          OnCustomDlg = wwDBComboDlg3CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          BorderStyle = bsNone
          Ctl3D = False
          DataField = 'HISTINVENTARIOID'
          DataSource = CfgInvent
          ParentCtl3D = False
          Picture.PictureMaskFromDataSet = False
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
          Visible = False
        end
        object wwDBComboDlg1: TwwDBComboDlg
          Left = 136
          Top = 183
          Width = 142
          Height = 15
          TabStop = False
          OnCustomDlg = wwDBComboDlg1CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          BorderStyle = bsNone
          Ctl3D = False
          DataField = 'TIPOCTGINVENTID'
          DataSource = CfgInvent
          ParentCtl3D = False
          Picture.PictureMaskFromDataSet = False
          TabOrder = 1
          WordWrap = False
          UnboundDataType = wwDefault
          Visible = False
        end
        object wwCheckBox1: TwwCheckBox
          Left = 120
          Top = 280
          Width = 142
          Height = 15
          TabStop = False
          DisableThemes = False
          AlwaysTransparent = False
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          DisplayValueChecked = 'True'
          DisplayValueUnchecked = 'False'
          NullAndBlankState = cbUnchecked
          Ctl3D = False
          DataField = 'BLOQUEARDIGITACAO'
          DataSource = CfgInvent
          ParentCtl3D = False
          TabOrder = 2
          Visible = False
        end
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 152
        Width = 145
        Height = 25
        Caption = 'Gravar Configura'#231#227'o'
        TabOrder = 1
        OnClick = BitBtn1Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0097433F0097433F00C2999900C2999900C2999900C2999900C2999900C299
          9900C299990092302F0097433F00FF00FF00FF00FF00FF00FF00FF00FF009743
          3F00CD666600C6636300E4E0E400922B2B00922B2B00E6E5E700E5E3E500E4E0
          E400CECACC00922B2B009E43410097433F00FF00FF00FF00FF00FF00FF009743
          3F00CD656600C1626200E5E3E500922B2B00922B2B00E4E0E400E6E5E700E4E0
          E400CECBCC00922B2B009E43410097433F00FF00FF00FF00FF00FF00FF009743
          3F00CD656600C1626200E5E3E500922B2B00922B2B00E4E0E400E6E5E700E6E5
          E700CECBCC00922B2B009E43410097433F00FF00FF00FF00FF00FF00FF009743
          3F00CD656600C1626200E6E5E700E6E5E700E4E0E400E4E0E400E4E0E400E4E0
          E400CECBCC00922B2B009E43410097433F00FF00FF00FF00FF00FF00FF009743
          3F00B8646400C47C7B00C89E9E00CAA8A800CAA8A800CAA8A800C9A0A000C9A0
          A000CAA8A800CAA8A800CC66660097433F00FF00FF00FF00FF00FF00FF009743
          3F00CC666600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
          F800F8F8F800F8F8F800CC66660097433F00FF00FF00FF00FF00FF00FF009743
          3F00CC666600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
          F800F8F8F800F8F8F800CC66660097433F00FF00FF00FF00FF00FF00FF009743
          3F00CC666600F8F8F800CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCBCC00CDCB
          CC00CDCBCC00F8F8F800CC66660097433F00FF00FF00FF00FF00FF00FF009743
          3F00CC666600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
          F800F8F8F800F8F8F800CC66660097433F00FF00FF00FF00FF00FF00FF009743
          3F00CC666600F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
          F800F8F8F800F8F8F800CC66660097433F00FF00FF00FF00FF00FF00FF00FF00
          FF0097433F00F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
          F800F8F8F800F8F8F80097433F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
  end
  object imglstInventario: TImageList
    Left = 377
    Top = 145
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      00000000000000000000000000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000080808000000000000000
      00000000000000000000000000000000000000000000BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000FFFFFF0000FFFF0000000000808080000000
      00000000000000000000000000000000000000000000BF000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00BF0000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      80000000000000000000000000000000000000000000BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800000000000FFFFFF0000FFFF000000000000000000FFFFFF0000FFFF000000
      00008080800000000000000000000000000000000000BF000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00BF0000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000080808000000000000000000000000000BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000000000000000000000000000
      00000000000000000000808080000000000000BFBF0000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF0000000000808080000000000000000000BF000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00BF0000000000000000000000000000000000
      00000000000000000000000000000000000000BFBF0000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008080800000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0080808000000000000000000000000000BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF0000000000000000000000000000000000
      0000000000000000000000FFFF000000000000BFBF0000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF0000000000808080000000000000000000BF000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00BF0000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF00000000000000000000FFFF00FFFFFF0000FF
      FF000000000080808000000000000000000000000000BF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BF00000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF000000000000000000FFFFFF0000FFFF000000
      00008080800000000000000000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF00000000000000000000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00000000008080
      80000000000000000000000000000000000000000000BF000000FFFFFF00BF00
      0000BF000000BF000000FFFFFF00BF000000BF000000BF000000FFFFFF00BF00
      0000BF000000BF000000FFFFFF00BF0000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000808080000000
      00000000000000000000000000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF000000BF000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF0000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD000000000000000000A57B7300E7BDBD00F7BD
      BD00EFBDB500EFBDB500EFBDB500EFBDB500EFBDB500EFBDB500EFBDB500EFBD
      B500EFB5B500E7B594008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD0052520000EFEF0000ADAD
      AD00ADADAD00BDBDBD00BDBDBD00BDBDBD0000000000BD8C7B00E7E7E700FFF7
      EF00848484008484840084848400848484008484840084848400848484008484
      840084848400FFD6C60094636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFF
      FF0000000000000000000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A50052520000EFEF00008484
      0000A5A5A500A5A5A500A5A5A500A5A5A50000000000C6948400EFEFE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFD600FFD6CE00946B6300000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      0000BFBF0000BFBF000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50094949400949494009494940052520000EFEF00008484
      00008484000052520000848484008484840000000000C6948400EFEFEF00FFFF
      F700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFDE00FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFD6CE009C6B6B00000000000000000000000000808080008080
      80008080800080808000808080008080800000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FF00
      0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000CE9C8400EFEFEF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      840084848400FFD6CE009C6B6B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A005A5A5A005A5A5A0052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000CE9C8400EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFDE00FFCECE009C6B6B0000000000000000000000000000000000C0C0
      C000C0C0C000C0C0C00080808000FFFF000000000000FFFF0000FFFF0000FFFF
      0000000000000000000080808000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00005252000084848400ADADAD00ADADAD00BDBDBD0052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000CEA58400F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7E700FFF7
      E700FFEFDE00FFC6C6009C736B00000000000000000000000000000000000000
      0000C0C0C00080808000FFFF000000000000FFFF0000FFFF0000FFFF00000000
      0000C0C0C000C0C0C00000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00005252000084840000A5A5A500ADADAD00ADADAD0052520000EFEF00005A5A
      5A00848400005A5A5A00ADADAD000000000000000000D6A58C00F7F7F700FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      840084848400FFBDB5009C737300000000000000000000000000000000000000
      000000000000FFFF000000000000FFFF0000FFFF0000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000084848400848484008484
      840052520000EFEF000084840000A5A5A500ADADAD0052520000EFEF0000BDBD
      BD00848400005A5A5A00ADADAD000000000000000000D6A58C00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFBDB5009C737300000000000000000000000000000000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000FFFF000000000000FFFF0000000000FFFFFF0000000000FFFF
      FF0000FFFF00FFFFFF0000000000000000005252000084840000848400008484
      000084840000FFFF0000EFEF000084840000A5A5A50052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000DEAD8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFF7E700FFA5A500A573730000000000000000000000000000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000C0C0C000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000052520000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00EFEF00005252000052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000DEAD8C00F7F7F700FFFF
      FF00848484008484840084848400FFFFFF00FFFFFF00FFFFF700FFFFF700E7C6
      AD00E7A59C00E79C9400A5737300000000000000000000000000FFFF00000000
      0000FFFF0000FFFF0000FFFF000000000000C0C0C000C0C0C000C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000052520000525200005252
      000052520000FFFFCE00FFFF0000525200009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000E7B58C00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300B5847300B5847300A57B73000000000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000000000000000000000000000C0C0C000C0C0C000C0C0
      C000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000052520000EFEF0000525200008C8C8C009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD000000000000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300FFBD5A00E7A56B00EFD6C600000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005252000052520000848484008C8C8C008C8C8C0094949400FFFF00008484
      0000848400005A5A5A00ADADAD000000000000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700B584
      7300E7AD8400D69C840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008C8C8C008C8C8C0094949400FFFF
      0000848400005A5A5A00ADADAD000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300F7DED6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400848484008C8C8C008C8C8C009494
      9400FFFF00005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00008000000080000000000000000000000000000000FFFFFF00808080008080
      80008080800080808000FFFFFF00000000000000000000000000000000000000
      0000000000008080800080808000FFFFFF000000000080808000FFFFFF000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0008080800080808000C0C0C00080808000C0C0C000000000008080
      8000000000008080800000000000000000008000000080000000800000008000
      00008000000080000000800000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000000000000000000080808000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00008000000080000000000000000000000000000000FFFFFF00808080008080
      80008080800080808000FFFFFF00000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000FFFFFF000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00808080000000000000000000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C000C0C0C00000FF000000FF000000FF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000008080800000000000FFFF000000000000FFFFFF00FFFFFF000000
      000080808000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0008080800080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      80008080800080808000FFFFFF00000000000000000000000000808080008080
      800080808000808080000000000000000000FFFF000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0080808000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000FFFF008080800000000000000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C00000000000C0C0
      C00000000000C0C0C00080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFF0000000000000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000C0C0C000000000008080800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFF00000000
      0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF0080808000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000800000008000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000C0C0C00000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      000000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF0080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BF00
      BF00BF00BF00BF00BF00000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFF00000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BF00
      BF0000000000000000000000000000000000BF000000BF000000BF000000BF00
      000000000000FFFF000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF0080808000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BF00
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FE7F8000FE0F0000
      FC3F8000F8030000F81F8000F8030000F00F8000F0030000E0078000F0030000
      C0038000FC03000080018000FC03000080018000F8030000C0018000F0030000
      E0038000C0030000F0078000C0030000F80F8000F0070000FC1F8000F80F0000
      FE3FFFFFFC3F0000FF7FFFFFFFFF00008001FFFF800700018001FFFF80070000
      8001FFC1800700008001800180070000800180018007FC01800180008007FC01
      8001C0008007F0018001E0008007F0018001F000800280018001E00F80000001
      8001C0078000000180018003FC00800180010101FE00F00180010381FF02F001
      800307C1FFFFFC018007FFFFFFFFFC03FFFFFFFFEABFFFFFFF008001FF9FFFFF
      F700B891FF8FE007F300B891FF87C003010081B5FF97C003F300B89100C3C003
      F700B81100CBC001FF00823D04E1C001C10080110001C001C100BC810000E003
      01FF7E810001F00F01FF2281000FF80F01FF2E01000FF80703FF2E00F00FFC07
      07FF85FCF00FFFFF0FFFC3FFF00FFFFF00000000000000000000000000000000
      000000000000}
  end
  object actmngInventario: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actHistInventario
                Caption = '&Hist. Invent'#225'rio'
                ImageIndex = 0
              end
              item
                Action = actTipoContInventario
                Caption = '&Tipo Cont. Invent'#225'rio'
                ImageIndex = 1
              end>
            Caption = '&Tabelas'
            ImageIndex = 9
          end
          item
            Items = <
              item
                Action = actGerarInvent
                Caption = '&Gerar invent'#225'rio'
                ImageIndex = 10
              end
              item
                Action = actAtualInvent
                ImageIndex = 10
              end>
            Caption = 'Ferra&mentas'
            ImageIndex = 2
          end
          item
            Items = <
              item
                Action = actRelFichaInventario
                Caption = '&Ficha Inventario'
                ImageIndex = 3
              end
              item
                Action = actRelFichaInventarioII
                Caption = 'Fi&cha de Invent'#225'rio II'
                ImageIndex = 3
              end
              item
                Action = actRelProdutoSaldos
                Caption = '&Saldo Produtos'
                ImageIndex = 3
              end
              item
                Action = actRelRegCtrInvent
                Caption = '&Registro Controle Invent'#225'rio'
                ImageIndex = 3
              end
              item
                Action = actRelInventSaldoProd
                Caption = '&Invent'#225'rio Saldo Produtos'
                ImageIndex = 3
              end>
            Caption = '&Relat'#243'rios'
            ImageIndex = 3
          end
          item
            Action = actDigitacao
            Caption = '&Digita'#231#227'o'
            ImageIndex = 4
          end
          item
            Items = <
              item
                Action = actAuditSim
                Caption = '&Filtro itens Inventariados'
                ImageIndex = 8
              end
              item
                Action = actAuditNao
                Caption = 'F&iltro itens N'#227'o Inventariados'
                ImageIndex = 8
              end
              item
                Action = actAuditDigitacao
                Caption = '&Auditoria da Digita'#231#227'o'
                ImageIndex = 8
              end
              item
                Action = actDifDigitacao
                Caption = '&Diferen'#231'a entre digita'#231#227'o'
                ImageIndex = 8
              end
              item
                Action = actApuracao
                Caption = 'A&pura'#231#227'o Invent'#225'rio'
                ImageIndex = 8
              end>
            Caption = '&Auditoria'
            ImageIndex = 8
          end
          item
            Action = actConfiguracao
            Caption = '&Configura'#231#227'o'
            ImageIndex = 6
          end
          item
            Action = actExportar
            Caption = '&Exportar'
            ImageIndex = 5
          end
          item
            Action = actAtualSaldos
            Caption = 'At&ual Saldos'
            ImageIndex = 10
          end
          item
            Action = actFechar
            ImageIndex = 7
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = imglstInventario
    Left = 376
    Top = 88
    StyleName = 'XP Style'
    object actHistInventario: TAction
      Category = 'Tabelas'
      Caption = 'Hist. Invent'#225'rio'
      Hint = 'Manuten'#231#227'o na Tabela de Hist'#243'rico de invent'#225'rio'
      ImageIndex = 0
      OnExecute = actHistInventarioExecute
    end
    object actTipoContInventario: TAction
      Category = 'Tabelas'
      Caption = 'Tipo Cont. Invent'#225'rio'
      Hint = 'Tipo Contagem do Invent'#225'rio'
      ImageIndex = 1
      OnExecute = actTipoContInventarioExecute
    end
    object actGerarInventario: TAction
      Category = 'Inventario'
      Caption = '&Gerar Invent'#225'rio'
      Hint = 'Gerar registro de produtos para o invent'#225'rio'
      ImageIndex = 2
    end
    object actRelFichaInventario: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Ficha Inventario'
      Hint = 'Impress'#227'o da Ficha de invent'#225'rio'
      ImageIndex = 3
      OnExecute = actRelFichaInventarioExecute
    end
    object actRelFichaInventarioII: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Ficha de Invent'#225'rio II'
      Hint = 
        'Relat'#243'rio de ficha de invent'#225'rio ( 3 produtos individuais por p'#225 +
        'gina)'
      ImageIndex = 3
      OnExecute = actRelFichaInventarioIIExecute
    end
    object actRelProdutoSaldos: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Saldo Produtos'
      Hint = 'Relat'#243'rio dos saldos dos produtos'
      ImageIndex = 3
      OnExecute = actRelProdutoSaldosExecute
    end
    object actDigitacao: TAction
      Category = 'Inventario'
      Caption = 'Digita'#231#227'o'
      Hint = 'Digita'#231#227'o do invent'#225'rio'
      ImageIndex = 4
      OnExecute = actDigitacaoExecute
    end
    object actExportar: TAction
      Category = 'Inventario'
      Caption = 'Exportar'
      Hint = 'Exportar para Microsoft Excel'
      ImageIndex = 5
      OnExecute = actExportarExecute
    end
    object actConfiguracao: TAction
      Category = 'Inventario'
      Caption = 'Configura'#231#227'o'
      Hint = 'Configura'#231#227'o de gera'#231#227'o do invent'#225'rio'
      ImageIndex = 6
      OnExecute = actConfiguracaoExecute
    end
    object actAuditSim: TAction
      Category = 'Auditoria'
      Caption = 'Filtro itens Inventariados'
      Hint = 'Filtro do item que tiveram contagem'
      ImageIndex = 8
      OnExecute = actAuditSimExecute
    end
    object actFechar: TAction
      Category = 'Inventario'
      Caption = '&Fechar'
      Hint = 'Fechar o m'#243'dulo'
      ImageIndex = 7
      OnExecute = actFecharExecute
    end
    object actRelRegCtrInvent: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Registro Controle Invent'#225'rio'
      Hint = 'Relat'#243'rio de Registro Controle Invent'#225'rio'
      ImageIndex = 3
      OnExecute = actRelRegCtrInventExecute
    end
    object actAuditNao: TAction
      Category = 'Auditoria'
      Caption = 'Filtro itens N'#227'o Inventariados'
      Hint = 'Filtro dos itens que n'#227'o tiveram contagem'
      ImageIndex = 8
      OnExecute = actAuditNaoExecute
    end
    object actAuditDigitacao: TAction
      Category = 'Auditoria'
      Caption = 'Auditoria da Digita'#231#227'o'
      ImageIndex = 8
      OnExecute = actAuditDigitacaoExecute
    end
    object actDifDigitacao: TAction
      Category = 'Auditoria'
      Caption = 'Diferen'#231'a entre digita'#231#227'o'
      Hint = 'Diferen'#231'a entre digita'#231#227'o'
      ImageIndex = 8
      OnExecute = actDifDigitacaoExecute
    end
    object actApuracao: TAction
      Category = 'Auditoria'
      Caption = 'Apura'#231#227'o Invent'#225'rio'
      Hint = 'Apura'#231#227'o do invent'#225'rio'
      ImageIndex = 8
      OnExecute = actApuracaoExecute
    end
    object actAtualSaldos: TAction
      Category = 'Auditoria'
      Caption = 'Atual Saldos'
      ImageIndex = 10
      OnExecute = actAtualSaldosExecute
    end
    object actRelInventSaldoProd: TAction
      Category = 'Relat'#243'rios'
      Caption = 'Invent'#225'rio Saldo Produtos'
      ImageIndex = 3
      OnExecute = actRelInventSaldoProdExecute
    end
    object actGerarInvent: TAction
      Category = 'Ferramentas'
      Caption = 'Gerar invent'#225'rio'
      ImageIndex = 10
      OnExecute = actGerarInventExecute
    end
    object actAtualInvent: TAction
      Category = 'Ferramentas'
      Caption = 'Atualizar Invent'#225'rio'
      ImageIndex = 10
      OnExecute = actAtualInventExecute
    end
  end
  object cdsCfgInvent: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 210
    object cdsCfgInventEMPRESAID: TBCDField
      DisplayLabel = 'Empresa ID'
      FieldName = 'EMPRESAID'
      Required = True
      Precision = 8
      Size = 0
    end
    object cdsCfgInventL_NOMEFANTASIA: TStringField
      Tag = 1
      DisplayLabel = 'Nome Empresa'
      FieldName = 'L_NOMEFANTASIA'
      Size = 60
    end
    object cdsCfgInventHISTINVENTARIOID: TBCDField
      DisplayLabel = 'Hist. Inventario ID'
      FieldName = 'HISTINVENTARIOID'
      OnValidate = cdsCfgInventHISTINVENTARIOIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCfgInventL_DATAINVENTARIO: TSQLTimeStampField
      Tag = 1
      DisplayLabel = 'Dt. Inventario'
      FieldName = 'L_DATAINVENTARIO'
    end
    object cdsCfgInventL_DESCR_INVENTARIO: TStringField
      Tag = 1
      DisplayLabel = 'Descr. Invent'#225'rio'
      FieldName = 'L_DESCR_INVENTARIO'
      Size = 100
    end
    object cdsCfgInventTIPOCTGINVENTID: TBCDField
      DisplayLabel = 'Tipo Ctg Invent'#225'rio ID'
      FieldName = 'TIPOCTGINVENTID'
      OnValidate = cdsCfgInventTIPOCTGINVENTIDValidate
      Precision = 8
      Size = 0
    end
    object cdsCfgInventL_TIPOCTGINVENT: TStringField
      Tag = 1
      DisplayLabel = 'Descr. Tipo Contagem '
      FieldName = 'L_TIPOCTGINVENT'
      Size = 100
    end
    object cdsCfgInventBLOQUEARDIGITACAO: TBooleanField
      DisplayLabel = 'Bloquear Digita'#231#227'o'
      FieldName = 'BLOQUEARDIGITACAO'
    end
  end
  object CfgInvent: TDataSource
    AutoEdit = False
    DataSet = cdsCfgInvent
    Left = 243
    Top = 210
  end
end
