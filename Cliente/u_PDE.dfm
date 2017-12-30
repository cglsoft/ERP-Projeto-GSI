object frmPDE: TfrmPDE
  Left = 198
  Top = 120
  Caption = 'Pedido de Entrada'
  ClientHeight = 530
  ClientWidth = 746
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
  object PageControl1: TPageControl
    Left = 0
    Top = 78
    Width = 746
    Height = 400
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = '&Manuten'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 738
        Height = 209
        Align = alTop
        Caption = 'Dados do Remetente'
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
          Width = 67
          Height = 13
          Caption = 'Remetente ID'
        end
        object Label13: TLabel
          Left = 8
          Top = 40
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label38: TLabel
          Left = 240
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
          Left = 372
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
          TabOrder = 4
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
            DataSource = dmEF.dsPde
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
            DataSource = dmEF.dsPde
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
            DataSource = dmEF.dsPde
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
            DataSource = dmEF.dsPde
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
            DataSource = dmEF.dsPde
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
            DataSource = dmEF.dsPde
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
            DataSource = dmEF.dsPde
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
            Color = clScrollBar
            DataField = 'LIBFINANCEIRO'
            DataSource = dmEF.dsPde
            ParentColor = False
            ReadOnly = True
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
            DataSource = dmEF.dsPde
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object GroupBox11: TGroupBox
          Left = 424
          Top = 88
          Width = 305
          Height = 114
          Caption = 'Descri'#231#227'o no corpo da Nota Fiscal de Importa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object DBMemo3: TDBMemo
            Left = 2
            Top = 15
            Width = 301
            Height = 97
            Align = alClient
            DataField = 'DESCRICAOIMPORTACAO'
            DataSource = dmEF.dsPde
            TabOrder = 0
          end
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
          DataSource = dmEF.dsPde
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit9: TDBEdit
          Left = 168
          Top = 15
          Width = 251
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'NOME'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 288
          Top = 38
          Width = 130
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmEF.dsPde
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 86
          Top = 63
          Width = 331
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Complemento'
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmEF.dsPde
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit18: TDBEdit
          Left = 86
          Top = 131
          Width = 331
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Bairro'
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmEF.dsPde
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBEdit13: TDBEdit
          Left = 86
          Top = 156
          Width = 265
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Cidade'
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmEF.dsPde
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 388
          Top = 156
          Width = 30
          Height = 21
          Hint = 'Unidade federativa'
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmEF.dsPde
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit15: TDBEdit
          Left = 86
          Top = 181
          Width = 332
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Pa'#237's'
          CharCase = ecUpperCase
          DataField = 'PAIS'
          DataSource = dmEF.dsPde
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
        end
        object DBMemo1: TDBMemo
          Left = 86
          Top = 87
          Width = 332
          Height = 40
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o'
          DataField = 'ENDERECO'
          DataSource = dmEF.dsPde
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 7
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
          DataSource = dmEF.dsPde
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 209
        Width = 738
        Height = 163
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Dados Fiscais'
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 730
            Height = 61
            Align = alTop
            Caption = 'Dados da  N.F. Entrada de Terceiros ( FORNECEDORES)'
            TabOrder = 0
            object Label43: TLabel
              Left = 8
              Top = 19
              Width = 35
              Height = 13
              Caption = 'NFE ID'
              FocusControl = DBEdit20
            end
            object Label44: TLabel
              Left = 176
              Top = 19
              Width = 80
              Height = 13
              Caption = 'Data de Emiss'#227'o'
            end
            object Label45: TLabel
              Left = 448
              Top = 19
              Width = 86
              Height = 13
              Caption = 'Mod.Doc.Fiscal Id'
            end
            object Label41: TLabel
              Left = 368
              Top = 19
              Width = 24
              Height = 13
              Caption = 'S'#233'rie'
              FocusControl = DBEdit19
            end
            object Label56: TLabel
              Left = 176
              Top = 41
              Width = 78
              Height = 13
              Caption = 'Data de Entrada'
            end
            object DBEdit20: TDBEdit
              Left = 86
              Top = 16
              Width = 81
              Height = 21
              Hint = 'N'#186' da Nota Fiscal de Entrada'
              DataField = 'NFEID'
              DataSource = dmEF.dsPde
              TabOrder = 0
            end
            object wwDBDateTimePicker1: TwwDBDateTimePicker
              Left = 263
              Top = 16
              Width = 90
              Height = 21
              Hint = 'Data de Emiss'#227'o'
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATAEMISSAONFEID'
              DataSource = dmEF.dsPde
              Epoch = 1950
              ShowButton = True
              TabOrder = 1
            end
            object DBEdit19: TDBEdit
              Left = 400
              Top = 16
              Width = 43
              Height = 21
              Hint = 'S'#233'rie'
              DataField = 'SERIE'
              DataSource = dmEF.dsPde
              TabOrder = 2
            end
            object wwDBComboDlg1: TwwDBComboDlg
              Left = 544
              Top = 15
              Width = 49
              Height = 20
              Hint = 'Modelo do Documento Fiscal'
              OnCustomDlg = wwDBComboDlg1CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'MODELODOCFISCALID'
              DataSource = dmEF.dsPde
              TabOrder = 3
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit21: TDBEdit
              Left = 594
              Top = 14
              Width = 134
              Height = 21
              Hint = 'Descri'#231#227'o do Modelo do Doc. Fiscal'
              TabStop = False
              Color = clScrollBar
              DataField = 'L_MODELODOCFISCAL'
              DataSource = dmEF.dsPde
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object wwDBDateTimePicker3: TwwDBDateTimePicker
              Left = 263
              Top = 38
              Width = 90
              Height = 21
              Hint = 'Data de entrada da Nota'
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'DATAENTRADANFEID'
              DataSource = dmEF.dsPde
              Epoch = 1950
              ShowButton = True
              TabOrder = 5
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 61
            Width = 730
            Height = 78
            Align = alTop
            Caption = 'Natureza Opera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label11: TLabel
              Left = 7
              Top = 18
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
            object wwDBComboDlg2: TwwDBComboDlg
              Left = 86
              Top = 15
              Width = 77
              Height = 20
              Hint = 'Nat. Opera'#231#227'o: N'#186' da Nat. de Opera'#231#227'o'
              OnCustomDlg = wwDBComboDlg2CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'NATUREZAOPID'
              DataSource = dmEF.dsPde
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit12: TDBEdit
              Left = 224
              Top = 16
              Width = 86
              Height = 21
              Hint = 'Nat. Opera'#231#227'o: CFOP'
              TabStop = False
              Color = clScrollBar
              DataField = 'L_CFOP'
              DataSource = dmEF.dsPde
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit30: TDBEdit
              Left = 318
              Top = 16
              Width = 411
              Height = 21
              Hint = 'Nat. Opera'#231#227'o: Descri'#231#227'o do CFOP'
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAOOPERACAOUSUARIO'
              DataSource = dmEF.dsPde
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Dados Nota Fiscal de Sa'#237'da ( Retorno )'
          ImageIndex = 1
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 730
            Height = 135
            Align = alClient
            Caption = 'Dados da Nota Fiscal de Sa'#237'da para Retorno de Pe'#231'as'
            TabOrder = 0
            object Label46: TLabel
              Left = 8
              Top = 20
              Width = 35
              Height = 13
              Caption = 'NFS ID'
              FocusControl = DBEdit22
            end
            object Label47: TLabel
              Left = 184
              Top = 20
              Width = 80
              Height = 13
              Caption = 'Data de Emiss'#227'o'
            end
            object Label36: TLabel
              Left = 367
              Top = 19
              Width = 82
              Height = 13
              Caption = 'Data de Previs'#227'o'
            end
            object DBEdit22: TDBEdit
              Left = 86
              Top = 16
              Width = 81
              Height = 21
              Hint = 'N'#186' da Nota Fiscal de Sa'#237'da'
              DataField = 'NFSID'
              DataSource = dmEF.dsPde
              TabOrder = 0
            end
            object wwDBDateTimePicker2: TwwDBDateTimePicker
              Left = 271
              Top = 16
              Width = 90
              Height = 21
              Hint = 'Nat. Opera'#231#227'o: Data de Emiss'#227'o'
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATAEMISSAONFSID'
              DataSource = dmEF.dsPde
              Epoch = 1950
              ShowButton = True
              TabOrder = 1
            end
            object wwDBDateTimePicker5: TwwDBDateTimePicker
              Left = 454
              Top = 16
              Width = 90
              Height = 21
              Hint = 'Data de Previs'#227'o'
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'DATAPREVISAO'
              DataSource = dmEF.dsPde
              Date = 38154.000000000000000000
              Epoch = 1950
              ReadOnly = True
              ShowButton = True
              TabOrder = 2
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Informa'#231#245'es complementares (Dados adicionais)'
          ImageIndex = 2
          object GroupBox13: TGroupBox
            Left = 0
            Top = 0
            Width = 730
            Height = 135
            Align = alClient
            Caption = 'Observa'#231#227'o'
            TabOrder = 0
            object Label33: TLabel
              Left = 7
              Top = 19
              Width = 72
              Height = 13
              Caption = 'Observa'#231#227'o ID'
            end
            object wwDBComboDlg6: TwwDBComboDlg
              Left = 86
              Top = 15
              Width = 77
              Height = 20
              Hint = 'Nat. N'#186' da Opera'#231#227'o: Observa'#231#227'o'
              OnCustomDlg = wwDBComboDlg6CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'OBSERVACAOID'
              DataSource = dmEF.dsPde
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBMemo2: TDBMemo
              Left = 173
              Top = 3
              Width = 554
              Height = 114
              DataField = 'DESCRICAOOBSERVACAO'
              DataSource = dmEF.dsPde
              TabOrder = 1
            end
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 1
      DesignSize = (
        738
        372)
      object Splitter2: TSplitter
        Left = 0
        Top = 205
        Width = 738
        Height = 4
        Cursor = crVSplit
        Align = alTop
        Beveled = True
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 738
        Height = 205
        Align = alTop
        Caption = #39
        TabOrder = 2
        DesignSize = (
          738
          205)
        object GroupBox12: TGroupBox
          Left = 1
          Top = 0
          Width = 664
          Height = 203
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Itens de Entrada'
          TabOrder = 0
          object dbgrdPDEItem: TDBGrid
            Left = 2
            Top = 15
            Width = 660
            Height = 186
            Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
            Align = alClient
            Color = clCream
            DataSource = dmEF.dsPdeItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
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
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAOPRODUTO'
                Width = 332
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRECOUNITARIO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRECOTOTAL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMPENHO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADEEMPENHO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RETORNO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDRETORNA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBASEICMS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAICMS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRICMS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRISENTASICMS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUTRASICMS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PORCREDUCAOICMS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITTRIBUTARIAESTADUAL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRBASEIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRISENTASIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLROUTRASIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPOIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SITTRIBUTARIAFEDERAL'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ARTIGO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAPIS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPIS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCREDPIS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTACOFINS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCOFINS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCREDCOFINS'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAINICIALIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAFINALIPI'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODINCENTIVADO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Width = 64
                Visible = True
              end>
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 210
        Width = 671
        Height = 163
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Itens de Entrada Anal'#237'tico'
        TabOrder = 1
        object dbgrdPDEItemBar: TDBGrid
          Left = 2
          Top = 15
          Width = 667
          Height = 146
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmEF.dsPdeItemBar
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
              FieldName = 'ITEMBARID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTOID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTOITEMID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_INCENTIVOICMS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_NCMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUEUTILIZADO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QUANTIDADE'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Width = 64
              Visible = True
            end>
        end
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 668
        Top = 209
        Width = 70
        Height = 163
        Align = alRight
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
        TabOrder = 3
        TtmbCriar = True
        TtmbClientDataSet = dmEF.cdsPdeItemBar
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsPdeItemBar
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Item Bar'
        ExplicitLeft = 671
        object tmbAjtgrdPDEItemBar: tPanel1
          Left = 0
          Top = 135
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdPDEItemBar
          tmbCria = True
          tmbAjusta = False
        end
      end
      object tmbedtlstProduto: TtmbEdicaoLista
        Left = 671
        Top = 3
        Width = 70
        Height = 114
        Anchors = [akTop, akRight, akBottom]
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
        TtmbClientDataSet = dmEF.cdsPdeItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsPdeItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Item'
        object tmbAjtgrdPDEItem: tPanel1
          Left = 0
          Top = 87
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdPDEItem
          tmbCria = True
          tmbAjusta = False
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'C'#225'lculo do Imposto/Transportador/Volumes Transportados'
      ImageIndex = 3
      object GroupBox7: TGroupBox
        Left = 0
        Top = 192
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
          Top = 17
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
          Top = 17
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
          Top = 17
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
          Width = 63
          Height = 13
          Caption = 'Peso Liqu'#237'do'
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
          Top = 33
          Width = 56
          Height = 21
          Hint = 'Volumes Transportados: Quantidade'
          CharCase = ecUpperCase
          DataField = 'EMBQTDVOLUMES'
          DataSource = dmEF.dsPde
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
          Top = 33
          Width = 36
          Height = 21
          Hint = 'Nat. Opera'#231#227'o: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'EMBNUMERO'
          DataSource = dmEF.dsPde
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
          Top = 33
          Width = 201
          Height = 21
          Hint = 'Nat. Opera'#231#227'o: Marca'
          CharCase = ecUpperCase
          DataField = 'EMBMARCA'
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
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
        Left = 321
        Top = 192
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
          Top = 41
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
          Left = 95
          Top = 37
          Width = 114
          Height = 21
          Hint = 'Placa do Ve'#237'culo'
          DataField = 'PLACAVEICULO'
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 1
        end
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 321
        Top = 257
        Width = 411
        Height = 40
        Hint = 'Tipo de Frete'
        Caption = ' Frete por Conta '
        Color = clBtnFace
        Columns = 2
        Ctl3D = True
        DataField = 'MODALIDADEFRETE'
        DataSource = dmEF.dsPde
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
        Width = 738
        Height = 193
        Align = alTop
        Caption = 'C'#225'lculo do Imposto'
        TabOrder = 3
        object Label1: TLabel
          Left = 8
          Top = 112
          Width = 84
          Height = 13
          Caption = 'Vlr. Total COFINS'
          FocusControl = DBEdit5
        end
        object Label4: TLabel
          Left = 8
          Top = 88
          Width = 62
          Height = 13
          Caption = 'Vlr. Total PIS'
          FocusControl = DBEdit24
        end
        object Label5: TLabel
          Left = 8
          Top = 160
          Width = 112
          Height = 13
          Caption = 'Vlr. Total Cred. COFINS'
          FocusControl = DBEdit25
        end
        object Label14: TLabel
          Left = 8
          Top = 136
          Width = 90
          Height = 13
          Caption = 'Vlr. Total Cred. PIS'
          FocusControl = DBEdit26
        end
        object Label15: TLabel
          Left = 248
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Vlr.Total Base ICMS'
          FocusControl = DBEdit27
        end
        object Label16: TLabel
          Left = 248
          Top = 40
          Width = 71
          Height = 13
          Caption = 'Vlr. Total ICMS'
          FocusControl = DBEdit28
        end
        object Label17: TLabel
          Left = 248
          Top = 64
          Width = 108
          Height = 13
          Caption = 'Vlr. Total Isentas ICMS'
          FocusControl = DBEdit29
        end
        object Label18: TLabel
          Left = 248
          Top = 88
          Width = 105
          Height = 13
          Caption = 'Vlr. Total Outras ICMS'
          FocusControl = DBEdit33
        end
        object Label19: TLabel
          Left = 488
          Top = 16
          Width = 82
          Height = 13
          Caption = 'Vlr Total Base IPI'
          FocusControl = DBEdit37
        end
        object Label20: TLabel
          Left = 488
          Top = 40
          Width = 61
          Height = 13
          Caption = 'Vlr. Total  IPI'
          FocusControl = DBEdit38
        end
        object Label21: TLabel
          Left = 488
          Top = 64
          Width = 95
          Height = 13
          Caption = 'Vlr. Total Isentas IPI'
          FocusControl = DBEdit39
        end
        object Label22: TLabel
          Left = 488
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
          Left = 488
          Top = 120
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Produto'
          FocusControl = DBEdit45
        end
        object Label54: TLabel
          Left = 488
          Top = 144
          Width = 68
          Height = 13
          Caption = 'Vlr. Total Nota'
          FocusControl = DBEdit46
        end
        object DBEdit5: TDBEdit
          Left = 120
          Top = 112
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALCOFINS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit24: TDBEdit
          Left = 120
          Top = 88
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total PIS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALPIS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit25: TDBEdit
          Left = 120
          Top = 160
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALCREDCOFINS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit26: TDBEdit
          Left = 120
          Top = 136
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. PIS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALCREDPIS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit27: TDBEdit
          Left = 360
          Top = 16
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALBASEICMS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit28: TDBEdit
          Left = 360
          Top = 40
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALICMS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit29: TDBEdit
          Left = 360
          Top = 64
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALISENTASICMS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit33: TDBEdit
          Left = 360
          Top = 88
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras ICMS'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALOUTRASICMS'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit37: TDBEdit
          Left = 592
          Top = 16
          Width = 137
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALBASEIPI'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit38: TDBEdit
          Left = 592
          Top = 40
          Width = 137
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALIPI'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit39: TDBEdit
          Left = 592
          Top = 64
          Width = 137
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALISENTASIPI'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit40: TDBEdit
          Left = 592
          Top = 88
          Width = 137
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras IPI'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALOUTRASIPI'
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
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
          DataSource = dmEF.dsPde
          TabOrder = 2
        end
        object DBEdit45: TDBEdit
          Left = 592
          Top = 120
          Width = 135
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Produto'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALPRODUTO'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit46: TDBEdit
          Left = 592
          Top = 144
          Width = 135
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Nota'
          TabStop = False
          Color = clScrollBar
          DataField = 'VLRTOTALNOTA'
          DataSource = dmEF.dsPde
          ReadOnly = True
          TabOrder = 16
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 510
    Width = 746
    Height = 20
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object fcStatusBar1: TfcStatusBar
      Left = 0
      Top = 0
      Width = 746
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
      SizeGrip = False
      StatusBarText.CapsLock = 'Caps'
      StatusBarText.Overwrite = 'Overwrite'
      StatusBarText.NumLock = 'Num'
      StatusBarText.ScrollLock = 'Scroll'
    end
  end
  object Panel9: TPanel
    Left = 0
    Top = 478
    Width = 746
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 746
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
          Width = 517
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 71
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsPde
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 29
    Width = 746
    Height = 49
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
      Left = 437
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
      Left = 680
      Top = 3
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
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit7: TDBEdit
      Left = 82
      Top = 16
      Width = 80
      Height = 22
      Hint = 'N'#186' do Pedido'
      Color = clScrollBar
      DataField = 'PDEID'
      DataSource = dmEF.dsPde
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
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
      Color = clScrollBar
      DataField = 'DATAPEDIDO'
      DataSource = dmEF.dsPde
      Date = 38154.000000000000000000
      Epoch = 1950
      ReadOnly = True
      ShowButton = True
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 438
      Top = 16
      Width = 98
      Height = 21
      Hint = 'N'#186' da Ordem de Servi'#231'o'
      TabStop = False
      Color = clScrollBar
      DataField = 'OSID'
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 3
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 258
      Top = 2
      Width = 175
      Height = 46
      Hint = 'Tipo da Nota'
      Caption = '&Tipo de Nota'
      Color = clBtnFace
      Columns = 2
      DataField = 'TIPONOTA'
      DataSource = dmEF.dsPde
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Comum'
        'Importada'
        'Fornecedor'
        'Sem Produto')
      ParentBackground = True
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Values.Strings = (
        'C'
        'I'
        'F'
        'S')
    end
    object GroupBox5: TGroupBox
      Left = 546
      Top = 2
      Width = 133
      Height = 46
      Caption = 'Checks de Controle'
      TabOrder = 4
      object DBCheckBox2: TDBCheckBox
        Left = 7
        Top = 12
        Width = 122
        Height = 17
        Hint = 'Checks de controle : Movimenta Estoque'
        Caption = 'Movimenta Estoque'
        DataField = 'MOVIMENTAESTOQUE'
        DataSource = dmEF.dsPde
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 7
        Top = 27
        Width = 120
        Height = 17
        Hint = 'Checks de Controle: Contribuinte do ICMS'
        Caption = 'Contribuinte do ICMS'
        DataField = 'CONTRIBUINTEICMS'
        DataSource = dmEF.dsPde
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object DBEdit47: TDBEdit
      Left = 680
      Top = 16
      Width = 104
      Height = 21
      Hint = 'Nat. Opera'#231#227'o: Requisitante'
      TabStop = False
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmEF.dsPde
      ReadOnly = True
      TabOrder = 6
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 746
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 203
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 541
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 190
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
    object tmbEdicaoTop2: TtmbEdicaoTop
      Tag = 255
      Left = 214
      Top = 0
      Width = 528
      Height = 29
      Hint = 'Barra de Ferramentas'
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 528
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
      0000808080008000000080000000800000008000000080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000008000000080000000000000000000008080
      8000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000000000
      0000000000000000000000000000008000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008000
      0000800000000000000080000000800000000000000000000000000000008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008000000080000000800000008000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000F01F000000000000E00F000000000000
      C7C70000000000008FE30000000000009E630000000000009C33000000000000
      9C330000000000009E7F0000000000008FF30000000000008DFF000000000000
      C4E7000000000000E07F000000000000F07F000000000000FCFF000000000000
      FDFF00000000000000000000000000000000000000000000000000000000}
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
                Action = actRetornoPecas
                Caption = '&Retorno de Pe'#231'as'
                ImageIndex = 22
              end>
            Caption = '&Ferramentas'
          end>
      end
      item
        Items = <
          item
            Action = actRetornoPecas
            Caption = '&Retorno de Pe'#231'as'
            ImageIndex = 22
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actRetornoPecas
            Caption = '&Retorno de Pe'#231'as'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 632
    Top = 65532
    StyleName = 'XP Style'
    object actRetornoPecas: TAction
      Category = 'Ferramentas'
      Caption = 'Retorno de Pe'#231'as'
      Hint = 'Retorno de Pe'#231'as'
      ImageIndex = 0
      OnExecute = actRetornoPecasExecute
    end
  end
end
