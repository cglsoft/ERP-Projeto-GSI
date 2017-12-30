object frmPDS: TfrmPDS
  Left = 83
  Top = 72
  Caption = 'Pedido de Sa'#237'da'
  ClientHeight = 564
  ClientWidth = 749
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
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 293
    Width = 738
    Height = 8
    Align = alNone
    Beveled = True
  end
  object pgctrlPDS: TPageControl
    Left = 0
    Top = 77
    Width = 749
    Height = 436
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = pgctrlPDSChange
    ExplicitHeight = 399
    object TabSheet1: TTabSheet
      Caption = '&Manuten'#231#227'o'
      ExplicitHeight = 371
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 741
        Height = 209
        Align = alTop
        Caption = 'Dados do Destinat'#225'rio'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label10: TLabel
          Left = 8
          Top = 19
          Width = 72
          Height = 13
          Caption = 'Destinat'#225'rio ID'
        end
        object Label13: TLabel
          Left = 8
          Top = 40
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label38: TLabel
          Left = 241
          Top = 40
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit10
        end
        object Label39: TLabel
          Left = 8
          Top = 64
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit11
        end
        object Label40: TLabel
          Left = 8
          Top = 88
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label42: TLabel
          Left = 8
          Top = 131
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label48: TLabel
          Left = 8
          Top = 159
          Width = 38
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 373
          Top = 159
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 8
          Top = 181
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit15
        end
        object Label5: TLabel
          Left = 424
          Top = 158
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit19
        end
        object Label14: TLabel
          Left = 424
          Top = 181
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit25
        end
        object Label36: TLabel
          Left = 424
          Top = 169
          Width = 53
          Height = 13
          Caption = 'de Entrega'
          FocusControl = DBEdit19
        end
        object Label41: TLabel
          Left = 424
          Top = 192
          Width = 61
          Height = 13
          Caption = 'de Cobran'#231'a'
          FocusControl = DBEdit25
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 86
          Top = 15
          Width = 77
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
          OnCustomDlg = wwDBComboDlg3CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'ENTIDADEID'
          DataSource = dmEF.dsPds
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit9: TDBEdit
          Left = 168
          Top = 15
          Width = 252
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'NOME'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 289
          Top = 38
          Width = 130
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 86
          Top = 63
          Width = 332
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Complemento'
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 86
          Top = 131
          Width = 332
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Bairro'
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 86
          Top = 156
          Width = 265
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Cidade'
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object DBEdit14: TDBEdit
          Left = 389
          Top = 156
          Width = 30
          Height = 21
          Hint = 'Unidade federativa'
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit15: TDBEdit
          Left = 86
          Top = 181
          Width = 334
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Pa'#237's'
          CharCase = ecUpperCase
          DataField = 'PAIS'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBMemo1: TDBMemo
          Left = 86
          Top = 87
          Width = 333
          Height = 40
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o'
          DataField = 'ENDERECO'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 5
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 86
          Top = 39
          Width = 77
          Height = 19
          Hint = 'Dados do Destinat'#225'rio: N'#186' do CEP '
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CEPID'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit19: TDBEdit
          Left = 488
          Top = 159
          Width = 241
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o de Entrega'
          CharCase = ecUpperCase
          DataField = 'ENDERECOENTREGA'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
        end
        object DBEdit25: TDBEdit
          Left = 488
          Top = 183
          Width = 241
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o de Cobran'#231'a'
          CharCase = ecUpperCase
          DataField = 'ENDERECOCOBRANCA'
          DataSource = dmEF.dsPds
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object GroupBox4: TGroupBox
          Left = 424
          Top = 8
          Width = 305
          Height = 79
          Caption = '&Libera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          object Label3: TLabel
            Left = 80
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit1
          end
          object Label6: TLabel
            Left = 179
            Top = 14
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit2
          end
          object Label7: TLabel
            Left = 80
            Top = 58
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit3
          end
          object Label8: TLabel
            Left = 179
            Top = 58
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit2
          end
          object Label26: TLabel
            Left = 80
            Top = 36
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit16
          end
          object Label37: TLabel
            Left = 179
            Top = 36
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit2
          end
          object DBEdit1: TDBEdit
            Left = 112
            Top = 11
            Width = 64
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCHEFIANOME'
            DataSource = dmEF.dsPds
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 208
            Top = 11
            Width = 93
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCHEFIADATA'
            DataSource = dmEF.dsPds
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 112
            Top = 55
            Width = 65
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCONTABILNOME'
            DataSource = dmEF.dsPds
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit4: TDBEdit
            Left = 208
            Top = 55
            Width = 94
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCONTABILDATA'
            DataSource = dmEF.dsPds
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit16: TDBEdit
            Left = 112
            Top = 33
            Width = 65
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBFINANCEIRONOME'
            DataSource = dmEF.dsPds
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit17: TDBEdit
            Left = 208
            Top = 33
            Width = 93
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBFINANCEIRODATA'
            DataSource = dmEF.dsPds
            ReadOnly = True
            TabOrder = 3
          end
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 12
            Width = 58
            Height = 17
            Hint = 'Checks de controle : Movimenta Estoque'
            Caption = 'Chefia'
            DataField = 'LIBCHEFIA'
            DataSource = dmEF.dsPds
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 35
            Width = 66
            Height = 17
            Hint = 'Checks de controle : Movimenta Estoque'
            Caption = 'Financeiro'
            Color = clBtnFace
            DataField = 'LIBFINANCEIRO'
            DataSource = dmEF.dsPds
            ParentColor = False
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 7
            Top = 57
            Width = 58
            Height = 17
            Hint = 'Checks de controle : Movimenta Estoque'
            Caption = 'Cont'#225'bil'
            DataField = 'LIBCONTABIL'
            DataSource = dmEF.dsPds
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object GroupBox5: TGroupBox
          Left = 423
          Top = 90
          Width = 133
          Height = 63
          Caption = 'Checks de Controle'
          TabOrder = 13
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 12
            Width = 122
            Height = 17
            Hint = 'Checks de controle : Movimenta Estoque'
            Caption = 'Status do Pedido'
            DataField = 'STATUS'
            DataSource = dmEF.dsPds
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 7
            Top = 43
            Width = 120
            Height = 17
            Hint = 'Checks de Controle: Contribuinte do ICMS'
            Caption = 'Contribuinte do ICMS'
            DataField = 'CONTRIBUINTEICMS'
            DataSource = dmEF.dsPds
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 7
            Top = 27
            Width = 114
            Height = 17
            Hint = 'Checks de controle : Movimenta Estoque'
            Caption = 'Pr'#233'-Nota Impressa'
            Color = clScrollBar
            DataField = 'PRENOTA'
            DataSource = dmEF.dsPds
            ParentColor = False
            ReadOnly = True
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 283
        Width = 741
        Height = 127
        Align = alTop
        Caption = 'Natureza Opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          741
          127)
        object Label11: TLabel
          Left = 7
          Top = 19
          Width = 80
          Height = 13
          Caption = 'Nat.Opera'#231#227'o'
        end
        object Label24: TLabel
          Left = 176
          Top = 19
          Width = 49
          Height = 13
          Caption = 'C.F.O.P.'
          FocusControl = DBEdit12
        end
        object Label33: TLabel
          Left = 7
          Top = 42
          Width = 72
          Height = 13
          Caption = 'Observa'#231#227'o ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 86
          Top = 15
          Width = 77
          Height = 20
          Hint = 'Nat. da Opera'#231#227'o'
          OnCustomDlg = wwDBComboDlg2CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'NATUREZAOPID'
          DataSource = dmEF.dsPds
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
          OnExit = wwDBComboDlg2Exit
        end
        object DBEdit12: TDBEdit
          Left = 231
          Top = 16
          Width = 81
          Height = 21
          Hint = 'CFOP'
          TabStop = False
          Color = clScrollBar
          DataField = 'L_CFOP'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 6
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit30: TDBEdit
          Left = 318
          Top = 16
          Width = 419
          Height = 21
          Hint = 'Descri'#231#227'o do CFOP'
          TabStop = False
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clScrollBar
          DataField = 'L_DESCRICAOOPERACAOUSUARIO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object wwDBComboDlg6: TwwDBComboDlg
          Left = 86
          Top = 39
          Width = 77
          Height = 20
          Hint = 'N'#186' Observa'#231#227'o'
          OnCustomDlg = wwDBComboDlg6CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'OBSERVACAOID'
          DataSource = dmEF.dsPds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBMemo2: TDBMemo
          Left = 176
          Top = 41
          Width = 560
          Height = 78
          DataField = 'DESCRICAOOBSERVACAO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 209
        Width = 741
        Height = 74
        Align = alTop
        Caption = 'Dados para Devolu'#231#227'o de NFE'
        TabOrder = 1
        ExplicitTop = 208
        object Label43: TLabel
          Left = 8
          Top = 20
          Width = 35
          Height = 13
          Caption = 'NFE ID'
          FocusControl = DBEdit20
        end
        object Label44: TLabel
          Left = 184
          Top = 20
          Width = 80
          Height = 13
          Caption = 'Data de Emiss'#227'o'
        end
        object Label72: TLabel
          Left = 206
          Top = 51
          Width = 58
          Height = 13
          Caption = 'NFS Ref. ID'
          FocusControl = DBEdit62
        end
        object Label73: TLabel
          Left = 366
          Top = 51
          Width = 127
          Height = 13
          Caption = 'Data de Emiss'#227'o NFS Ref.'
        end
        object Label74: TLabel
          Left = 8
          Top = 47
          Width = 76
          Height = 13
          Caption = 'Empresa Ref. Id'
          FocusControl = DBEdit63
        end
        object DBEdit20: TDBEdit
          Left = 86
          Top = 16
          Width = 81
          Height = 21
          Hint = 'N'#186' NFE'
          DataField = 'NFEID'
          DataSource = dmEF.dsPds
          TabOrder = 0
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 271
          Top = 16
          Width = 90
          Height = 21
          Hint = 'Data da Emiss'#227'o'
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAEMISSAONFEID'
          DataSource = dmEF.dsPds
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 373
          Top = 6
          Width = 197
          Height = 32
          Hint = 'Tipo da Nota de Entrada'
          Caption = '&Tipo de Nota de Entrada'
          Color = clBtnFace
          Columns = 2
          DataField = 'TIPONOTAENTRADA'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Terceiro'
            'De- Terceiro')
          ParentBackground = True
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'T'
            'D')
        end
        object DBEdit62: TDBEdit
          Left = 271
          Top = 47
          Width = 81
          Height = 21
          Hint = 'N'#186' NFE'
          DataField = 'NFSREFID'
          DataSource = dmEF.dsPds
          TabOrder = 3
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 499
          Top = 47
          Width = 90
          Height = 21
          Hint = 'Data da Emiss'#227'o'
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATANFSREFID'
          DataSource = dmEF.dsPds
          Epoch = 1950
          ShowButton = True
          TabOrder = 4
        end
        object DBEdit63: TDBEdit
          Left = 86
          Top = 43
          Width = 81
          Height = 21
          Hint = 'N'#186' NFE'
          DataField = 'EMPRESANFSREFID'
          DataSource = dmEF.dsPds
          TabOrder = 5
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 1
      ExplicitHeight = 371
      DesignSize = (
        741
        408)
      object Splitter2: TSplitter
        Left = 0
        Top = 205
        Width = 741
        Height = 4
        Cursor = crVSplit
        Align = alTop
        Beveled = True
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 741
        Height = 205
        Align = alTop
        TabOrder = 1
        DesignSize = (
          741
          205)
        object GroupBox12: TGroupBox
          Left = 1
          Top = 1
          Width = 667
          Height = 203
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Itens de Sa'#237'da'
          TabOrder = 1
          object dbgrdItem: TDBGrid
            Left = 2
            Top = 15
            Width = 663
            Height = 186
            Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
            Align = alClient
            Color = clCream
            DataSource = dmEF.dsPdsItem
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEMID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAOPRODUTO'
                Width = 257
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
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
                FieldName = 'PORCDESCONTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESCONTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRECOUNITDESC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRECOTOTALDESC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFEID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAEMISSAONFEID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPENHO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADEEMPENHO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RETORNO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDRETORNA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBASEICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRISENTASICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUTRASICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PORCREDUCAOICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITTRIBUTARIAESTADUAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBASEIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRISENTASIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUTRASIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPOIPI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITTRIBUTARIAFEDERAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ARTIGO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAPIS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPIS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTACOFINS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCOFINS'
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
                FieldName = 'PRODINCENTIVADO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ESTOQUEUTILIZADO'
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
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
        end
        object tmbedtlstProduto: TtmbEdicaoLista
          Left = 673
          Top = 1
          Width = 67
          Height = 203
          Align = alRight
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
          TtmbClientDataSet = dmEF.cdsPdsItem
          TtmbVertical = True
          TtmbTamMax = False
          TtmbDataSource = dmEF.dsPdsItem
          TtmbFontDefaut = False
          TtmbDesativaInserir = True
          TtmbDireito = 'Item'
          object tmbAjtgrdPDSItem: tPanel1
            Left = 1
            Top = 150
            Width = 70
            Height = 24
            AutoSize = True
            TabOrder = 0
            tmbDBGrid = dbgrdItem
            tmbCria = True
            tmbAjusta = False
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 209
        Width = 675
        Height = 199
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Itens de Sa'#237'da Anal'#237'tico'
        TabOrder = 2
        ExplicitHeight = 162
        object dbgrdItemBar: TDBGrid
          Left = 2
          Top = 15
          Width = 671
          Height = 182
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmEF.dsPdsItemBar
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEMBARID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTOITEMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_INCENTIVOICMS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_NCMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUEUTILIZADO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 671
        Top = 209
        Width = 70
        Height = 199
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        TtmbClientDataSet = dmEF.cdsPdsItemBar
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsPdsItemBar
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Item Bar'
        ExplicitLeft = 674
        ExplicitHeight = 162
        object tmbAjtgrdPDSItemBar: tPanel1
          Left = 0
          Top = 142
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdItemBar
          tmbCria = True
          tmbAjusta = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Presta'#231#227'o de Servi'#231'o'
      ImageIndex = -1
      ExplicitHeight = 371
      DesignSize = (
        741
        408)
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 649
        Height = 181
        Align = alLeft
        Caption = 'Presta'#231#227'o de Servi'#231'o'
        TabOrder = 1
        ExplicitHeight = 144
        object dbgrdServico: TDBGrid
          Left = 2
          Top = 15
          Width = 645
          Height = 164
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmEF.dsPdsServico
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
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
              FieldName = 'SERVICOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_GRUPOID'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_SIGLAGRUPO'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAORESUMIDA'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRSERVICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRISS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTAPIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTACOFINS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRCOFINS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETCOFINS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETPIS'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETCSLL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETIRPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETIRPJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
      object tmbEdicaoLista3: TtmbEdicaoLista
        Left = 664
        Top = 8
        Width = 67
        Height = 157
        Anchors = [akTop, akRight, akBottom]
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
        TtmbClientDataSet = dmEF.cdsPdsServico
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsPdsServico
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Servi'#231'o'
        ExplicitHeight = 120
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 181
        Width = 741
        Height = 227
        Align = alBottom
        Caption = 'Dados do Servi'#231'o'
        TabOrder = 2
        ExplicitTop = 144
        object Label56: TLabel
          Left = 456
          Top = 92
          Width = 84
          Height = 13
          Caption = 'Vlr. Total COFINS'
          FocusControl = DBEdit26
        end
        object Label57: TLabel
          Left = 456
          Top = 72
          Width = 62
          Height = 13
          Caption = 'Vlr. Total PIS'
          FocusControl = DBEdit48
        end
        object Label58: TLabel
          Left = 456
          Top = 24
          Width = 90
          Height = 13
          Caption = 'Valor Total Servi'#231'o'
          FocusControl = DBEdit49
        end
        object Label59: TLabel
          Left = 456
          Top = 48
          Width = 62
          Height = 13
          Caption = 'Vlr. Total ISS'
          FocusControl = DBEdit50
        end
        object Label61: TLabel
          Left = 456
          Top = 113
          Width = 107
          Height = 13
          Caption = 'Vlr. Total Ret. COFINS'
          FocusControl = DBEdit51
        end
        object Label62: TLabel
          Left = 456
          Top = 134
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Ret.PIS'
          FocusControl = DBEdit52
        end
        object Label64: TLabel
          Left = 456
          Top = 155
          Width = 91
          Height = 13
          Caption = 'Vlr. Total Ret.CSLL'
          FocusControl = DBEdit53
        end
        object Label65: TLabel
          Left = 456
          Top = 177
          Width = 90
          Height = 13
          Caption = 'Vlr. Total Ret.IRRF'
          FocusControl = DBEdit54
        end
        object Label66: TLabel
          Left = 456
          Top = 198
          Width = 89
          Height = 13
          Caption = 'Vlr. Total Ret.IRRJ'
          FocusControl = DBEdit56
        end
        object DBEdit26: TDBEdit
          Left = 568
          Top = 89
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALCOFINS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit48: TDBEdit
          Left = 568
          Top = 68
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. PIS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALPIS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit49: TDBEdit
          Left = 568
          Top = 24
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALSERVICO'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit50: TDBEdit
          Left = 568
          Top = 46
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total PIS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALISS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 3
        end
        object DBMemo3: TDBMemo
          Left = 3
          Top = 12
          Width = 447
          Height = 146
          DataField = 'DESCRICAOSERVICO'
          DataSource = dmEF.dsPdsServico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit51: TDBEdit
          Left = 568
          Top = 110
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETCOFINS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit52: TDBEdit
          Left = 568
          Top = 131
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETPIS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit53: TDBEdit
          Left = 568
          Top = 152
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETCSLL'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit54: TDBEdit
          Left = 568
          Top = 174
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETIRPF'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit56: TDBEdit
          Left = 568
          Top = 195
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETIRPJ'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 9
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'C'#225'lculo do Imposto / &Transportador/Volumes Transportados'
      ImageIndex = 3
      ExplicitHeight = 371
      object GroupBox7: TGroupBox
        Left = 0
        Top = 262
        Width = 321
        Height = 105
        Caption = ' &Volumes Transportados '
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        object Label30: TLabel
          Left = 7
          Top = 19
          Width = 55
          Height = 13
          Caption = 'Quantidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 69
          Top = 19
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 114
          Top = 19
          Width = 30
          Height = 13
          Caption = 'Marca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 243
          Top = 62
          Width = 61
          Height = 13
          Caption = 'Peso Liquido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 167
          Top = 62
          Width = 52
          Height = 13
          Caption = 'Peso Bruto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 7
          Top = 62
          Width = 38
          Height = 13
          Caption = 'Esp'#233'cie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit31: TDBEdit
          Left = 7
          Top = 35
          Width = 56
          Height = 21
          Hint = 'Volumes Transportados: Quantidade'
          CharCase = ecUpperCase
          DataField = 'EMBQTDVOLUMES'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit34: TDBEdit
          Left = 69
          Top = 35
          Width = 36
          Height = 21
          Hint = 'Nat. Opera'#231#227'o: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'EMBNUMERO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit32: TDBEdit
          Left = 112
          Top = 35
          Width = 201
          Height = 21
          Hint = 'Nat. Opera'#231#227'o: Marca'
          CharCase = ecUpperCase
          DataField = 'EMBMARCA'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBComboBox1: TDBComboBox
          Left = 6
          Top = 77
          Width = 154
          Height = 21
          Hint = 'Volumes Transportados: Esp'#233'cie'
          BevelInner = bvLowered
          DataField = 'EMBESPECIE'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'VOLUME'
            'CAIXA'
            'ENGRADADO'
            'PACOTE'
            'A GRANEL')
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit36: TDBEdit
          Left = 243
          Top = 77
          Width = 69
          Height = 21
          Hint = 'Volumes Transportados: Peso Liqu'#237'do'
          DataField = 'EMBPESOLIQUIDO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit35: TDBEdit
          Left = 166
          Top = 77
          Width = 69
          Height = 21
          Hint = 'Volumes Transportados: Peso Bruto'
          DataField = 'EMBPESOBRUTO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox8: TGroupBox
        Left = 327
        Top = 262
        Width = 410
        Height = 65
        Caption = ' &Transportador '
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        object Label25: TLabel
          Left = 8
          Top = 16
          Width = 80
          Height = 13
          Caption = 'Transportador ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 7
          Top = 40
          Width = 82
          Height = 13
          Caption = 'Placa do Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit42: TDBEdit
          Left = 96
          Top = 37
          Width = 114
          Height = 21
          Hint = 'Placa do Ve'#237'culo'
          DataField = 'PLACAVEICULO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          TabOrder = 2
        end
        object wwDBComboDlg5: TwwDBComboDlg
          Left = 96
          Top = 13
          Width = 67
          Height = 20
          Hint = 'Transportador: N'#186' do Transportador '
          OnCustomDlg = wwDBComboDlg5CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'TRANSPORTADORID'
          DataSource = dmEF.dsPds
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit23: TDBEdit
          Left = 168
          Top = 12
          Width = 236
          Height = 21
          Hint = 'Transportador: Descri'#231#227'o do Transportador '
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOMETRANSPORTADOR'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 1
        end
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 327
        Top = 333
        Width = 411
        Height = 35
        Hint = 'Tipo de Frete'
        Caption = ' Frete por Conta '
        Color = clBtnFace
        Columns = 2
        Ctl3D = True
        DataField = 'MODALIDADEFRETE'
        DataSource = dmEF.dsPds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          '1- Emitente'
          '2 - Destinat'#225'rio')
        ParentBackground = True
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'E'
          'D')
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 741
        Height = 256
        Align = alTop
        Caption = 'C'#225'lculo do Imposto'
        TabOrder = 3
        object Label1: TLabel
          Left = 8
          Top = 160
          Width = 84
          Height = 13
          Caption = 'Vlr. Total COFINS'
          FocusControl = DBEdit5
        end
        object Label4: TLabel
          Left = 8
          Top = 136
          Width = 62
          Height = 13
          Caption = 'Vlr. Total PIS'
          FocusControl = DBEdit24
        end
        object Label15: TLabel
          Left = 240
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Vlr.Total Base ICMS'
          FocusControl = DBEdit27
        end
        object Label16: TLabel
          Left = 240
          Top = 40
          Width = 71
          Height = 13
          Caption = 'Vlr. Total ICMS'
          FocusControl = DBEdit28
        end
        object Label17: TLabel
          Left = 240
          Top = 64
          Width = 108
          Height = 13
          Caption = 'Vlr. Total Isentas ICMS'
          FocusControl = DBEdit29
        end
        object Label18: TLabel
          Left = 240
          Top = 88
          Width = 105
          Height = 13
          Caption = 'Vlr. Total Outras ICMS'
          FocusControl = DBEdit33
        end
        object Label19: TLabel
          Left = 480
          Top = 16
          Width = 82
          Height = 13
          Caption = 'Vlr Total Base IPI'
          FocusControl = DBEdit37
        end
        object Label20: TLabel
          Left = 480
          Top = 40
          Width = 61
          Height = 13
          Caption = 'Vlr. Total  IPI'
          FocusControl = DBEdit38
        end
        object Label21: TLabel
          Left = 480
          Top = 64
          Width = 95
          Height = 13
          Caption = 'Vlr. Total Isentas IPI'
          FocusControl = DBEdit39
        end
        object Label22: TLabel
          Left = 480
          Top = 88
          Width = 92
          Height = 13
          Caption = 'Vlr. Total Outras IPI'
          FocusControl = DBEdit40
        end
        object Label23: TLabel
          Left = 8
          Top = 16
          Width = 42
          Height = 13
          Caption = 'Vlr. Frete'
          FocusControl = DBEdit41
        end
        object Label51: TLabel
          Left = 8
          Top = 40
          Width = 52
          Height = 13
          Caption = 'Vlr. Seguro'
          FocusControl = DBEdit43
        end
        object Label52: TLabel
          Left = 8
          Top = 64
          Width = 100
          Height = 13
          Caption = 'Vlr. Desp. Acess'#243'rias'
          FocusControl = DBEdit44
        end
        object Label53: TLabel
          Left = 480
          Top = 184
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Produto'
          FocusControl = DBEdit45
        end
        object Label54: TLabel
          Left = 480
          Top = 208
          Width = 68
          Height = 13
          Caption = 'Vlr. Total Nota'
          FocusControl = DBEdit46
        end
        object Label45: TLabel
          Left = 8
          Top = 88
          Width = 90
          Height = 13
          Caption = 'Valor Total Servi'#231'o'
          FocusControl = DBEdit21
        end
        object Label46: TLabel
          Left = 8
          Top = 112
          Width = 62
          Height = 13
          Caption = 'Vlr. Total ISS'
          FocusControl = DBEdit22
        end
        object Label67: TLabel
          Left = 240
          Top = 115
          Width = 107
          Height = 13
          Caption = 'Vlr. Total Ret. COFINS'
          FocusControl = DBEdit57
        end
        object Label68: TLabel
          Left = 240
          Top = 139
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Ret.PIS'
          FocusControl = DBEdit58
        end
        object Label69: TLabel
          Left = 240
          Top = 163
          Width = 91
          Height = 13
          Caption = 'Vlr. Total Ret.CSLL'
          FocusControl = DBEdit59
        end
        object Label70: TLabel
          Left = 239
          Top = 187
          Width = 90
          Height = 13
          Caption = 'Vlr. Total Ret.IRRF'
          FocusControl = DBEdit60
        end
        object Label71: TLabel
          Left = 239
          Top = 211
          Width = 89
          Height = 13
          Caption = 'Vlr. Total Ret.IRRJ'
          FocusControl = DBEdit61
        end
        object DBEdit5: TDBEdit
          Left = 120
          Top = 160
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALCOFINS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit24: TDBEdit
          Left = 120
          Top = 136
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. PIS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALPIS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit27: TDBEdit
          Left = 352
          Top = 16
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALBASEICMS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit28: TDBEdit
          Left = 352
          Top = 40
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALICMS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit29: TDBEdit
          Left = 352
          Top = 64
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALISENTASICMS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit33: TDBEdit
          Left = 352
          Top = 88
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALOUTRASICMS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit37: TDBEdit
          Left = 592
          Top = 16
          Width = 129
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALBASEIPI'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit38: TDBEdit
          Left = 592
          Top = 40
          Width = 129
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALIPI'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit39: TDBEdit
          Left = 592
          Top = 64
          Width = 129
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALISENTASIPI'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit40: TDBEdit
          Left = 592
          Top = 88
          Width = 129
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALOUTRASIPI'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit41: TDBEdit
          Left = 120
          Top = 16
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Frete'
          TabStop = False
          DataField = 'VLRFRETE'
          DataSource = dmEF.dsPds
          TabOrder = 0
        end
        object DBEdit43: TDBEdit
          Left = 120
          Top = 40
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Seguro'
          TabStop = False
          DataField = 'VLRSEGURO'
          DataSource = dmEF.dsPds
          TabOrder = 1
        end
        object DBEdit44: TDBEdit
          Left = 120
          Top = 64
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Desp. Acess'#243'rias'
          TabStop = False
          DataField = 'VLRDESPESAACESSORIA'
          DataSource = dmEF.dsPds
          TabOrder = 2
        end
        object DBEdit45: TDBEdit
          Left = 592
          Top = 184
          Width = 127
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Produto'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALPRODUTO'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit46: TDBEdit
          Left = 592
          Top = 208
          Width = 127
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Nota'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALNOTA'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit21: TDBEdit
          Left = 120
          Top = 88
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALSERVICO'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit22: TDBEdit
          Left = 120
          Top = 112
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total PIS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALISS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit57: TDBEdit
          Left = 352
          Top = 112
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETCOFINS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 17
        end
        object DBEdit58: TDBEdit
          Left = 352
          Top = 136
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETPIS'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 18
        end
        object DBEdit59: TDBEdit
          Left = 352
          Top = 160
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETCSLL'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 19
        end
        object DBEdit60: TDBEdit
          Left = 352
          Top = 184
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETIRPF'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit61: TDBEdit
          Left = 352
          Top = 208
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALRETIRPJ'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 21
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Fatura / Duplicata'
      ExplicitHeight = 371
      DesignSize = (
        741
        408)
      object GroupBox13: TGroupBox
        Left = 0
        Top = 154
        Width = 657
        Height = 254
        Align = alLeft
        Caption = 'Fatura / Duplicata'
        TabOrder = 2
        ExplicitHeight = 217
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 511
          Height = 175
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Color = clCream
          DataSource = dmEF.dsPdsParcela
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PARCELAID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAVENCIMENTO'
              Width = 121
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRPARCELA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
      object GroupBox14: TGroupBox
        Left = 0
        Top = 0
        Width = 741
        Height = 154
        Align = alTop
        Caption = 'Dados do Servi'#231'o'
        TabOrder = 1
        object Label63: TLabel
          Left = 8
          Top = 19
          Width = 73
          Height = 13
          Caption = 'Cond. Pagto ID'
        end
        object Label47: TLabel
          Left = 600
          Top = 87
          Width = 120
          Height = 13
          Caption = 'Data Gera'#231#227'o Duplicatas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 7
          Top = 39
          Width = 254
          Height = 13
          Caption = 'Descri'#231#227'o da Condi'#231#227'o de Pagamento na Nota Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object wwDBComboDlg1: TwwDBComboDlg
          Left = 86
          Top = 15
          Width = 77
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
          OnCustomDlg = wwDBComboDlg1CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CONDPAGTOID'
          DataSource = dmEF.dsPds
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit55: TDBEdit
          Left = 168
          Top = 15
          Width = 345
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_CONDICAOPAGTO'
          DataSource = dmEF.dsPds
          ReadOnly = True
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 600
          Top = 16
          Width = 120
          Height = 25
          Caption = 'Gerar Duplicatas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn3Click
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888800008888888888888888888800008888777777778888888800008800
            00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
            0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
            FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
            44F000004477F0780000880BFFF0FFF0FF0007780000880F44F0FB00F70A0778
            0000880FFBF0F0FF000A00080000880000000F470AAAAA080000888888880FFB
            000A00080000888888880000770A088800008888888888888800088800008888
            88888888888888880000}
        end
        object BitBtn4: TBitBtn
          Left = 600
          Top = 48
          Width = 120
          Height = 25
          Caption = 'Apagar Duplicatas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn4Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            04000000000080000000120B0000120B00001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
            DADAADADADADA1ADADADDADADADA11DADAD1ADADADAD111DAD1DDADADADAD11A
            D11A00000000000115AD0888888888511ADA08008008081511AD08888888811A
            D1150444444514444D51D4FFFFF15FFF4ADAA4F00F00F00F4DADD4FFFFFFFFFF
            4ADAA444444444444DADD484484484484ADAA444444444444DAD}
        end
        object mktDtDuplicata: TDateTimePicker
          Left = 600
          Top = 104
          Width = 121
          Height = 21
          Date = 38264.435804456020000000
          Time = 38264.435804456020000000
          TabOrder = 4
        end
        object DBMemo5: TDBMemo
          Left = 8
          Top = 57
          Width = 505
          Height = 91
          DataField = 'DESCRICAOCONDPAGTO'
          DataSource = dmEF.dsPds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object tmbEdicaoLista4: TtmbEdicaoLista
        Left = 674
        Top = 160
        Width = 67
        Height = 157
        Anchors = [akTop, akRight, akBottom]
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
        TtmbClientDataSet = dmEF.cdsPdsServico
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsPdsServico
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Servi'#231'o'
        ExplicitHeight = 120
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Pr'#233'-Nota'
      ImageIndex = 5
      ExplicitHeight = 371
      object GroupBox16: TGroupBox
        Left = 0
        Top = 0
        Width = 741
        Height = 408
        Align = alClient
        Caption = 'Descri'#231#227'o Pr'#233'-Nota'
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 371
        object DBMemo6: TDBMemo
          Left = 2
          Top = 15
          Width = 737
          Height = 391
          Align = alClient
          Color = clScrollBar
          DataField = 'DESCRICAOPRENOTA'
          DataSource = dmEF.dsPds
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitHeight = 354
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 545
    Width = 749
    Height = 19
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 508
    object StatusBar: TStatusBar
      Left = 0
      Top = 0
      Width = 749
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
  end
  object Panel9: TPanel
    Left = 0
    Top = 513
    Width = 749
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 476
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 749
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
          Width = 530
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 61
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsPds
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 29
    Width = 749
    Height = 48
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 3
    object Label9: TLabel
      Left = 6
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Empresa ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 83
      Top = 3
      Width = 46
      Height = 13
      Caption = 'Pedido ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 164
      Top = 3
      Width = 73
      Height = 13
      Caption = 'Data do Pedido'
    end
    object Label2: TLabel
      Left = 253
      Top = 2
      Width = 99
      Height = 13
      Caption = 'Ordem de Servi'#231'o ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label55: TLabel
      Left = 368
      Top = 2
      Width = 60
      Height = 13
      Caption = 'Requisitante'
      FocusControl = DBEdit47
    end
    object DBEdit6: TDBEdit
      Left = 7
      Top = 16
      Width = 74
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      Color = clScrollBar
      DataField = 'EMPRESAID'
      DataSource = dmEF.dsPds
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 82
      Top = 16
      Width = 80
      Height = 24
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'PDSID'
      DataSource = dmEF.dsPds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 164
      Top = 16
      Width = 89
      Height = 21
      Hint = 'Data do Pedido'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAPEDIDO'
      DataSource = dmEF.dsPds
      Date = 38258.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 254
      Top = 16
      Width = 98
      Height = 21
      Hint = 'N'#186' da Ordem de Servi'#231'o'
      TabStop = False
      Color = clScrollBar
      DataField = 'OSID'
      DataSource = dmEF.dsPds
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit47: TDBEdit
      Left = 368
      Top = 16
      Width = 104
      Height = 21
      Hint = 'Requisitante'
      TabStop = False
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmEF.dsPds
      ReadOnly = True
      TabOrder = 4
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 488
      Top = 2
      Width = 257
      Height = 44
      Hint = 'Tipo da Nota'
      Caption = '&Tipo de Nota'
      Color = clBtnFace
      Columns = 3
      DataField = 'TIPONOTA'
      DataSource = dmEF.dsPds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'Normal'
        'Compl.Pre'#231'o'
        'Compl. ICMS'
        'Compl. IPI'
        'Tributa'#231#227'o')
      ParentBackground = True
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Values.Strings = (
        'A'
        'B'
        'C'
        'D'
        'I')
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 749
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 268
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 479
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 255
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
      Left = 279
      Top = 0
      Width = 466
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 466
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 588
    Top = 65532
    Bitmap = {
      494C010104000900040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003900000001002000000000000039
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A5A5A500A5A5A500A5A5A500B5B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A500A5A5A500C6C6C600A5A5A500A58C8C00C6ADAD00B5B5B500B5B5
      B500B5B5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000A5A5A500A5A5
      A500F7F7F700EFEFEF00BDBDBD00BDC6DE00524A4A00636363008C8C8C00C6C6
      C600D6D6D600B5B5B500B5B5B500000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      00000000000000000000808080000000000000000000A5A5A500FFFFFF00F7F7
      F700EFEFEF00E7E7E700BDC6DE00ADADAD009C9C9C007B7B7B00737373008C8C
      8C00ADADAD00C6C6C6008C8C8C00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000FF000000BF0000000000000000000000000000A5A5A500F7F7F700E7E7
      E700B5B5B5009C9C9C008C8C8C00848484008C8C8C00ADADAD00BDBDBD00A5E7
      BD00848484008C8C8C0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000FF000000FF000000FF
      000000BF000000FF000000BF00000000000000000000A5A5A500ADADAD00A5A5
      A500CECECE00D6D6D600D6D6D600B5B5B500ADADAD008C8C8C008C8C8C008C8C
      8C00A5E7BD008C8C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000BF000000BF00000000000000000000A5A5A500DEDEDE00DEDE
      DE00D6D6D600DEDEDE00B5B5B500B5B5B500B5B5B500DEDEDE00D6D6D600C6C6
      C600A5A5A5008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000BFBF0000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000BF00000000000000000000A5A5A500DEDEDE00D6D6
      D600D6D6D600B5B5B500E7E7E700EFEFEF00E7E7E700B5B5B500B5B5B500B5B5
      B500C6C6C6008C8C8C0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000BFBF0000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B500B5B5
      B500B5B5B500CECECE00DEDEDE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
      E700B5B5B500DEDEDE0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700DEAD8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CECECE00B5B5
      B500D6D6D6000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000BFBF000000
      0000808080008080800000000000000000000000000000000000000000008000
      0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000BF000000000000000000000000000000000000E7DE
      DE00DEAD8400FFD6AD00FFE7C600FFE7D600F7E7CE00DEAD8400D6D6D6000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000BFBF000000
      0000808080008080800000000000000000000000000000000000800000008000
      000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000BF000000BF000000000000000000000000000000000000DEAD
      8400FFDEC600FFDEC600FFDEC600FFDEC600FFDEC600DEAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF00000000000000000000BFBF000000
      0000808080008080800000000000000000000000000080000000800000008000
      00008000000080808000FFFFFF000000FF000000FF00FFFFFF00000000000000
      000000000000808080000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000BF000000FF000000BF000000000000000000000000000000000000DEAD
      8400FFEFD600FFEFD600FFEFD600FFEFD600FFEFD600DEAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BFBF0000BFBF000000
      0000808080000000000000000000000000008000000080000000800000000000
      00008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF000000BF000000000000000000000000000000000000FFF7F700DEAD
      8400FFF7E700FFF7E700FFF7E700FFF7E700FFF7E700DEAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008080
      8000000000000000000000000000000000008080800080000000000000000000
      0000000000008000000080000000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000DEAD8400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEAD840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008000000080808000FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD84000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000390000000100010000000000C80100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFE0FFFFFFFFFFC3FFC07FFFFFFFFF007F803F55FFC07
      C001F803FFCFFC018001F003F007FC018003F003F007FC008003F003F003FC00
      8003FC03F003FFF08003FC03F001FFFCC003F003F000F7FCE007E003E000E7F0
      E01FC003C001C000E03FC00380038000E03FF00710070001C03FF80F380F8003
      C07FF81FFC1FC007C0FFFC3FFEFFE7FFFFFFFFFFFF7FF7FF0000000000000000
      0000000000000000000000000000}
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
            Items = <
              item
                Action = actExportar
                Caption = '&Devol. de Nota'
                ImageIndex = 22
              end>
            Caption = '&Ferramentas'
          end>
      end
      item
        Items = <
          item
            Action = actExportar
            Caption = '&Devol. de Nota'
            ImageIndex = 22
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = Action1
            Caption = '&Pr'#233'-Nota'
            ImageIndex = 0
          end
          item
            Action = Action2
            Caption = '&Empenho'
            ImageIndex = 2
          end
          item
            Action = actExportar
            Caption = '&Devol. de Nota'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 632
    Top = 65532
    StyleName = 'XP Style'
    object Action1: TAction
      Category = 'Ferramentas'
      Caption = 'Pr'#233'-Nota'
      ImageIndex = 0
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = 'Ferramentas'
      Caption = 'Empenho'
      ImageIndex = 2
      OnExecute = Action2Execute
    end
    object actExportar: TAction
      Category = 'Ferramentas'
      Caption = 'Devol. de Nota'
      Hint = 'Devolu'#231#227'o de Nota'
      ImageIndex = 1
      OnExecute = actExportarExecute
    end
  end
end
