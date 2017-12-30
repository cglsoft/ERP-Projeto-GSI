object frmProduto: TfrmProduto
  Left = 309
  Top = 27
  Caption = 'Produto'
  ClientHeight = 556
  ClientWidth = 759
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 206
    Width = 759
    Height = 297
    ActivePage = tbshtSaldoProduto
    Align = alClient
    TabOrder = 0
    object tbshtSaldoProduto: TTabSheet
      Caption = 'Dados do Produto'
      object Label44: TLabel
        Left = 5
        Top = 5
        Width = 59
        Height = 13
        Caption = 'Tipo Item ID'
      end
      object Label56: TLabel
        Left = 5
        Top = 26
        Width = 74
        Height = 13
        Caption = 'Genero Item ID'
      end
      object Label9: TLabel
        Left = 5
        Top = 52
        Width = 68
        Height = 14
        Caption = 'Localiza'#231#227'o'
        FocusControl = DBEdit9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label13: TLabel
        Left = 285
        Top = 52
        Width = 23
        Height = 13
        Caption = 'Peso'
        FocusControl = DBEdit13
        WordWrap = True
      end
      object Label23: TLabel
        Left = 285
        Top = 77
        Width = 45
        Height = 13
        Caption = 'Cubagem'
        FocusControl = DBEdit34
        WordWrap = True
      end
      object Label12: TLabel
        Left = 5
        Top = 76
        Width = 45
        Height = 13
        Caption = 'Aplica'#231#227'o'
        FocusControl = DBEdit12
        WordWrap = True
      end
      object Label39: TLabel
        Left = 5
        Top = 95
        Width = 48
        Height = 13
        Caption = 'Modelo ID'
      end
      object Label14: TLabel
        Left = 5
        Top = 114
        Width = 58
        Height = 13
        Caption = 'Observa'#231#227'o'
        FocusControl = DBEdit13
        WordWrap = True
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 144
        Width = 425
        Height = 130
        Caption = 'Dados de Valores'
        TabOrder = 0
        object Label24: TLabel
          Left = 9
          Top = 61
          Width = 83
          Height = 13
          Caption = 'Custo M'#233'dio (U$)'
          FocusControl = dbedtCustoMedioUS
        end
        object Label25: TLabel
          Left = 9
          Top = 13
          Width = 83
          Height = 13
          Caption = 'Custo M'#233'dio (R$)'
          FocusControl = dbedtCustoMedioRS
        end
        object Label26: TLabel
          Left = 9
          Top = 37
          Width = 79
          Height = 13
          Caption = 'Custo Total (R$)'
          FocusControl = dbedtCustoMedioTotal
        end
        object Label28: TLabel
          Left = 203
          Top = 13
          Width = 75
          Height = 13
          Caption = 'Pre'#231'o de Venda'
          FocusControl = DBEdit26
        end
        object Label51: TLabel
          Left = 203
          Top = 57
          Width = 110
          Height = 13
          Caption = 'Pre'#231'o M'#237'nimo de Venda'
          FocusControl = DBEdit47
          WordWrap = True
        end
        object Label52: TLabel
          Left = 9
          Top = 85
          Width = 71
          Height = 13
          Caption = 'Valor FOB (U$)'
          FocusControl = DBEdit48
        end
        object Label53: TLabel
          Left = 9
          Top = 109
          Width = 71
          Height = 13
          Caption = 'Valor FOB (R$)'
          FocusControl = DBEdit49
        end
        object Label21: TLabel
          Left = 203
          Top = 33
          Width = 117
          Height = 13
          Caption = 'Pre'#231'o de Venda (IPI)'
          FocusControl = DBEdit23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 203
          Top = 79
          Width = 96
          Height = 26
          Caption = 'Pre'#231'o M'#237'nimo de Venda(IPI)'
          FocusControl = DBEdit24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object dbedtCustoMedioUS: TDBEdit
          Left = 100
          Top = 57
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CUSTOMEDIOUS'
          DataSource = dmEF.dsProduto
          TabOrder = 0
        end
        object dbedtCustoMedioRS: TDBEdit
          Left = 100
          Top = 9
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CUSTOMEDIO'
          DataSource = dmEF.dsProduto
          TabOrder = 1
        end
        object dbedtCustoMedioTotal: TDBEdit
          Left = 100
          Top = 33
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CUSTOTOTAL'
          DataSource = dmEF.dsProduto
          TabOrder = 2
        end
        object DBEdit26: TDBEdit
          Left = 320
          Top = 9
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRECOVENDA'
          DataSource = dmEF.dsProduto
          TabOrder = 3
        end
        object DBEdit47: TDBEdit
          Left = 320
          Top = 57
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PRECOVENDAMINIMO'
          DataSource = dmEF.dsProduto
          TabOrder = 4
        end
        object DBEdit48: TDBEdit
          Left = 100
          Top = 81
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLRFOBUS'
          DataSource = dmEF.dsProduto
          TabOrder = 5
        end
        object DBEdit49: TDBEdit
          Left = 100
          Top = 105
          Width = 93
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VLRFOB'
          DataSource = dmEF.dsProduto
          TabOrder = 6
        end
        object DBCheckBox4: TDBCheckBox
          Left = 201
          Top = 110
          Width = 190
          Height = 15
          Caption = 'Incentivo ICMS (PRODEPE)'
          DataField = 'INCENTIVOICMS'
          DataSource = dmEF.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit23: TDBEdit
          Left = 320
          Top = 33
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'C_PRECOVENDA_IPI'
          DataSource = dmEF.dsProduto
          TabOrder = 8
        end
        object DBEdit24: TDBEdit
          Left = 320
          Top = 84
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          DataField = 'C_PRECOVENDAMININO_IPI'
          DataSource = dmEF.dsProduto
          TabOrder = 9
        end
      end
      object wwDBComboDlg8: TwwDBComboDlg
        Left = 76
        Top = 1
        Width = 77
        Height = 20
        OnCustomDlg = wwDBComboDlg8CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        DataField = 'TIPOITEMID'
        DataSource = dmEF.dsProduto
        TabOrder = 1
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBEdit35: TDBEdit
        Left = 157
        Top = 1
        Width = 263
        Height = 21
        Color = clInactiveBorder
        DataField = 'L_DESCRICAOTIPOITEM'
        DataSource = dmEF.dsProduto
        ReadOnly = True
        TabOrder = 2
      end
      object wwDBComboDlg9: TwwDBComboDlg
        Left = 76
        Top = 26
        Width = 77
        Height = 20
        OnCustomDlg = wwDBComboDlg9CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        DataField = 'GENEROITEMID'
        DataSource = dmEF.dsProduto
        TabOrder = 3
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBEdit36: TDBEdit
        Left = 157
        Top = 24
        Width = 263
        Height = 21
        Color = clInactiveBorder
        DataField = 'L_DESCRICAOGENEROITEM'
        DataSource = dmEF.dsProduto
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 76
        Top = 48
        Width = 176
        Height = 22
        CharCase = ecUpperCase
        DataField = 'LOCALIZACAO'
        DataSource = dmEF.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit13: TDBEdit
        Left = 336
        Top = 48
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PESO'
        DataSource = dmEF.dsProduto
        TabOrder = 6
      end
      object DBEdit34: TDBEdit
        Left = 336
        Top = 72
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CUBAGEM'
        DataSource = dmEF.dsProduto
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 76
        Top = 72
        Width = 176
        Height = 21
        CharCase = ecUpperCase
        DataField = 'APLICACAO'
        DataSource = dmEF.dsProduto
        TabOrder = 8
      end
      object wwDBComboDlg7: TwwDBComboDlg
        Left = 76
        Top = 95
        Width = 249
        Height = 20
        OnCustomDlg = wwDBComboDlg7CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        DataField = 'MODELOID'
        DataSource = dmEF.dsProduto
        TabOrder = 9
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBMemo1: TDBMemo
        Left = 76
        Top = 116
        Width = 345
        Height = 29
        DataField = 'OBSERVACAO'
        DataSource = dmEF.dsProduto
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados de tributa'#231#227'o'
      ImageIndex = 2
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 751
        Height = 225
        Align = alTop
        Caption = ' Dados de Tributa'#231#227'o '
        TabOrder = 0
        DesignSize = (
          751
          225)
        object Label47: TLabel
          Left = 7
          Top = 172
          Width = 84
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '% Redu'#231#227'o ICMS'
          FocusControl = DBEdit42
          ExplicitLeft = 4
        end
        object GroupBox6: TGroupBox
          Left = 2
          Top = 15
          Width = 743
          Height = 90
          Caption = ' NCM '
          TabOrder = 0
          object Label34: TLabel
            Left = 5
            Top = 20
            Width = 51
            Height = 13
            Caption = '1'#186'..........'
            FocusControl = DBEdit31
          end
          object Label35: TLabel
            Left = 5
            Top = 44
            Width = 51
            Height = 13
            Caption = '2'#186'..........'
            FocusControl = DBEdit32
          end
          object Label36: TLabel
            Left = 5
            Top = 68
            Width = 51
            Height = 13
            Caption = '3'#186'..........'
            FocusControl = DBEdit33
          end
          object Label37: TLabel
            Left = 290
            Top = 0
            Width = 52
            Height = 13
            Caption = ' Descri'#231#227'o '
          end
          object Label38: TLabel
            Left = 180
            Top = 0
            Width = 29
            Height = 13
            Caption = ' Data '
          end
          object Label48: TLabel
            Left = 62
            Top = 0
            Width = 39
            Height = 13
            Caption = ' C'#243'digo '
            FocusControl = DBEdit31
          end
          object DBEdit31: TDBEdit
            Left = 62
            Top = 16
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NCMID'
            DataSource = dmEF.dsProduto
            TabOrder = 0
          end
          object DBEdit32: TDBEdit
            Left = 62
            Top = 40
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NCM2ID'
            DataSource = dmEF.dsProduto
            TabOrder = 1
          end
          object DBEdit33: TDBEdit
            Left = 62
            Top = 64
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NCM3ID'
            DataSource = dmEF.dsProduto
            TabOrder = 2
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 180
            Top = 16
            Width = 101
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATANCM'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 3
          end
          object wwDBDateTimePicker2: TwwDBDateTimePicker
            Left = 180
            Top = 40
            Width = 101
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATANCM2'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 4
          end
          object wwDBDateTimePicker3: TwwDBDateTimePicker
            Left = 180
            Top = 64
            Width = 101
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATANCM3'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 5
          end
          object DBMemo2: TDBMemo
            Left = 292
            Top = 16
            Width = 445
            Height = 69
            DataField = 'DESCRICAONCM'
            DataSource = dmEF.dsProduto
            TabOrder = 6
          end
        end
        object GroupBox7: TGroupBox
          Left = 170
          Top = 107
          Width = 184
          Height = 94
          Anchors = [akTop, akRight]
          Caption = ' Imposto de Importa'#231#227'o '
          TabOrder = 1
          object Label27: TLabel
            Left = 5
            Top = 12
            Width = 50
            Height = 13
            Caption = 'Aliquota II'
            FocusControl = DBEdit27
          end
          object Label29: TLabel
            Left = 89
            Top = 12
            Width = 83
            Height = 13
            Caption = 'Aliquota Temp. II'
            FocusControl = DBEdit28
          end
          object Label32: TLabel
            Left = 5
            Top = 48
            Width = 53
            Height = 13
            Caption = 'Data Inicial'
          end
          object Label33: TLabel
            Left = 89
            Top = 48
            Width = 48
            Height = 13
            Caption = 'Data Final'
          end
          object DBEdit27: TDBEdit
            Left = 5
            Top = 28
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ALIQUOTAII'
            DataSource = dmEF.dsProduto
            TabOrder = 0
          end
          object DBEdit28: TDBEdit
            Left = 89
            Top = 28
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ALIQUOTATEMPII'
            DataSource = dmEF.dsProduto
            TabOrder = 1
          end
          object wwDBDateTimePicker4: TwwDBDateTimePicker
            Left = 5
            Top = 64
            Width = 81
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATAINICIALII'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 2
          end
          object wwDBDateTimePicker5: TwwDBDateTimePicker
            Left = 89
            Top = 64
            Width = 81
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATAFINALII'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 3
          end
        end
        object GroupBox8: TGroupBox
          Left = 354
          Top = 107
          Width = 194
          Height = 94
          Anchors = [akTop, akRight]
          Caption = ' Imp. sobre Produto Industrializado '
          TabOrder = 2
          object Label30: TLabel
            Left = 5
            Top = 12
            Width = 56
            Height = 13
            Caption = 'Aliquota IPI'
            FocusControl = DBEdit29
          end
          object Label31: TLabel
            Left = 89
            Top = 12
            Width = 89
            Height = 13
            Caption = 'Aliquota Temp. IPI'
            FocusControl = DBEdit30
          end
          object Label41: TLabel
            Left = 5
            Top = 48
            Width = 53
            Height = 13
            Caption = 'Data Inicial'
          end
          object Label42: TLabel
            Left = 89
            Top = 48
            Width = 48
            Height = 13
            Caption = 'Data Final'
          end
          object DBEdit29: TDBEdit
            Left = 5
            Top = 28
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ALIQUOTAIPI'
            DataSource = dmEF.dsProduto
            TabOrder = 0
          end
          object DBEdit30: TDBEdit
            Left = 89
            Top = 28
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ALIQUOTATEMPIPI'
            DataSource = dmEF.dsProduto
            TabOrder = 1
          end
          object wwDBDateTimePicker6: TwwDBDateTimePicker
            Left = 5
            Top = 64
            Width = 81
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATAINICIALIPI'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 2
          end
          object wwDBDateTimePicker7: TwwDBDateTimePicker
            Left = 89
            Top = 64
            Width = 81
            Height = 21
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'DATAFINALIPI'
            DataSource = dmEF.dsProduto
            Epoch = 1950
            ShowButton = True
            TabOrder = 3
          end
        end
        object GroupBox9: TGroupBox
          Left = 2
          Top = 107
          Width = 159
          Height = 54
          Caption = ' Situa'#231#227'o Tribut'#225'ria Federal '
          TabOrder = 3
          object DBCheckBox2: TDBCheckBox
            Left = 10
            Top = 16
            Width = 89
            Height = 16
            Caption = 'Suspens'#227'o IPI'
            DataField = 'SUSPENSAOIPI'
            DataSource = dmEF.dsProduto
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 10
            Top = 32
            Width = 89
            Height = 15
            Caption = 'Isen'#231#227'o IPI'
            DataField = 'ISENTOIPI'
            DataSource = dmEF.dsProduto
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object DBEdit42: TDBEdit
          Left = 107
          Top = 168
          Width = 55
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'REDUCAOICMS'
          DataSource = dmEF.dsProduto
          TabOrder = 4
        end
        object GroupBox10: TGroupBox
          Left = 546
          Top = 106
          Width = 196
          Height = 95
          Caption = ' Contas Cont'#225'beis '
          TabOrder = 5
          object Label40: TLabel
            Left = 5
            Top = 24
            Width = 25
            Height = 13
            Caption = 'Ativo'
            FocusControl = DBEdit44
            WordWrap = True
          end
          object Label49: TLabel
            Left = 5
            Top = 48
            Width = 41
            Height = 13
            Caption = 'Despesa'
            FocusControl = DBEdit45
            WordWrap = True
          end
          object Label50: TLabel
            Left = 5
            Top = 72
            Width = 36
            Height = 13
            Caption = 'Receita'
            FocusControl = DBEdit46
            WordWrap = True
          end
          object DBEdit44: TDBEdit
            Left = 62
            Top = 20
            Width = 87
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTACTBATIVO'
            DataSource = dmEF.dsProduto
            TabOrder = 0
          end
          object DBEdit45: TDBEdit
            Left = 62
            Top = 44
            Width = 87
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTACTBDESPESA'
            DataSource = dmEF.dsProduto
            TabOrder = 1
          end
          object DBEdit46: TDBEdit
            Left = 62
            Top = 68
            Width = 87
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTACTBRECEITA'
            DataSource = dmEF.dsProduto
            TabOrder = 2
          end
        end
        object DBCheckBox1: TDBCheckBox
          Left = 11
          Top = 192
          Width = 151
          Height = 15
          Caption = 'Incentivo ICMS (PRODEPE)'
          DataField = 'INCENTIVOICMS'
          DataSource = dmEF.dsProduto
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object Button1: TButton
          Left = 712
          Top = 200
          Width = 25
          Height = 25
          Caption = 'Button1'
          TabOrder = 7
          OnClick = Button1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Similaridade do Produto'
      ImageIndex = 2
      object Label45: TLabel
        Left = 9
        Top = 2
        Width = 54
        Height = 13
        Caption = 'Empresa Id'
        FocusControl = DBEdit14
      end
      object Label46: TLabel
        Left = 80
        Top = 2
        Width = 71
        Height = 13
        Caption = 'Nome Empresa'
        FocusControl = DBEdit14
      end
      object Label54: TLabel
        Left = 82
        Top = 45
        Width = 66
        Height = 26
        Caption = 'Descri'#231#227'o em Portugu'#234's'
        FocusControl = DBEdit5
        WordWrap = True
      end
      object Label55: TLabel
        Left = 9
        Top = 38
        Width = 52
        Height = 13
        Caption = 'Produto ID'
        FocusControl = DBEdit1
      end
      object wwDBComboDlg6: TwwDBComboDlg
        Left = 9
        Top = 16
        Width = 69
        Height = 20
        OnCustomDlg = wwDBComboDlg6CustomDlg
        ShowButton = True
        Style = csDropDown
        AutoSize = False
        DataField = 'EMPRESASIMILARID'
        DataSource = dmEF.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBEdit4: TDBEdit
        Left = 9
        Top = 52
        Width = 69
        Height = 21
        DataField = 'PRODUTOSIMILARID'
        DataSource = dmEF.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit14: TDBEdit
        Left = 80
        Top = 16
        Width = 302
        Height = 21
        TabStop = False
        Color = clScrollBar
        DataField = 'L_NOMEFANTASIASIMILAR'
        DataSource = dmEF.dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit15: TDBEdit
        Left = 152
        Top = 50
        Width = 568
        Height = 21
        CharCase = ecUpperCase
        DataField = 'L_DESCRICAOPORTUGUES'
        DataSource = dmEF.dsProduto
        TabOrder = 3
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Desmembramento'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object BitBtn4: TBitBtn
        Left = 162
        Top = 108
        Width = 129
        Height = 25
        Caption = 'Desmembrar'
        TabOrder = 1
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDD0000DD70DDD000DDDDDDDDDD0000DF8700007700DDDDDDDD0000D0F8
          7077FF770DDDDDDD0000DD0F870000F870DDDDDD0000DD00F870880F870DDDDD
          0000DD080F870880F870DDDD0000D08800F808880F870DDD0000D0F708008888
          80F870DD0000D0F708888888880F70DD0000DD0F70F8F8888880F70D0000DD0F
          808F8F880080F70D0000DDD0F0F8F8F08700870D0000DDF07FFFFF80F87000DD
          0000DDDFFFFFF0F80F8700DD0000DDF8FFF7070000F870DD0000DDDF8FF0FF77
          880F870D0000DDDDFDF000FFF000F87D0000DDDDDDDDDD000DDD0FDD0000DDDD
          DDDDDDDDDDDDDDDD0000}
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 104
        Width = 425
        Height = 141
        Caption = 'Dados de Valores'
        TabOrder = 2
        object Label6: TLabel
          Left = 9
          Top = 64
          Width = 83
          Height = 13
          Caption = 'Custo M'#233'dio (U$)'
          FocusControl = DBEdit16
        end
        object Label15: TLabel
          Left = 9
          Top = 16
          Width = 83
          Height = 13
          Caption = 'Custo M'#233'dio (R$)'
          FocusControl = DBEdit17
        end
        object Label16: TLabel
          Left = 9
          Top = 40
          Width = 79
          Height = 13
          Caption = 'Custo Total (R$)'
          FocusControl = DBEdit18
        end
        object Label17: TLabel
          Left = 209
          Top = 16
          Width = 75
          Height = 13
          Caption = 'Pre'#231'o de Venda'
          FocusControl = DBEdit19
        end
        object Label18: TLabel
          Left = 209
          Top = 34
          Width = 80
          Height = 26
          Caption = 'Pre'#231'o M'#237'nimo de Venda'
          FocusControl = DBEdit20
          WordWrap = True
        end
        object Label19: TLabel
          Left = 9
          Top = 88
          Width = 71
          Height = 13
          Caption = 'Valor FOB (U$)'
          FocusControl = DBEdit21
        end
        object Label20: TLabel
          Left = 9
          Top = 112
          Width = 71
          Height = 13
          Caption = 'Valor FOB (R$)'
          FocusControl = DBEdit22
        end
        object DBEdit16: TDBEdit
          Left = 100
          Top = 60
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'CUSTOMEDIOUS'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 100
          Top = 12
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'CUSTOMEDIO'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 100
          Top = 36
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'CUSTOTOTAL'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 292
          Top = 12
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'PRECOVENDA'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit20: TDBEdit
          Left = 292
          Top = 36
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'PRECOVENDAMINIMO'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit21: TDBEdit
          Left = 100
          Top = 84
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'VLRFOBUS'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit22: TDBEdit
          Left = 100
          Top = 108
          Width = 101
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'VLRFOB'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 6
        end
        object DBCheckBox5: TDBCheckBox
          Left = 211
          Top = 110
          Width = 190
          Height = 15
          Caption = 'Incentivo ICMS (PRODEPE)'
          DataField = 'INCENTIVOICMS'
          DataSource = dmEF.dsProduto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 425
        Height = 105
        Caption = 'Dados para desmembramento'
        TabOrder = 0
        object Label77: TLabel
          Left = 10
          Top = 64
          Width = 139
          Height = 13
          Caption = 'Custo Unit'#225'rio Desmembrado'
        end
        object Label79: TLabel
          Left = 10
          Top = 40
          Width = 126
          Height = 13
          Caption = 'Quantidade desmembrada'
        end
        object Label80: TLabel
          Left = 10
          Top = 16
          Width = 99
          Height = 13
          Caption = 'Produto Receptor ID'
        end
        object mktCustoDesmemb: TMaskEdit
          Left = 155
          Top = 64
          Width = 93
          Height = 21
          TabOrder = 2
          OnEnter = mktProdReceptorIDEnter
        end
        object mktQtdDesmemb: TMaskEdit
          Left = 155
          Top = 39
          Width = 93
          Height = 21
          TabOrder = 1
          OnEnter = mktProdReceptorIDEnter
        end
        object mktProdReceptorID: TMaskEdit
          Left = 155
          Top = 15
          Width = 94
          Height = 21
          EditMask = '>#####;0; '
          MaxLength = 5
          TabOrder = 0
          OnEnter = mktProdReceptorIDEnter
        end
        object btnDesmembrar: TBitBtn
          Left = 272
          Top = 24
          Width = 137
          Height = 25
          Caption = 'Desmembrar'
          TabOrder = 3
          OnClick = btnDesmembrarClick
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000010000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
            DDDDDDDD0000DD70DDD000DDDDDDDDDD0000DF8700007700DDDDDDDD0000D0F8
            7077FF770DDDDDDD0000DD0F870000F870DDDDDD0000DD00F870880F870DDDDD
            0000DD080F870880F870DDDD0000D08800F808880F870DDD0000D0F708008888
            80F870DD0000D0F708888888880F70DD0000DD0F70F8F8888880F70D0000DD0F
            808F8F880080F70D0000DDD0F0F8F8F08700870D0000DDF07FFFFF80F87000DD
            0000DDDFFFFFF0F80F8700DD0000DDF8FFF7070000F870DD0000DDDF8FF0FF77
            880F870D0000DDDDFDF000FFF000F87D0000DDDDDDDDDD000DDD0FDD0000DDDD
            DDDDDDDDDDDDDDDD0000}
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Informa'#231#245'es de S'#233'ries'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox12: TGroupBox
        Left = 0
        Top = 0
        Width = 684
        Height = 269
        Align = alClient
        Caption = 'Itens de Sa'#237'da'
        TabOrder = 1
        object dbgrdItem: TDBGrid
          Left = 2
          Top = 15
          Width = 680
          Height = 252
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmEF.dsProdutoItem
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
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
              FieldName = 'PRODUTOITEMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAENTRADA'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOPRODUTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIEID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REVISAO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAULTIMAREVISAO'
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
              FieldName = 'QTDUTILIZADA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOBARRA'
              Width = 174
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INCENTIVOICMS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NCMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATANCM'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACAO'
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
      object tmbedtlstProduto: TtmbEdicaoLista
        Left = 684
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmEF.cdsProdutoItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsProdutoItem
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 759
    Height = 177
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    DesignSize = (
      759
      177)
    object Label1: TLabel
      Left = 9
      Top = 38
      Width = 52
      Height = 13
      Caption = 'Produto ID'
      FocusControl = DBEdit1
    end
    object Label10: TLabel
      Left = 80
      Top = 38
      Width = 60
      Height = 13
      Caption = 'Part Number'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 9
      Top = 2
      Width = 54
      Height = 13
      Caption = 'Empresa Id'
      FocusControl = DBEdit2
    end
    object Label43: TLabel
      Left = 80
      Top = 2
      Width = 71
      Height = 13
      Caption = 'Nome Empresa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 10
      Top = 77
      Width = 66
      Height = 26
      Caption = 'Descri'#231#227'o em Portugu'#234's'
      FocusControl = DBEdit5
      WordWrap = True
    end
    object Label7: TLabel
      Left = 10
      Top = 102
      Width = 63
      Height = 26
      Caption = 'Descri'#231#227'o em Ingl'#234's'
      FocusControl = DBEdit5
      WordWrap = True
    end
    object Label8: TLabel
      Left = 274
      Top = 38
      Width = 76
      Height = 13
      Caption = 'Unidade Medida'
    end
    object Label5: TLabel
      Left = 10
      Top = 132
      Width = 43
      Height = 13
      Caption = 'Grupo ID'
    end
    object Label2: TLabel
      Left = 418
      Top = 132
      Width = 50
      Height = 13
      Caption = 'Sub Grupo'
    end
    object Label4: TLabel
      Left = 10
      Top = 156
      Width = 69
      Height = 13
      Caption = 'Fornecedor ID'
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 52
      Width = 69
      Height = 21
      Color = clInactiveBorder
      DataField = 'PRODUTOID'
      DataSource = dmEF.dsProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 80
      Top = 53
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PARTNUMBERID'
      DataSource = dmEF.dsProduto
      TabOrder = 3
    end
    object DBRadioGroup4: TDBRadioGroup
      Left = 603
      Top = 2
      Width = 78
      Height = 48
      Caption = ' Status '
      DataField = 'ATIVO'
      DataSource = dmEF.dsProduto
      Items.Strings = (
        'Ativo'
        'Bloqueado')
      ParentBackground = True
      TabOrder = 6
      Values.Strings = (
        '1'
        '0')
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 400
      Top = 2
      Width = 132
      Height = 50
      Anchors = [akTop, akRight]
      Caption = ' Origem '
      DataField = 'ORIGEM'
      DataSource = dmEF.dsProduto
      Items.Strings = (
        'Nacional'
        'Importado'
        'Nacionalizado')
      ParentBackground = True
      TabOrder = 4
      Values.Strings = (
        'N'
        'I'
        'B')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 536
      Top = 3
      Width = 66
      Height = 48
      Anchors = [akTop, akRight]
      Caption = ' Tipo '
      DataField = 'NOVOUSADO'
      DataSource = dmEF.dsProduto
      Items.Strings = (
        'Novo'
        'Usado')
      ParentBackground = True
      TabOrder = 5
      Values.Strings = (
        'N'
        'U')
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 9
      Top = 16
      Width = 69
      Height = 20
      OnCustomDlg = wwDBComboDlg3CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      Color = clScrollBar
      DataField = 'EMPRESAID'
      DataSource = dmEF.dsProduto
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 16
      Width = 302
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_NOMEFANTASIA'
      DataSource = dmEF.dsProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 105
      Width = 568
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAOINGLES'
      DataSource = dmEF.dsProduto
      TabOrder = 7
    end
    object DBEdit11: TDBEdit
      Left = 80
      Top = 82
      Width = 568
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAOPORTUGUES'
      DataSource = dmEF.dsProduto
      TabOrder = 8
    end
    object DBEdit7: TDBEdit
      Left = 353
      Top = 51
      Width = 298
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_DESCRICAOUNIDADE'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 9
    end
    object wwDBComboDlg5: TwwDBComboDlg
      Left = 274
      Top = 53
      Width = 75
      Height = 20
      OnCustomDlg = wwDBComboDlg5CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'UNIDADEID'
      DataSource = dmEF.dsProduto
      TabOrder = 10
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBComboDlg2: TwwDBComboDlg
      Left = 80
      Top = 128
      Width = 77
      Height = 20
      OnCustomDlg = wwDBComboDlg2CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'GRUPOID'
      DataSource = dmEF.dsProduto
      TabOrder = 11
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit6: TDBEdit
      Left = 161
      Top = 128
      Width = 56
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_SIGLAGRUPO'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 12
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 474
      Top = 128
      Width = 47
      Height = 20
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'SUBGRUPOID'
      DataSource = dmEF.dsProduto
      TabOrder = 13
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit8: TDBEdit
      Left = 528
      Top = 128
      Width = 185
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_DESCRICAO_SUBGRUPO'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 14
    end
    object wwDBComboDlg4: TwwDBComboDlg
      Left = 80
      Top = 152
      Width = 77
      Height = 20
      OnCustomDlg = wwDBComboDlg4CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'FORNECEDORID'
      DataSource = dmEF.dsProduto
      TabOrder = 15
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit3: TDBEdit
      Left = 161
      Top = 152
      Width = 552
      Height = 20
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_NOMEFORNECEDOR'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 16
    end
    object DBEdit25: TDBEdit
      Left = 225
      Top = 128
      Width = 184
      Height = 21
      Color = clInactiveBorder
      DataField = 'L_DESCRICAO_GRUPO'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 17
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 503
    Width = 759
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 2
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 1
      Top = 1
      Width = 757
      Height = 32
      Align = alBottom
      AutoSize = True
      Bands = <
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          MinWidth = 137
          Width = 150
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 28
          Width = 535
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 64
        end>
      FixedSize = True
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsProduto
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 537
    Width = 759
    Height = 19
    Panels = <>
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 759
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 557
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 200
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 544
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
      Left = 568
      Top = 0
      Width = 187
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 187
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
    Left = 596
    Top = 100
    Bitmap = {
      494C010101000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001001000000000008009
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018631863186318631863
      1863186318631863000018630000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186318631863186318631863
      E07FE07FE07F1863186300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186318631863186318631863
      1042104210421863186300001863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000001863186300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000186318631863186318631863
      1863186318631863000018630000186300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000186300001863000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000018630000186300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7F00000000
      000000000000FF7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7F0000
      0000000000000000FF7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
            Action = actImpRotulo
            ImageIndex = 21
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actImpRotulo
            Caption = '&Imprimir R'#243'tulo'
            ImageIndex = 0
          end
          item
            Action = actImpEtiqueta
            Caption = 'I&mpress'#227'o Etiqueta'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 664
    Top = 100
    StyleName = 'XP Style'
    object actImpRotulo: TAction
      Category = 'Ferramentas'
      Caption = 'Imprimir R'#243'tulo'
      Hint = 'Impress'#227'o R'#243'tulo ANVISA'
      ImageIndex = 0
      OnExecute = actImpRotuloExecute
    end
    object actImpEtiqueta: TAction
      Category = 'Ferramentas'
      Caption = 'Impress'#227'o Etiqueta'
      Hint = 'Impress'#227'o da Etiqueta ANVISA'
      ImageIndex = 0
      OnExecute = actImpEtiquetaExecute
    end
  end
end
