object frmNFS: TfrmNFS
  Left = 821
  Top = 33
  Caption = 'Nota Fiscal de Sa'#237'da'
  ClientHeight = 543
  ClientWidth = 731
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
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 731
    Height = 78
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label9: TLabel
      Left = 77
      Top = 2
      Width = 38
      Height = 13
      Caption = 'N'#186' Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 156
      Top = 2
      Width = 68
      Height = 13
      Caption = 'Data Emiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 457
      Top = 2
      Width = 58
      Height = 13
      Caption = 'Data Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 374
      Top = 2
      Width = 63
      Height = 13
      Caption = 'N'#186' do Pedido'
    end
    object Label60: TLabel
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
    object Label61: TLabel
      Left = 269
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
    object Label62: TLabel
      Left = 560
      Top = 2
      Width = 59
      Height = 13
      Caption = 'Requisitante'
    end
    object Label46: TLabel
      Left = 6
      Top = 36
      Width = 34
      Height = 13
      Caption = 'NSU ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 76
      Top = 36
      Width = 55
      Height = 13
      Caption = 'Nf-eletr. ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label55: TLabel
      Left = 269
      Top = 36
      Width = 37
      Height = 13
      Caption = 'DDE  ID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 76
      Top = 16
      Width = 77
      Height = 21
      DataField = 'NFSID'
      DataSource = dmEF.dsNfs
      TabOrder = 0
    end
    object ckCancelada: TDBCheckBox
      Left = 495
      Top = 55
      Width = 109
      Height = 17
      Caption = 'NF Cancelada'
      DataField = 'CANCELADA'
      DataSource = dmEF.dsNfs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 456
      Top = 16
      Width = 101
      Height = 21
      Hint = 'Data do Pedido'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAPEDIDO'
      DataSource = dmEF.dsNfs
      Date = 38154.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 156
      Top = 16
      Width = 109
      Height = 21
      Hint = 'Data do Pedido'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAEMISSAOID'
      DataSource = dmEF.dsNfs
      Date = 38154.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 373
      Top = 16
      Width = 78
      Height = 21
      DataField = 'PDSID'
      DataSource = dmEF.dsNfs
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 6
      Top = 16
      Width = 66
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      DataField = 'EMPRESAID'
      DataSource = dmEF.dsNfs
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 269
      Top = 16
      Width = 98
      Height = 21
      Hint = 'N'#186' da Ordem de Servi'#231'o'
      TabStop = False
      DataField = 'OSID'
      DataSource = dmEF.dsNfs
      TabOrder = 6
    end
    object DBEdit53: TDBEdit
      Left = 559
      Top = 16
      Width = 92
      Height = 21
      Color = clScrollBar
      DataField = 'REQUISITANTE'
      DataSource = dmEF.dsNfs
      TabOrder = 7
    end
    object DBCheckBox2: TDBCheckBox
      Left = 495
      Top = 40
      Width = 156
      Height = 17
      Caption = 'Contribuinte do ICMS'
      DataField = 'CONTRIBUINTEICMS'
      DataSource = dmEF.dsNfs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit17: TDBEdit
      Left = 6
      Top = 51
      Width = 66
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      DataField = 'NSUID'
      DataSource = dmEF.dsNfs
      TabOrder = 9
    end
    object DBEdit22: TDBEdit
      Left = 76
      Top = 49
      Width = 189
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      DataField = 'NF_E1ID'
      DataSource = dmEF.dsNfs
      TabOrder = 10
    end
    object DBEdit26: TDBEdit
      Left = 269
      Top = 49
      Width = 99
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      DataField = 'DDEID'
      DataSource = dmEF.dsNfs
      TabOrder = 11
    end
  end
  object pgctrlNFS: TPageControl
    Left = 0
    Top = 107
    Width = 731
    Height = 383
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = pgctrlNFSChange
    object TabSheet1: TTabSheet
      Caption = 'Manuten'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 723
        Height = 209
        Align = alTop
        Caption = 'Dados do Destinat'#225'rio'
        TabOrder = 0
        object Label10: TLabel
          Left = 8
          Top = 21
          Width = 56
          Height = 13
          Caption = 'Destinat'#225'rio'
        end
        object Label40: TLabel
          Left = 8
          Top = 90
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label42: TLabel
          Left = 8
          Top = 136
          Width = 27
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label48: TLabel
          Left = 8
          Top = 160
          Width = 40
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 8
          Top = 185
          Width = 22
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit15
        end
        object Label49: TLabel
          Left = 363
          Top = 160
          Width = 17
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 45
          Width = 35
          Height = 13
          Caption = 'CEP ID'
        end
        object Label5: TLabel
          Left = 235
          Top = 44
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit4
        end
        object Label39: TLabel
          Left = 8
          Top = 66
          Width = 64
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit11
        end
        object Label20: TLabel
          Left = 416
          Top = 142
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit10
        end
        object Label21: TLabel
          Left = 416
          Top = 153
          Width = 52
          Height = 13
          Caption = 'de Entrega'
          FocusControl = DBEdit10
        end
        object Label44: TLabel
          Left = 416
          Top = 176
          Width = 61
          Height = 13
          Caption = 'de Cobran'#231'a'
          FocusControl = DBEdit25
        end
        object Label45: TLabel
          Left = 416
          Top = 165
          Width = 46
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit25
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 75
          Top = 17
          Width = 77
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
          OnCustomDlg = wwDBComboDlg3CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'ENTIDADEID'
          DataSource = dmEF.dsNfs
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit9: TDBEdit
          Left = 152
          Top = 17
          Width = 257
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'NOME'
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 1
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 75
          Top = 41
          Width = 77
          Height = 19
          Hint = 'Dados do Destinat'#225'rio: N'#186' do CEP '
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CEPID'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBMemo1: TDBMemo
          Left = 75
          Top = 89
          Width = 334
          Height = 39
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o'
          DataField = 'ENDERECO'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit18: TDBEdit
          Left = 75
          Top = 132
          Width = 334
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Bairro'
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit13: TDBEdit
          Left = 75
          Top = 157
          Width = 265
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Cidade'
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmEF.dsNfs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 75
          Top = 182
          Width = 334
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Pa'#237's'
          CharCase = ecUpperCase
          DataField = 'PAIS'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 380
          Top = 157
          Width = 29
          Height = 21
          Hint = 'Unidade federativa'
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmEF.dsNfs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit4: TDBEdit
          Left = 279
          Top = 40
          Width = 130
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBEdit11: TDBEdit
          Left = 75
          Top = 64
          Width = 334
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Complemento'
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object Button1: TButton
          Left = 320
          Top = 216
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 10
        end
        object GroupBox6: TGroupBox
          Left = 416
          Top = 56
          Width = 305
          Height = 79
          Caption = '&Libera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object Label6: TLabel
            Left = 80
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit16
          end
          object Label12: TLabel
            Left = 179
            Top = 14
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit20
          end
          object Label14: TLabel
            Left = 80
            Top = 58
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit21
          end
          object Label57: TLabel
            Left = 179
            Top = 58
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit20
          end
          object Label58: TLabel
            Left = 80
            Top = 36
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit51
          end
          object Label59: TLabel
            Left = 179
            Top = 36
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit20
          end
          object DBEdit16: TDBEdit
            Left = 112
            Top = 11
            Width = 64
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCHEFIANOME'
            DataSource = dmEF.dsNfs
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit20: TDBEdit
            Left = 208
            Top = 11
            Width = 93
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCHEFIADATA'
            DataSource = dmEF.dsNfs
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit21: TDBEdit
            Left = 112
            Top = 55
            Width = 65
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCONTABILNOME'
            DataSource = dmEF.dsNfs
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit50: TDBEdit
            Left = 208
            Top = 55
            Width = 94
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCONTABILDATA'
            DataSource = dmEF.dsNfs
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit51: TDBEdit
            Left = 112
            Top = 33
            Width = 65
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBFINANCEIRONOME'
            DataSource = dmEF.dsNfs
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit52: TDBEdit
            Left = 208
            Top = 33
            Width = 93
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBFINANCEIRODATA'
            DataSource = dmEF.dsNfs
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
            DataSource = dmEF.dsNfs
            Enabled = False
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
            DataSource = dmEF.dsNfs
            Enabled = False
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
            DataSource = dmEF.dsNfs
            Enabled = False
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 416
          Top = 10
          Width = 305
          Height = 44
          Hint = 'Tipo da Nota'
          Caption = '&Tipo de Nota'
          Color = clBtnFace
          Columns = 3
          DataField = 'TIPONOTA'
          DataSource = dmEF.dsNfs
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
          TabOrder = 12
          Values.Strings = (
            'A'
            'B'
            'C'
            'D'
            'I')
        end
        object DBEdit10: TDBEdit
          Left = 474
          Top = 143
          Width = 241
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o de Entrega'
          CharCase = ecUpperCase
          DataField = 'ENDERECOENTREGA'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object DBEdit25: TDBEdit
          Left = 474
          Top = 167
          Width = 241
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o de Cobran'#231'a'
          CharCase = ecUpperCase
          DataField = 'ENDERECOCOBRANCA'
          DataSource = dmEF.dsNfs
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 209
        Width = 723
        Height = 193
        ActivePage = TabSheet6
        Align = alTop
        TabOrder = 1
        object TabSheet6: TTabSheet
          Caption = 'Dados Fiscais'
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 715
            Height = 75
            Align = alTop
            Caption = 'Dados da Nota Fiscal de Entrada (Retorno Mercadorias)'
            TabOrder = 0
            object Label8: TLabel
              Left = 7
              Top = 16
              Width = 56
              Height = 26
              Caption = 'Nota Fiscal Entrada'
              WordWrap = True
            end
            object Label16: TLabel
              Left = 208
              Top = 18
              Width = 65
              Height = 13
              Caption = 'Data Emiss'#227'o'
            end
            object Label74: TLabel
              Left = 8
              Top = 47
              Width = 76
              Height = 13
              Caption = 'Empresa Ref. Id'
              FocusControl = DBEdit64
            end
            object Label75: TLabel
              Left = 212
              Top = 46
              Width = 58
              Height = 13
              Caption = 'NFS Ref. ID'
              FocusControl = DBEdit65
            end
            object Label76: TLabel
              Left = 366
              Top = 51
              Width = 127
              Height = 13
              Caption = 'Data de Emiss'#227'o NFS Ref.'
            end
            object DBEdit6: TDBEdit
              Left = 86
              Top = 20
              Width = 78
              Height = 21
              DataField = 'NFEID'
              DataSource = dmEF.dsNfs
              TabOrder = 0
            end
            object wwDBDateTimePicker2: TwwDBDateTimePicker
              Left = 276
              Top = 16
              Width = 109
              Height = 21
              Hint = 'Data do Pedido'
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATAEMISSAONFEID'
              DataSource = dmEF.dsNfs
              Date = 38154.000000000000000000
              Epoch = 1950
              ShowButton = True
              TabOrder = 1
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 400
              Top = 6
              Width = 256
              Height = 35
              Hint = 'Tipo da Nota'
              Caption = '&Tipo de Nota de Entrada'
              Color = clBtnFace
              Columns = 3
              DataField = 'TIPONOTAENTRADA'
              DataSource = dmEF.dsNfs
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Items.Strings = (
                'Terceiros'
                'De Terceiros'
                'Nenhuma')
              ParentBackground = True
              ParentColor = False
              ParentFont = False
              TabOrder = 2
              Values.Strings = (
                'T'
                'D'
                ''
                '')
            end
            object DBEdit64: TDBEdit
              Left = 86
              Top = 43
              Width = 81
              Height = 21
              Hint = 'N'#186' NFE'
              DataField = 'EMPRESANFSREFID'
              DataSource = dmEF.dsNfs
              TabOrder = 3
            end
            object DBEdit65: TDBEdit
              Left = 276
              Top = 43
              Width = 81
              Height = 21
              Hint = 'N'#186' NFE'
              DataField = 'NFSREFID'
              DataSource = dmEF.dsNfs
              TabOrder = 4
            end
            object wwDBDateTimePicker3: TwwDBDateTimePicker
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
              DataSource = dmEF.dsNfs
              Epoch = 1950
              ShowButton = True
              TabOrder = 5
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 75
            Width = 715
            Height = 90
            Align = alClient
            Caption = 'Natureza Opera'#231#227'o'
            TabOrder = 1
            object Label11: TLabel
              Left = 7
              Top = 18
              Width = 67
              Height = 13
              Caption = 'Nat.Opera'#231#227'o'
            end
            object Label24: TLabel
              Left = 176
              Top = 16
              Width = 40
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
              DataSource = dmEF.dsNfs
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit12: TDBEdit
              Left = 224
              Top = 12
              Width = 86
              Height = 21
              Hint = 'Nat. Opera'#231#227'o: CFOP'
              TabStop = False
              Color = clScrollBar
              DataField = 'L_CFOP'
              DataSource = dmEF.dsNfs
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit30: TDBEdit
              Left = 318
              Top = 12
              Width = 382
              Height = 21
              Hint = 'Nat. Opera'#231#227'o: Descri'#231#227'o do CFOP'
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAOOPERACAOUSUARIO'
              DataSource = dmEF.dsNfs
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Informa'#231#245'es complementares (Dados adicionais)'
          ImageIndex = 1
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 715
            Height = 165
            Align = alClient
            Caption = 'Observa'#231'ao'
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
              DataSource = dmEF.dsNfs
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBMemo4: TDBMemo
              Left = 169
              Top = 14
              Width = 542
              Height = 89
              DataField = 'DESCRICAOOBSERVACAO'
              DataSource = dmEF.dsNfs
              TabOrder = 1
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      DesignSize = (
        723
        355)
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 723
        Height = 355
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object GroupBox12: TGroupBox
          Left = 0
          Top = 0
          Width = 649
          Height = 355
          Align = alLeft
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          object dbgrdNFSItem: TDBGrid
            Left = 2
            Top = 15
            Width = 645
            Height = 338
            Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
            Align = alClient
            Color = clCream
            DataSource = dmEF.dsNfsItem
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
                FieldName = 'PORCDESCONTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRDESCONTO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRECOUNITDESC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRPRECOTOTALDESC'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAEMISSAONFEID'
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
                FieldName = 'ARTIGO'
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
                FieldName = 'ESTOQUEUTILIZADO'
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
                FieldName = 'L_UNIDADEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'sqldtsNfsItemBar'
                Width = 64
                Visible = True
              end>
          end
        end
      end
      object tmbEdicaoLista2: TtmbEdicaoLista
        Left = 656
        Top = 8
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmEF.cdsNfsItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsNfsItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'NfsItem'
        object tmbajtgrdNfsItem: tPanel1
          Left = 0
          Top = 136
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdNFSItem
          tmbCria = True
          tmbAjusta = False
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Presta'#231#227'o de Servi'#231'os'
      ImageIndex = 4
      DesignSize = (
        723
        355)
      object GroupBox4: TGroupBox
        Left = 0
        Top = 0
        Width = 649
        Height = 136
        Align = alLeft
        Caption = 'Presta'#231#227'o de Servi'#231'o'
        TabOrder = 1
        object dbgrdServico: TDBGrid
          Left = 2
          Top = 15
          Width = 645
          Height = 119
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmEF.dsNfsServico
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
              Width = 48
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
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_SIGLAGRUPO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAORESUMIDA'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRSERVICO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRISS'
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
              FieldName = 'VLRRETPIS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETCOFINS'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETCSLL'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETIRPF'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRRETIRPJ'
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
      object tmbEdicaoLista3: TtmbEdicaoLista
        Left = 656
        Top = 8
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmEF.cdsNfsServico
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsNfsServico
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Servi'#231'o'
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 136
        Width = 723
        Height = 219
        Align = alBottom
        Caption = 'Dados do Servi'#231'o'
        TabOrder = 2
        object Label56: TLabel
          Left = 453
          Top = 88
          Width = 84
          Height = 13
          Caption = 'Vlr. Total COFINS'
          FocusControl = DBEdit7
        end
        object Label13: TLabel
          Left = 453
          Top = 64
          Width = 62
          Height = 13
          Caption = 'Vlr. Total PIS'
          FocusControl = DBEdit48
        end
        object Label18: TLabel
          Left = 453
          Top = 16
          Width = 90
          Height = 13
          Caption = 'Valor Total Servi'#231'o'
          FocusControl = DBEdit49
        end
        object Label19: TLabel
          Left = 453
          Top = 40
          Width = 62
          Height = 13
          Caption = 'Vlr. Total ISS'
          FocusControl = DBEdit8
        end
        object Label64: TLabel
          Left = 453
          Top = 113
          Width = 107
          Height = 13
          Caption = 'Vlr. Total Ret. COFINS'
          FocusControl = DBEdit47
        end
        object Label65: TLabel
          Left = 453
          Top = 134
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Ret.PIS'
          FocusControl = DBEdit54
        end
        object Label66: TLabel
          Left = 453
          Top = 155
          Width = 91
          Height = 13
          Caption = 'Vlr. Total Ret.CSLL'
          FocusControl = DBEdit56
        end
        object Label67: TLabel
          Left = 453
          Top = 177
          Width = 90
          Height = 13
          Caption = 'Vlr. Total Ret.IRRF'
          FocusControl = DBEdit57
        end
        object Label68: TLabel
          Left = 453
          Top = 198
          Width = 89
          Height = 13
          Caption = 'Vlr. Total Ret.IRRJ'
          FocusControl = DBEdit58
        end
        object DBMemo2: TDBMemo
          Left = 8
          Top = 12
          Width = 433
          Height = 141
          DataField = 'DESCRICAOSERVICO'
          DataSource = dmEF.dsNfsServico
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 565
          Top = 85
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALCOFINS'
          DataSource = dmEF.dsNfs
          TabOrder = 1
        end
        object DBEdit48: TDBEdit
          Left = 565
          Top = 62
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. PIS'
          TabStop = False
          DataField = 'VLRTOTALPIS'
          DataSource = dmEF.dsNfs
          TabOrder = 2
        end
        object DBEdit49: TDBEdit
          Left = 565
          Top = 16
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total COFINS'
          TabStop = False
          DataField = 'VLRTOTALSERVICO'
          DataSource = dmEF.dsNfs
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 565
          Top = 39
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total PIS'
          TabStop = False
          DataField = 'VLRTOTALISS'
          DataSource = dmEF.dsNfs
          TabOrder = 4
        end
        object DBEdit47: TDBEdit
          Left = 565
          Top = 110
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETCOFINS'
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit54: TDBEdit
          Left = 565
          Top = 131
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETPIS'
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit56: TDBEdit
          Left = 565
          Top = 152
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETCSLL'
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit57: TDBEdit
          Left = 565
          Top = 174
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETIRPF'
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit58: TDBEdit
          Left = 565
          Top = 195
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETIRPJ'
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 9
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'C'#225'lculo do Imposto / Transportador/Volumes Transportados'
      ImageIndex = 2
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 723
        Height = 241
        Align = alTop
        Caption = 'C'#225'lculo do Imposto'
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 114
          Width = 84
          Height = 13
          Caption = 'Vlr. Total COFINS'
          FocusControl = DBEdit19
        end
        object Label17: TLabel
          Left = 8
          Top = 90
          Width = 62
          Height = 13
          Caption = 'Vlr. Total PIS'
          FocusControl = DBEdit24
        end
        object Label22: TLabel
          Left = 239
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Vlr.Total Base ICMS'
          FocusControl = DBEdit27
        end
        object Label23: TLabel
          Left = 239
          Top = 40
          Width = 71
          Height = 13
          Caption = 'Vlr. Total ICMS'
          FocusControl = DBEdit28
        end
        object Label25: TLabel
          Left = 239
          Top = 64
          Width = 108
          Height = 13
          Caption = 'Vlr. Total Isentas ICMS'
          FocusControl = DBEdit29
        end
        object Label26: TLabel
          Left = 239
          Top = 88
          Width = 105
          Height = 13
          Caption = 'Vlr. Total Outras ICMS'
          FocusControl = DBEdit33
        end
        object Label34: TLabel
          Left = 478
          Top = 17
          Width = 82
          Height = 13
          Caption = 'Vlr Total Base IPI'
          FocusControl = DBEdit37
        end
        object Label35: TLabel
          Left = 478
          Top = 41
          Width = 61
          Height = 13
          Caption = 'Vlr. Total  IPI'
          FocusControl = DBEdit38
        end
        object Label36: TLabel
          Left = 478
          Top = 65
          Width = 95
          Height = 13
          Caption = 'Vlr. Total Isentas IPI'
          FocusControl = DBEdit39
        end
        object Label37: TLabel
          Left = 478
          Top = 89
          Width = 92
          Height = 13
          Caption = 'Vlr. Total Outras IPI'
          FocusControl = DBEdit40
        end
        object Label38: TLabel
          Left = 8
          Top = 18
          Width = 42
          Height = 13
          Caption = 'Vlr. Frete'
          FocusControl = DBEdit41
        end
        object Label51: TLabel
          Left = 8
          Top = 41
          Width = 52
          Height = 13
          Caption = 'Vlr. Seguro'
          FocusControl = DBEdit43
        end
        object Label52: TLabel
          Left = 8
          Top = 65
          Width = 100
          Height = 13
          Caption = 'Vlr. Desp. Acess'#243'rias'
          FocusControl = DBEdit44
        end
        object Label53: TLabel
          Left = 478
          Top = 113
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Produto'
          FocusControl = DBEdit45
        end
        object Label54: TLabel
          Left = 478
          Top = 138
          Width = 68
          Height = 13
          Caption = 'Vlr. Total Nota'
          FocusControl = DBEdit46
        end
        object Label69: TLabel
          Left = 239
          Top = 115
          Width = 107
          Height = 13
          Caption = 'Vlr. Total Ret. COFINS'
          FocusControl = DBEdit59
        end
        object Label70: TLabel
          Left = 239
          Top = 139
          Width = 82
          Height = 13
          Caption = 'Vlr. Total Ret.PIS'
          FocusControl = DBEdit60
        end
        object Label71: TLabel
          Left = 239
          Top = 163
          Width = 91
          Height = 13
          Caption = 'Vlr. Total Ret.CSLL'
          FocusControl = DBEdit61
        end
        object Label72: TLabel
          Left = 239
          Top = 187
          Width = 90
          Height = 13
          Caption = 'Vlr. Total Ret.IRRF'
          FocusControl = DBEdit62
        end
        object Label73: TLabel
          Left = 239
          Top = 211
          Width = 89
          Height = 13
          Caption = 'Vlr. Total Ret.IRRJ'
          FocusControl = DBEdit63
        end
        object DBEdit19: TDBEdit
          Left = 120
          Top = 112
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total COFINS'
          TabStop = False
          DataField = 'VLRTOTALCOFINS'
          DataSource = dmEF.dsNfs
          TabOrder = 3
        end
        object DBEdit24: TDBEdit
          Left = 120
          Top = 88
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total PIS'
          TabStop = False
          DataField = 'VLRTOTALPIS'
          DataSource = dmEF.dsNfs
          TabOrder = 4
        end
        object DBEdit27: TDBEdit
          Left = 351
          Top = 14
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base ICMS'
          TabStop = False
          DataField = 'VLRTOTALBASEICMS'
          DataSource = dmEF.dsNfs
          TabOrder = 5
        end
        object DBEdit28: TDBEdit
          Left = 351
          Top = 38
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total ICMS'
          TabStop = False
          DataField = 'VLRTOTALICMS'
          DataSource = dmEF.dsNfs
          TabOrder = 6
        end
        object DBEdit29: TDBEdit
          Left = 351
          Top = 62
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas ICMS'
          TabStop = False
          DataField = 'VLRTOTALISENTASICMS'
          DataSource = dmEF.dsNfs
          TabOrder = 7
        end
        object DBEdit33: TDBEdit
          Left = 351
          Top = 86
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras ICMS'
          TabStop = False
          DataField = 'VLRTOTALOUTRASICMS'
          DataSource = dmEF.dsNfs
          TabOrder = 8
        end
        object DBEdit37: TDBEdit
          Left = 576
          Top = 13
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base IPI'
          TabStop = False
          DataField = 'VLRTOTALBASEIPI'
          DataSource = dmEF.dsNfs
          TabOrder = 9
        end
        object DBEdit38: TDBEdit
          Left = 576
          Top = 37
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total IPI'
          TabStop = False
          DataField = 'VLRTOTALIPI'
          DataSource = dmEF.dsNfs
          TabOrder = 10
        end
        object DBEdit39: TDBEdit
          Left = 576
          Top = 61
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas IPI'
          TabStop = False
          DataField = 'VLRTOTALISENTASIPI'
          DataSource = dmEF.dsNfs
          TabOrder = 11
        end
        object DBEdit40: TDBEdit
          Left = 576
          Top = 85
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras IPI'
          TabStop = False
          DataField = 'VLRTOTALOUTRASIPI'
          DataSource = dmEF.dsNfs
          TabOrder = 12
        end
        object DBEdit41: TDBEdit
          Left = 120
          Top = 16
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Frete'
          TabStop = False
          DataField = 'VLRFRETE'
          DataSource = dmEF.dsNfs
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
          DataSource = dmEF.dsNfs
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
          DataSource = dmEF.dsNfs
          TabOrder = 2
        end
        object DBEdit45: TDBEdit
          Left = 576
          Top = 109
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Produto'
          TabStop = False
          DataField = 'VLRTOTALPRODUTO'
          DataSource = dmEF.dsNfs
          TabOrder = 13
        end
        object DBEdit46: TDBEdit
          Left = 576
          Top = 133
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Nota'
          TabStop = False
          DataField = 'VLRTOTALNOTA'
          DataSource = dmEF.dsNfs
          TabOrder = 14
        end
        object DBEdit59: TDBEdit
          Left = 351
          Top = 112
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETCOFINS'
          DataSource = dmEF.dsNfs
          TabOrder = 15
        end
        object DBEdit60: TDBEdit
          Left = 351
          Top = 136
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETPIS'
          DataSource = dmEF.dsNfs
          TabOrder = 16
        end
        object DBEdit61: TDBEdit
          Left = 351
          Top = 160
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETCSLL'
          DataSource = dmEF.dsNfs
          TabOrder = 17
        end
        object DBEdit62: TDBEdit
          Left = 351
          Top = 184
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETIRPF'
          DataSource = dmEF.dsNfs
          TabOrder = 18
        end
        object DBEdit63: TDBEdit
          Left = 351
          Top = 208
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          DataField = 'VLRTOTALRETIRPJ'
          DataSource = dmEF.dsNfs
          TabOrder = 19
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 241
        Width = 723
        Height = 114
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object GroupBox7: TGroupBox
          Left = -1
          Top = 2
          Width = 321
          Height = 106
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
            DataSource = dmEF.dsNfs
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
            DataSource = dmEF.dsNfs
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
            DataSource = dmEF.dsNfs
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
            DataSource = dmEF.dsNfs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 13
            Items.Strings = (
              'VOLUME'
              'CAIXAS'
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
            DataSource = dmEF.dsNfs
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
            DataSource = dmEF.dsNfs
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
          Top = 2
          Width = 401
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
          object Label41: TLabel
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
          object Label43: TLabel
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
            DataSource = dmEF.dsNfs
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
            ShowButton = True
            Style = csDropDown
            AutoSize = False
            Color = clScrollBar
            DataField = 'TRANSPORTADORID'
            DataSource = dmEF.dsNfs
            TabOrder = 0
            WordWrap = False
            UnboundDataType = wwDefault
          end
          object DBEdit23: TDBEdit
            Left = 168
            Top = 12
            Width = 225
            Height = 21
            Hint = 'Transportador: Descri'#231#227'o do Transportador '
            TabStop = False
            Color = clScrollBar
            DataField = 'L_NOMETRANSPORTADOR'
            DataSource = dmEF.dsNfs
            ReadOnly = True
            TabOrder = 1
          end
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 321
          Top = 67
          Width = 401
          Height = 41
          Hint = 'Tipo de Frete'
          Caption = ' Frete por Conta '
          Color = clBtnFace
          Columns = 2
          Ctl3D = True
          DataField = 'MODALIDADEFRETE'
          DataSource = dmEF.dsNfs
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
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Fatura / Duplicata'
      ImageIndex = 3
      DesignSize = (
        723
        355)
      object GroupBox14: TGroupBox
        Left = 0
        Top = 0
        Width = 723
        Height = 161
        Align = alTop
        Caption = 'Dados do Servi'#231'o'
        TabOrder = 2
        object Label63: TLabel
          Left = 8
          Top = 19
          Width = 73
          Height = 13
          Caption = 'Cond. Pagto ID'
        end
        object Label15: TLabel
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
        object DBMemo3: TDBMemo
          Left = 7
          Top = 52
          Width = 506
          Height = 97
          DataField = 'DESCRICAOCONDPAGTO'
          DataSource = dmEF.dsNfs
          TabOrder = 0
        end
        object wwDBComboDlg7: TwwDBComboDlg
          Left = 86
          Top = 15
          Width = 77
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CONDPAGTOID'
          DataSource = dmEF.dsNfs
          TabOrder = 1
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
          DataSource = dmEF.dsNfs
          ReadOnly = True
          TabOrder = 2
        end
      end
      object GroupBox13: TGroupBox
        Left = 0
        Top = 161
        Width = 657
        Height = 194
        Align = alLeft
        Caption = 'Fatura / Duplicata'
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 511
          Height = 175
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Color = clCream
          DataSource = dmEF.dsNfsParcela
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
              Width = 64
              Visible = True
            end>
        end
      end
      object tmbEdicaoLista4: TtmbEdicaoLista
        Left = 656
        Top = 160
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmEF.cdsPdsParcela
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsNfsParcela
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Servi'#231'o'
      end
    end
    object TabSheet81: TTabSheet
      Caption = 'Pr'#233'-Nota'
      ImageIndex = 5
      object GroupBox15: TGroupBox
        Left = 0
        Top = 0
        Width = 723
        Height = 355
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
        object DBMemo5: TDBMemo
          Left = 2
          Top = 15
          Width = 719
          Height = 338
          Align = alClient
          DataField = 'DESCRICAOPRENOTA'
          DataSource = dmEF.dsNfs
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 524
    Width = 731
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
  object Panel7: TPanel
    Left = 0
    Top = 490
    Width = 731
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 2
      Width = 731
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
          Width = 262
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 311
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsNfs
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 731
    Height = 29
    AutoSize = True
    Bands = <
      item
        Break = False
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 308
      end
      item
        Break = False
        Control = tmbEdicaoTop1
        ImageIndex = -1
        MinHeight = 29
        Width = 421
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 295
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
      Left = 319
      Top = 0
      Width = 408
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 408
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object ActionToolBar2: TActionToolBar
      Left = 9
      Top = 0
      Width = 266
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar2'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 616
    Top = 64
    Bitmap = {
      494C010102000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000009494940094949400ADADAD00E7E7E700BDA5A500B5ADAD00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00CECE
      CE00EFEFEF00DEDEDE00ADADAD00B5B5B500524A4A005A5A5A00636363009C9C
      9C00D6D6D600D6D6D600BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F7F7
      F700EFEFEF00D6D6D600ADADAD00ADADAD004A4A4A00424242005A5A5A008484
      840094949400B5B5B500DEDEDE00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00F7F7F700EFEF
      EF00EFEFEF00D6D6D600A5A5A500ADADAD00B5B5B500A5A5A5008C8C8C006363
      630084848400949494009C9C9C00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500FFFFFF00DEDEDE009C9C
      9C009C9C9C00C6C6C6009C9C9C008C8C8C00848484008C8C8C00A5A5A500BDBD
      BD00BDBDBD00C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500F7F7F7009C9C9C00D6D6
      D600DEDEDE00D6D6D600CECECE00BDBDBD00A5A5A5009C9C9C008C8C8C008C8C
      8C00A5A5A500BDBDBD0084BD9400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      0000000000000000000000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C008C8C8C00DEDEDE00DEDE
      DE00D6D6D600EFEFEF00E7E7E700E7E7E700DEDEDE00CECECE00BDBDBD00ADAD
      AD009C9C9C008484840094949400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      0000000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00E7E7E700D6D6D600CECE
      CE00DEDEDE00C6C6C600F7F7F700EFEFEF00CECECE00BDBDBD00BDBDBD00BDBD
      BD00D6D6D600E7E7E700D6D6D600CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080008000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600CECECE00DEDE
      DE00CECECE00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00CECE
      CE00BDBDBD00BDBDBD00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800080000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600BDBDBD00C6C6
      C600D6D6D600CECECE00E7E7E700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700D6D6D600CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080008000
      8000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00FFFF
      F700FFF7E700D6D6D600C6C6C600C6C6C600C6C6C600BDBDBD00BDADAD00B5B5
      B500CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      0000000000000000800000008000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00C694
      8400FFD6AD00FFD6AD00FFDEB500FFE7BD00F7E7D600EFE7D600C6ADAD000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800080000000800080000000800000008000
      0000800000000000000080008000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7DEDE00DEAD
      9400FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500F7D6AD00BD9494000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000800080008000FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A5A500FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00BD949400D6C6C6000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C9400FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7DECE00BD949400000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6BD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CEB5AD00BD9C9C00000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD9C9C0000000000000000000000
      0000000000000000000000000000000000000000000080000000000000008000
      0000800000000000000080000000800000000000000080000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFEF00BD949400BD949400BD94
      9400BD949400BD949400BD949400BD9494000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F80FFFFF00000000
      C001FFFF00000000C000FFFF000000008000FFBF000000000000FF3E00000000
      0000FF1D000000000000FF9900000000000000030000000080017FC700000000
      8001494300000000C0077F9800000000C01F000400000000C01F800700000000
      C01F800700000000C03F800700000000C03F800700000000807FA49700000000
      00FF80070000000000000000000000000000000000000000000000000000}
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actRelatorio
            Caption = '&Impress'#227'o Nota Fiscal'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = actRelatorio
            Caption = '&Impress'#227'o Nota Fiscal'
            ImageIndex = 0
          end
          item
            Action = Action1
            Caption = '&Cancelar Nota'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar2
      end>
    Images = ImageList1
    Left = 664
    Top = 64
    StyleName = 'XP Style'
    object actRelatorio: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Impress'#227'o Nota Fiscal'
      ImageIndex = 0
      OnExecute = actRelatorioExecute
    end
    object Action1: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Cancelar Nota'
      Hint = 'Cancelar nota fiscal'
      ImageIndex = 1
      OnExecute = Action1Execute
    end
  end
end
