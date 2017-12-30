object frmTabelaPreco: TfrmTabelaPreco
  Left = 15
  Top = 10
  Width = 771
  Height = 565
  Caption = 'Tabela de Pre'#231'os'
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 109
    Width = 763
    Height = 371
    ActivePage = TabSheet1
    Align = alClient
    BiDiMode = bdLeftToRight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados do Aparelho'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 755
        Height = 343
        Align = alClient
        BiDiMode = bdRightToLeftNoAlign
        Caption = 'Dados do Equipamento'
        ParentBiDiMode = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 19
          Width = 80
          Height = 13
          Caption = 'Descr.Portugu'#234's'
          FocusControl = DBEdit2
        end
        object Label2: TLabel
          Left = 8
          Top = 40
          Width = 63
          Height = 13
          Caption = 'Descr. Ingl'#234's'
          FocusControl = DBEdit4
        end
        object Label9: TLabel
          Left = 472
          Top = 9
          Width = 38
          Height = 13
          Caption = 'Imagem'
          FocusControl = DBImage1
        end
        object Label11: TLabel
          Left = 8
          Top = 64
          Width = 56
          Height = 13
          Caption = 'Atalho DOC'
          FocusControl = edAtalhoDoc
        end
        object DBEdit2: TDBEdit
          Left = 96
          Top = 16
          Width = 363
          Height = 21
          Hint = 'Descri'#231#227'o Portugu'#234's'
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_DESCRICAOPORTUGUES'
          DataSource = dmPP.dsEquipamento
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 96
          Top = 40
          Width = 363
          Height = 21
          Hint = 'Descri'#231#227'o Ingl'#234's'
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_DESCRICAOINGLES'
          DataSource = dmPP.dsEquipamento
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
        object DBImage1: TDBImage
          Left = 472
          Top = 24
          Width = 272
          Height = 313
          Hint = 'Imagem do Aparelho'
          Color = clCream
          DataField = 'L_IMAGEM'
          DataSource = dmPP.dsEquipamento
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnMouseMove = DBImage1MouseMove
        end
        object edAtalhoDoc: TDBEdit
          Left = 96
          Top = 64
          Width = 340
          Height = 21
          Hint = 'Atalho DOC'
          CharCase = ecUpperCase
          DataField = 'DOC'
          DataSource = dmPP.dsEquipamento
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ShowHint = True
          TabOrder = 2
          OnKeyPress = edAtalhoDocKeyPress
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 88
          Width = 462
          Height = 249
          Caption = 'Pre'#231'os do Equipamento'
          TabOrder = 4
          object Label12: TLabel
            Left = 8
            Top = 19
            Width = 35
            Height = 13
            Caption = 'Vlr FOB'
            FocusControl = DBEdit10
          end
          object Label13: TLabel
            Left = 8
            Top = 40
            Width = 62
            Height = 13
            Caption = 'Vlr. Revenda'
            FocusControl = DBEdit11
          end
          object Label15: TLabel
            Left = 8
            Top = 64
            Width = 34
            Height = 13
            Caption = 'Vlr NET'
            FocusControl = DBEdit12
          end
          object DBEdit10: TDBEdit
            Left = 96
            Top = 16
            Width = 137
            Height = 21
            Hint = 'Vlr. FOB'
            CharCase = ecUpperCase
            Color = clScrollBar
            DataField = 'VLRFOB'
            DataSource = dmPP.dsEquipamento
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            OnKeyPress = edAtalhoDocKeyPress
          end
          object DBEdit11: TDBEdit
            Left = 96
            Top = 40
            Width = 137
            Height = 21
            Hint = 'Vlr. Revenda'
            CharCase = ecUpperCase
            Color = clScrollBar
            DataField = 'VLRREVENDA'
            DataSource = dmPP.dsEquipamento
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
            OnKeyPress = edAtalhoDocKeyPress
          end
          object DBEdit12: TDBEdit
            Left = 96
            Top = 64
            Width = 137
            Height = 21
            Hint = 'Vlr. NET'
            CharCase = ecUpperCase
            Color = clScrollBar
            DataField = 'VLRNET'
            DataSource = dmPP.dsEquipamento
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
            OnKeyPress = edAtalhoDocKeyPress
          end
        end
        object Button1: TButton
          Left = 436
          Top = 64
          Width = 22
          Height = 21
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Composi'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      DesignSize = (
        755
        343)
      object Panel7: TPanel
        Left = 0
        Top = 315
        Width = 755
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 685
        Height = 315
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clCream
        DataSource = dmPP.dsComposicao
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MODELOCOMPONENTEID'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'MODELO COMPONENTE ID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 3552822
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAO_PORT'
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNITARIOFOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALFOB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNITARIOREVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALREVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRUNITARIONET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTALNET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_GRUPOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCR_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAO_INGLES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOPORTUGUES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_ESTOQUEFISICO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_GRUPOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Visible = True
          end>
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 688
        Top = 0
        Width = 63
        Height = 114
        Anchors = [akTop, akRight, akBottom]
        AutoSize = True
        BevelOuter = bvNone
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TtmbCriar = True
        TtmbClientDataSet = dmPP.cdsComposicao
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsComposicao
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Composicao'
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Opcionais'
      ImageIndex = 3
      object Splitter1: TSplitter
        Left = 0
        Top = 169
        Width = 755
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 755
        Height = 169
        Align = alTop
        TabOrder = 0
        object tmbEdicaoLista3: TtmbEdicaoLista
          Left = 691
          Top = 1
          Width = 63
          Height = 167
          Align = alRight
          Alignment = taLeftJustify
          AutoSize = True
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Caption = ' '
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          TtmbCriar = True
          TtmbClientDataSet = dmPP.cdsOpcional
          TtmbVertical = True
          TtmbTamMax = False
          TtmbDataSource = dmPP.dsOpcional
          TtmbFontDefaut = False
          TtmbDesativaInserir = True
          TtmbDireito = 'Opcional'
        end
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 690
          Height = 167
          Align = alClient
          Color = clCream
          DataSource = dmPP.dsOpcional
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'MODELOCOMPONENTEID'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = 3552822
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 159
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAO_PORT'
              Width = 216
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNITARIOFOB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALFOB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNITARIOREVENDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALREVENDA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNITARIONET'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALNET'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCR_GRUPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAO_INGLES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOINGLES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOPORTUGUES'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_ESTOQUEFISICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_GRUPOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTOID'
              Title.Caption = 'PRODUTO ID'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 172
        Width = 755
        Height = 171
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'Depend'#234'ncia'
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 684
            Height = 143
            Align = alClient
            Color = clCream
            DataSource = dmPP.dsDependencia
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'MODELODEPENDENCIAID'
                Title.Caption = 'MODELO DEPEND'#202'NCIA ID'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 3552822
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 168
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_PORT'
                Width = 248
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOFOB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALFOB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOREVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALREVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIONET'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALNET'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_COMENTARIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCR_GRUPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_INGLES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOINGLES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPORTUGUES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_ESTOQUEFISICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
          object tmbEdicaoLista2: TtmbEdicaoLista
            Left = 684
            Top = 0
            Width = 63
            Height = 143
            Align = alRight
            AutoSize = True
            BevelOuter = bvNone
            Caption = ' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TtmbCriar = True
            TtmbClientDataSet = dmPP.cdsDependencia
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmPP.dsDependencia
            TtmbFontDefaut = False
            TtmbDesativaInserir = True
            TtmbDireito = 'Dependencia'
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Acess'#243'rios'
          ImageIndex = 1
          object DBGrid4: TDBGrid
            Left = 0
            Top = 0
            Width = 747
            Height = 143
            Align = alClient
            Color = clCream
            DataSource = dmPP.dsAcessorio
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'MODELOACESSORIOID'
                Title.Caption = 'MODELO DEPEND'#202'NCIA ID'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 3552822
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 166
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_PORT'
                Width = 236
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOFOB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALFOB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOREVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALREVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIONET'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALNET'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_COMENTARIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCR_GRUPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_INGLES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOINGLES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPORTUGUES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_ESTOQUEFISICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Incompat'#237'vel'
          ImageIndex = 2
          object DBGrid5: TDBGrid
            Left = 0
            Top = 0
            Width = 747
            Height = 143
            Align = alClient
            Color = clCream
            DataSource = dmPP.dsIncompativel
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'MODELOINCOMPATIVELID'
                Title.Caption = 'MODELO DEPEND'#202'NCIA ID'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 3552822
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 159
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_PORT'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOFOB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALFOB'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOREVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALREVENDA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIONET'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALNET'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_COMENTARIO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCR_GRUPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAO_INGLES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOINGLES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPORTUGUES'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_ESTOQUEFISICO'
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
    object TabSheet2: TTabSheet
      Caption = ' Descri'#231#227'o do Modelo '
      ImageIndex = 3
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 755
        Height = 338
        Align = alClient
        Caption = ' (Modelo) '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object DBRhDescEquipamento: TDBMemo
          Left = 2
          Top = 15
          Width = 751
          Height = 321
          Align = alClient
          DataField = 'DESCRICAO'
          DataSource = dmPP.dsEquipamento
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 29
    Width = 763
    Height = 80
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label14: TLabel
      Left = 6
      Top = 8
      Width = 93
      Height = 13
      Caption = 'Modelo Aparelho Id'
    end
    object Label4: TLabel
      Left = 544
      Top = 8
      Width = 81
      Height = 13
      Caption = 'Data de Inclus'#227'o'
    end
    object Label6: TLabel
      Left = 640
      Top = 8
      Width = 87
      Height = 13
      Caption = 'Data de Altera'#231#227'o'
    end
    object Label3: TLabel
      Left = 176
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Grupo Id'
      FocusControl = DBEdit5
    end
    object Label5: TLabel
      Left = 248
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Descr. Grupo'
      FocusControl = DBEdit7
    end
    object Label10: TLabel
      Left = 472
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Revis'#227'o Id'
      FocusControl = DBEdit3
    end
    object Label7: TLabel
      Left = 176
      Top = 42
      Width = 70
      Height = 13
      Caption = 'Descr. Usu'#225'rio'
      FocusControl = DBEdit1
    end
    object Label8: TLabel
      Left = 545
      Top = 42
      Width = 36
      Height = 13
      Caption = 'Usu'#225'rio'
      FocusControl = DBEdit6
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 544
      Top = 21
      Width = 89
      Height = 21
      Hint = 'Data de inclus'#227'o'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAINCLUSAO'
      DataSource = dmPP.dsEquipamento
      Epoch = 1950
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 4
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 639
      Top = 21
      Width = 90
      Height = 21
      Hint = 'Data de altera'#231#227'o'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAALTERACAO'
      DataSource = dmPP.dsEquipamento
      Epoch = 1950
      ParentShowHint = False
      ShowHint = True
      ShowButton = True
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 176
      Top = 21
      Width = 69
      Height = 21
      Hint = 'Grupo Id'
      TabStop = False
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_GRUPOID'
      DataSource = dmPP.dsEquipamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 248
      Top = 21
      Width = 217
      Height = 21
      Hint = 'Descri'#231#227'o do Grupo'
      TabStop = False
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_DESCR_GRUPO'
      DataSource = dmPP.dsEquipamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 472
      Top = 21
      Width = 65
      Height = 21
      Hint = 'Previs'#227'o Id'
      CharCase = ecUpperCase
      DataField = 'REVISAOID'
      DataSource = dmPP.dsEquipamento
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object DBCheckBox11: TDBCheckBox
      Left = 7
      Top = 48
      Width = 129
      Height = 17
      Hint = 'Dispon'#237'vel para utiliza'#231#227'o'
      Caption = 'Dispon'#237'vel p/ Utiliza'#231#227'o'
      DataField = 'DISPONIVEL'
      DataSource = dmPP.dsEquipamento
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object wwDBComboDlg2: TwwDBComboDlg
      Left = 6
      Top = 21
      Width = 169
      Height = 20
      Hint = 'Modelo do aparelho'
      OnCustomDlg = wwDBComboDlg2CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'MODELOEQUIPAMENTOID'
      DataSource = dmPP.dsEquipamento
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
      OnExit = wwDBComboDlg2Exit
    end
    object DBEdit1: TDBEdit
      Left = 176
      Top = 56
      Width = 361
      Height = 21
      Hint = 'Descri'#231#227'o do usu'#225'rio'
      TabStop = False
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_COMENTARIO'
      DataSource = dmPP.dsEquipamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 545
      Top = 56
      Width = 181
      Height = 21
      Hint = 'Nome do usu'#225'rio'
      TabStop = False
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmPP.dsEquipamento
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 480
    Width = 763
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 763
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
          Width = 567
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 38
        end>
      FixedSize = True
      TtmbCria = True
      TtmbClientDataSet = dmPP.cdsEquipamento
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 512
    Width = 763
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 763
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 256
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 505
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 243
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
      Left = 267
      Top = 0
      Width = 492
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 492
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 556
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 502
    Top = 55
    object abrir1: TMenuItem
      Caption = 'Abrir..'
      OnClick = abrir1Click
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        ContextItems.SmallIcons = False
        ContextItems = <>
        Items.CaptionOptions = coAll
        Items = <>
      end
      item
        Items = <
          item
            Caption = '&Ferramentas'
          end>
      end
      item
        Items = <
          item
            Action = actMontarComposicao
            ImageIndex = 21
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actMontarComposicao
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 664
    Top = 100
    StyleName = 'XP Style'
    object actMontarComposicao: TAction
      Category = 'Ferramentas'
      Caption = 'Montar Composi'#231#227'o'
      ImageIndex = 0
      OnExecute = actMontarComposicaoExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 596
    Top = 100
    Bitmap = {
      494C010101000400040010001300FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001002000000000000013
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B73008C5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300E7BDBD00F7BDBD00EFBDB500EFBDB500EFBDB500EFBDB500EFBD
      B500EFBDB500EFBDB500E7B594008C5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6948400EFEFE700FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7E700FFEF
      DE00FFEFDE00FFEFDE00FFD6CE00946B63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6948400EFEFEF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
      DE00FFEFDE00FFEFDE00FFD6CE009C6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300A57B7300A57B7300A57B
      7300CE9C8400EFEFEF00187B1800529C5A00FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFDE00FFEFDE00FFD6CE009C6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57B7300E7BDBD00F7BDBD00EFBD
      B500CE9C8400EFEFEF00187B180029B54A00529C5A00FFFFF700FFF7EF00FFF7
      E700FFF7E700FFF7E700FFCECE009C6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD8C7B00E7E7E700FFF7EF00739C
      7300187B1800187B1800187B180031CE630029B54A00529C5A00FFFFF700FFF7
      EF00FFF7EF00FFF7E700FFC6C6009C736B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6948400EFEFE700529452000894
      100029C64A0029C64A0031CE6B0042DE73004AE77B004ADE7B0031843100FFF7
      EF00FFF7EF00FFF7EF00FFBDB5009C7373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C69484008CB58C000894180029C6
      4A00088418000884180039CE63004AE7840052EF8400218C2100FFFFF700FFE7
      D600FFBDBD00FFADAD00FFA5A500A57373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C8400218C290018A529000884
      1800DEAD8C00FFFFFF00187B180042CE6B00428C3100FFFFF700FFFFF700E7C6
      AD00E7A59C00E79C9400E79C8C00A57373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE9C84001094210042944A00FFFF
      FF00DEAD8C00F7F7F7004294420084B56300FFFFFF00FFFFFF00FFFFFF00B584
      7300B5847300B5847300B5847300A57B73000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CEA5840008841800FFFFFF00FFFF
      FF00E7B58C00FFFFFF008C9C7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300FFBD5A00E7A56B00CE9C8400EFD6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6A58C00187B1800FFFFFF00FFFF
      FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300E7AD8400D69C8400EFDED600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6A58C0084A55200ADCE9C00FFFF
      FF00E7B58C00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300D6A58400EFDED60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEAD8C00FFFFFF00BDBD8C00FFFF
      FF00EFBD9400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300F7DED6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300FFBD5A00E7A56B00CE9C8400EFD6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300E7AD8400D69C8400EFDED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300D6A58400EFDED600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400B5847300F7DED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00F000000000000000F000000000000000
      F000000000000000F00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000000000003000000000000
      0007000000000000000F000000000000001F000000000000003F000000000000
      007F000000000000}
  end
end
