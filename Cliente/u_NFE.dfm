object frmNFE: TfrmNFE
  Left = 735
  Top = -12
  Caption = 'Nota Fiscal de Entrada'
  ClientHeight = 546
  ClientWidth = 770
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
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 527
    Width = 770
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
  object PageControl1: TPageControl
    Left = 0
    Top = 102
    Width = 770
    Height = 393
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Manuten'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 762
        Height = 210
        Align = alTop
        Caption = 'Dados do Remetende'
        TabOrder = 0
        object Label10: TLabel
          Left = 8
          Top = 21
          Width = 67
          Height = 13
          Caption = 'Remetente ID'
        end
        object Label40: TLabel
          Left = 8
          Top = 90
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label42: TLabel
          Left = 8
          Top = 136
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label48: TLabel
          Left = 8
          Top = 160
          Width = 38
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit13
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 8
          Top = 185
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit15
        end
        object Label49: TLabel
          Left = 381
          Top = 160
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit14
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 45
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label5: TLabel
          Left = 259
          Top = 44
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit4
        end
        object Label39: TLabel
          Left = 8
          Top = 66
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit11
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 86
          Top = 17
          Width = 77
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
          OnCustomDlg = wwDBComboDlg3CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'ENTIDADEID'
          DataSource = dmEF.dsNfe
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit9: TDBEdit
          Left = 168
          Top = 17
          Width = 266
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
          TabStop = False
          AutoSize = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'NOME'
          DataSource = dmEF.dsNfe
          ReadOnly = True
          TabOrder = 1
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 86
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
          DataSource = dmEF.dsNfe
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBMemo1: TDBMemo
          Left = 86
          Top = 89
          Width = 347
          Height = 39
          Hint = 'Dados do Destinat'#225'rio: Endere'#231'o'
          DataField = 'ENDERECO'
          DataSource = dmEF.dsNfe
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 5
        end
        object DBEdit18: TDBEdit
          Left = 86
          Top = 132
          Width = 347
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Bairro'
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = dmEF.dsNfe
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit13: TDBEdit
          Left = 86
          Top = 157
          Width = 265
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Cidade'
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dmEF.dsNfe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object DBEdit15: TDBEdit
          Left = 86
          Top = 182
          Width = 347
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Pa'#237's'
          CharCase = ecUpperCase
          DataField = 'PAIS'
          DataSource = dmEF.dsNfe
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
        end
        object DBEdit14: TDBEdit
          Left = 398
          Top = 157
          Width = 35
          Height = 21
          Hint = 'Unidade federativa'
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dmEF.dsNfe
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit4: TDBEdit
          Left = 304
          Top = 40
          Width = 130
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = dmEF.dsNfe
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit11: TDBEdit
          Left = 86
          Top = 64
          Width = 347
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Complemento'
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = dmEF.dsNfe
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object GroupBox11: TGroupBox
          Left = 439
          Top = 91
          Width = 313
          Height = 113
          Caption = 'Descri'#231#227'o no corpo da Nota Fiscal de Importa'#231#227'o'
          TabOrder = 10
          object DBMemo4: TDBMemo
            Left = 2
            Top = 15
            Width = 309
            Height = 96
            Align = alClient
            DataField = 'DESCRICAOIMPORTACAO'
            DataSource = dmEF.dsNfe
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 439
          Top = 6
          Width = 312
          Height = 79
          Caption = '&Libera'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          object Label15: TLabel
            Left = 80
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit7
          end
          object Label16: TLabel
            Left = 179
            Top = 14
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit8
          end
          object Label18: TLabel
            Left = 80
            Top = 58
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit10
          end
          object Label19: TLabel
            Left = 179
            Top = 58
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit8
          end
          object Label33: TLabel
            Left = 80
            Top = 36
            Width = 27
            Height = 13
            Caption = 'Nome'
            FocusControl = DBEdit17
          end
          object Label57: TLabel
            Left = 179
            Top = 36
            Width = 23
            Height = 13
            Caption = 'Data'
            FocusControl = DBEdit8
          end
          object DBEdit7: TDBEdit
            Left = 112
            Top = 11
            Width = 64
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCHEFIANOME'
            DataSource = dmEF.dsNfe
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 208
            Top = 11
            Width = 93
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCHEFIADATA'
            DataSource = dmEF.dsNfe
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit10: TDBEdit
            Left = 112
            Top = 55
            Width = 65
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCONTABILNOME'
            DataSource = dmEF.dsNfe
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 208
            Top = 55
            Width = 94
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBCONTABILDATA'
            DataSource = dmEF.dsNfe
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit17: TDBEdit
            Left = 112
            Top = 33
            Width = 65
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBFINANCEIRONOME'
            DataSource = dmEF.dsNfe
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit48: TDBEdit
            Left = 208
            Top = 33
            Width = 93
            Height = 21
            TabStop = False
            Color = clScrollBar
            DataField = 'LIBFINANCEIRODATA'
            DataSource = dmEF.dsNfe
            ReadOnly = True
            TabOrder = 3
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 12
            Width = 58
            Height = 17
            Hint = 'Checks de controle : Movimenta Estoque'
            Caption = 'Chefia'
            DataField = 'LIBCHEFIA'
            DataSource = dmEF.dsNfe
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
            DataSource = dmEF.dsNfe
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
            DataSource = dmEF.dsNfe
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 210
        Width = 762
        Height = 155
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        object TabSheet4: TTabSheet
          Caption = 'Dados Fiscais'
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 754
            Height = 61
            Align = alTop
            Caption = 'Dados do Pedidos / NF'
            TabOrder = 0
            object Label45: TLabel
              Left = 456
              Top = 15
              Width = 85
              Height = 13
              Caption = 'Mod.Doc.Fiscal Id'
            end
            object Label7: TLabel
              Left = 368
              Top = 15
              Width = 24
              Height = 13
              Caption = 'S'#233'rie'
              FocusControl = DBEdit5
            end
            object Label12: TLabel
              Left = 6
              Top = 15
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
            object Label1: TLabel
              Left = 180
              Top = 15
              Width = 73
              Height = 13
              Caption = 'Data do Pedido'
            end
            object Label3: TLabel
              Left = 456
              Top = 30
              Width = 50
              Height = 26
              Caption = 'Ordem de Servi'#231'o ID'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Label8: TLabel
              Left = 180
              Top = 28
              Width = 83
              Height = 26
              Caption = 'Data da Impress. (Emiss'#227'o) da NF'
              WordWrap = True
            end
            object Label14: TLabel
              Left = 6
              Top = 39
              Width = 33
              Height = 13
              Caption = 'D.I. ID'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit5: TDBEdit
              Left = 400
              Top = 12
              Width = 43
              Height = 21
              Hint = 'S'#233'rie'
              DataField = 'SERIE'
              DataSource = dmEF.dsNfe
              TabOrder = 0
            end
            object wwDBComboDlg1: TwwDBComboDlg
              Left = 552
              Top = 11
              Width = 49
              Height = 20
              Hint = 'Modelo do Documento Fiscal'
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'MODELODOCFISCALID'
              DataSource = dmEF.dsNfe
              TabOrder = 1
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit21: TDBEdit
              Left = 602
              Top = 10
              Width = 134
              Height = 21
              Hint = 'Descri'#231#227'o do Modelo do Doc. Fiscal'
              TabStop = False
              Color = clScrollBar
              DataField = 'L_MODELODOCFISCAL'
              DataSource = dmEF.dsNfe
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit2: TDBEdit
              Left = 85
              Top = 14
              Width = 80
              Height = 22
              Hint = 'N'#186' do Pedido'
              Color = clScrollBar
              DataField = 'PDEID'
              DataSource = dmEF.dsNfe
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object wwDBDateTimePicker4: TwwDBDateTimePicker
              Left = 270
              Top = 12
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
              DataSource = dmEF.dsNfe
              Date = 38154.000000000000000000
              Epoch = 1950
              ReadOnly = True
              ShowButton = True
              TabOrder = 4
            end
            object DBEdit3: TDBEdit
              Left = 552
              Top = 35
              Width = 98
              Height = 21
              Hint = 'N'#186' da Ordem de Servi'#231'o'
              TabStop = False
              DataField = 'OSID'
              DataSource = dmEF.dsNfe
              TabOrder = 5
            end
            object wwDBDateTimePicker5: TwwDBDateTimePicker
              Left = 270
              Top = 36
              Width = 90
              Height = 21
              Hint = 'Data de Previs'#227'o'
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'DATAIMPRESSAO'
              DataSource = dmEF.dsNfe
              Date = 38154.000000000000000000
              Epoch = 1950
              ReadOnly = True
              ShowButton = True
              TabOrder = 6
            end
            object DBEdit6: TDBEdit
              Left = 84
              Top = 37
              Width = 89
              Height = 21
              Hint = 'N'#186' da Ordem de Servi'#231'o'
              TabStop = False
              Color = clScrollBar
              DataField = 'DIID'
              DataSource = dmEF.dsNfe
              ReadOnly = True
              TabOrder = 7
            end
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 61
            Width = 754
            Height = 78
            Align = alTop
            Caption = 'Natureza Opera'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label11: TLabel
              Left = 7
              Top = 18
              Width = 76
              Height = 13
              Caption = 'Nat.Opera'#231#227'o'
            end
            object Label24: TLabel
              Left = 176
              Top = 19
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
              DataSource = dmEF.dsNfe
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
              DataSource = dmEF.dsNfe
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
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
              DataSource = dmEF.dsNfe
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Dados Nota Fiscal de Sa'#237'da ( Retorno )'
          ImageIndex = 1
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 754
            Height = 127
            Align = alClient
            Caption = 'Dados da Nota Fiscal de Sa'#237'da para Retorno de Pe'#231'as'
            TabOrder = 0
            object Label46: TLabel
              Left = 8
              Top = 20
              Width = 33
              Height = 13
              Caption = 'NFS ID'
              FocusControl = DBEdit22
            end
            object Label47: TLabel
              Left = 184
              Top = 20
              Width = 79
              Height = 13
              Caption = 'Data de Emiss'#227'o'
            end
            object DBEdit22: TDBEdit
              Left = 86
              Top = 16
              Width = 81
              Height = 21
              Hint = 'N'#186' da Nota Fiscal de Sa'#237'da'
              DataField = 'NFSID'
              DataSource = dmEF.dsNfe
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
              DataSource = dmEF.dsNfe
              Epoch = 1950
              ShowButton = True
              TabOrder = 1
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Informa'#231#245'es complementares (Dados adicionais)'
          ImageIndex = 2
          object GroupBox13: TGroupBox
            Left = 0
            Top = 0
            Width = 754
            Height = 127
            Align = alClient
            Caption = 'Observa'#231#227'o'
            TabOrder = 0
            object Label13: TLabel
              Left = 7
              Top = 19
              Width = 72
              Height = 13
              Caption = 'Observa'#231#227'o ID'
            end
            object wwDBComboDlg7: TwwDBComboDlg
              Left = 86
              Top = 15
              Width = 77
              Height = 20
              Hint = 'Nat. N'#186' da Opera'#231#227'o: Observa'#231#227'o'
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'OBSERVACAOID'
              DataSource = dmEF.dsNfe
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object wwDBRichEdit2: TwwDBRichEdit
              Left = 176
              Top = 16
              Width = 552
              Height = 104
              Hint = 'Nat. Opera'#231#227'o: Descri'#231#227'o da Observa'#231#227'o'
              ScrollBars = ssVertical
              AutoURLDetect = False
              Color = clWhite
              DataField = 'DESCRICAOOBSERVACAO'
              DataSource = dmEF.dsNfe
              PrintJobName = 'Delphi 7'
              TabOrder = 1
              EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
              EditorCaption = 'Edit Rich Text'
              EditorPosition.Left = 0
              EditorPosition.Top = 0
              EditorPosition.Width = 0
              EditorPosition.Height = 0
              MeasurementUnits = muInches
              PrintMargins.Top = 1.000000000000000000
              PrintMargins.Bottom = 1.000000000000000000
              PrintMargins.Left = 1.000000000000000000
              PrintMargins.Right = 1.000000000000000000
              PrintHeader.VertMargin = 0.500000000000000000
              PrintHeader.Font.Charset = DEFAULT_CHARSET
              PrintHeader.Font.Color = clWindowText
              PrintHeader.Font.Height = -11
              PrintHeader.Font.Name = 'MS Sans Serif'
              PrintHeader.Font.Style = []
              PrintFooter.VertMargin = 0.500000000000000000
              PrintFooter.Font.Charset = DEFAULT_CHARSET
              PrintFooter.Font.Color = clWindowText
              PrintFooter.Font.Height = -11
              PrintFooter.Font.Name = 'MS Sans Serif'
              PrintFooter.Font.Style = []
              RichEditVersion = 2
              Data = {
                640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
                66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
                696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
                61720D0A7D0D0A00}
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      DesignSize = (
        762
        365)
      object Splitter2: TSplitter
        Left = 0
        Top = 178
        Width = 762
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Beveled = True
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 762
        Height = 178
        Align = alTop
        TabOrder = 2
        object GroupBox12: TGroupBox
          Left = 1
          Top = 1
          Width = 688
          Height = 176
          Align = alLeft
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Itens de Entrada'
          TabOrder = 0
          object DBGrid2: TDBGrid
            Left = 2
            Top = 15
            Width = 684
            Height = 159
            Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
            Align = alClient
            Color = clCream
            DataSource = dmEF.dsNfeItem
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
                Width = 269
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
      object Panel3: TPanel
        Left = 0
        Top = 183
        Width = 762
        Height = 182
        Align = alClient
        TabOrder = 1
        object GroupBox10: TGroupBox
          Left = 1
          Top = 1
          Width = 688
          Height = 180
          Align = alLeft
          Caption = 'Itens de Entrada Anal'#237'tico'
          TabOrder = 0
          object DBGrid1: TDBGrid
            Left = 2
            Top = 15
            Width = 684
            Height = 163
            Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
            Align = alClient
            Color = clCream
            DataSource = dmEF.dsNfeItemBar
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUTOITEMID'
                Width = 96
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
                FieldName = 'USUARIO'
                Width = 64
                Visible = True
              end>
          end
        end
      end
      object tmbEdicaoLista2: TtmbEdicaoLista
        Left = 695
        Top = 8
        Width = 63
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
        TabOrder = 3
        TtmbCriar = True
        TtmbClientDataSet = dmEF.cdsNfeItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsNfeItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'NfeItem'
      end
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 696
        Top = 190
        Width = 63
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
        TtmbClientDataSet = dmEF.cdsNfeItemBar
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmEF.dsNfeItemBar
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'NfeItemBar'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'C'#225'lculo do Imposto/Volumes Transportados/Transportador'
      ImageIndex = 2
      object GroupBox7: TGroupBox
        Left = 0
        Top = 198
        Width = 323
        Height = 123
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
          Top = 22
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
          Top = 22
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
          Top = 22
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
          Top = 73
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
          Top = 73
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
          Top = 73
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
          Top = 38
          Width = 56
          Height = 21
          Hint = 'Volumes Transportados: Quantidade'
          CharCase = ecUpperCase
          DataField = 'EMBQTDVOLUMES'
          DataSource = dmEF.dsNfe
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
          Top = 38
          Width = 36
          Height = 21
          Hint = 'Nat. Opera'#231#227'o: N'#250'mero'
          CharCase = ecUpperCase
          DataField = 'EMBNUMERO'
          DataSource = dmEF.dsNfe
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
          Top = 38
          Width = 201
          Height = 21
          Hint = 'Nat. Opera'#231#227'o: Marca'
          CharCase = ecUpperCase
          DataField = 'EMBMARCA'
          DataSource = dmEF.dsNfe
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
          Top = 88
          Width = 154
          Height = 21
          Hint = 'Volumes Transportados: Esp'#233'cie'
          BevelInner = bvLowered
          CharCase = ecUpperCase
          DataField = 'EMBESPECIE'
          DataSource = dmEF.dsNfe
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
          Top = 88
          Width = 69
          Height = 21
          Hint = 'Volumes Transportados: Peso Liqu'#237'do'
          CharCase = ecUpperCase
          DataField = 'EMBPESOLIQUIDO'
          DataSource = dmEF.dsNfe
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
          Top = 88
          Width = 69
          Height = 21
          Hint = 'Volumes Transportados: Peso Bruto'
          CharCase = ecUpperCase
          DataField = 'EMBPESOBRUTO'
          DataSource = dmEF.dsNfe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 325
        Top = 267
        Width = 380
        Height = 54
        Hint = 'Tipo de Frete'
        Caption = ' Frete por Conta '
        Color = clBtnFace
        Columns = 2
        Ctl3D = True
        DataField = 'MODALIDADEFRETE'
        DataSource = dmEF.dsNfe
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
        TabOrder = 1
        Values.Strings = (
          'E'
          'D')
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 762
        Height = 193
        Align = alTop
        Caption = 'C'#225'lculo do Imposto'
        TabOrder = 2
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
        object Label20: TLabel
          Left = 8
          Top = 162
          Width = 114
          Height = 13
          Caption = 'Vlr. Total Cred. COFINS'
          FocusControl = DBEdit25
        end
        object Label21: TLabel
          Left = 8
          Top = 137
          Width = 92
          Height = 13
          Caption = 'Vlr. Total Cred. PIS'
          FocusControl = DBEdit26
        end
        object Label22: TLabel
          Left = 239
          Top = 16
          Width = 94
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
          Width = 110
          Height = 13
          Caption = 'Vlr. Total Isentas ICMS'
          FocusControl = DBEdit29
        end
        object Label26: TLabel
          Left = 239
          Top = 88
          Width = 107
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
          Width = 63
          Height = 13
          Caption = 'Vlr. Total  IPI'
          FocusControl = DBEdit38
        end
        object Label36: TLabel
          Left = 478
          Top = 65
          Width = 99
          Height = 13
          Caption = 'Vlr. Total Isentas IPI'
          FocusControl = DBEdit39
        end
        object Label37: TLabel
          Left = 478
          Top = 89
          Width = 96
          Height = 13
          Caption = 'Vlr. Total Outras IPI'
          FocusControl = DBEdit40
        end
        object Label38: TLabel
          Left = 8
          Top = 18
          Width = 45
          Height = 13
          Caption = 'Vlr. Frete'
          FocusControl = DBEdit41
        end
        object Label51: TLabel
          Left = 8
          Top = 41
          Width = 53
          Height = 13
          Caption = 'Vlr. Seguro'
          FocusControl = DBEdit43
        end
        object Label52: TLabel
          Left = 8
          Top = 65
          Width = 101
          Height = 13
          Caption = 'Vlr. Desp. Acess'#243'rias'
          FocusControl = DBEdit44
        end
        object Label53: TLabel
          Left = 478
          Top = 121
          Width = 84
          Height = 13
          Caption = 'Vlr. Total Produto'
          FocusControl = DBEdit45
        end
        object Label54: TLabel
          Left = 478
          Top = 146
          Width = 69
          Height = 13
          Caption = 'Vlr. Total Nota'
          FocusControl = DBEdit46
        end
        object DBEdit19: TDBEdit
          Left = 120
          Top = 112
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total COFINS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALCOFINS'
          DataSource = dmEF.dsNfe
          TabOrder = 3
        end
        object DBEdit24: TDBEdit
          Left = 120
          Top = 88
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total PIS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALPIS'
          DataSource = dmEF.dsNfe
          TabOrder = 4
        end
        object DBEdit25: TDBEdit
          Left = 120
          Top = 160
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. COFINS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALCREDCOFINS'
          DataSource = dmEF.dsNfe
          TabOrder = 5
        end
        object DBEdit26: TDBEdit
          Left = 120
          Top = 136
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Cred. PIS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALCREDPIS'
          DataSource = dmEF.dsNfe
          TabOrder = 6
        end
        object DBEdit27: TDBEdit
          Left = 351
          Top = 14
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base ICMS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALBASEICMS'
          DataSource = dmEF.dsNfe
          TabOrder = 7
        end
        object DBEdit28: TDBEdit
          Left = 351
          Top = 38
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total ICMS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALICMS'
          DataSource = dmEF.dsNfe
          TabOrder = 8
        end
        object DBEdit29: TDBEdit
          Left = 351
          Top = 62
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas ICMS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALISENTASICMS'
          DataSource = dmEF.dsNfe
          TabOrder = 9
        end
        object DBEdit33: TDBEdit
          Left = 351
          Top = 86
          Width = 121
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras ICMS'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALOUTRASICMS'
          DataSource = dmEF.dsNfe
          TabOrder = 10
        end
        object DBEdit37: TDBEdit
          Left = 576
          Top = 13
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Base IPI'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALBASEIPI'
          DataSource = dmEF.dsNfe
          TabOrder = 11
        end
        object DBEdit38: TDBEdit
          Left = 576
          Top = 37
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total IPI'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALIPI'
          DataSource = dmEF.dsNfe
          TabOrder = 12
        end
        object DBEdit39: TDBEdit
          Left = 576
          Top = 61
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Isentas IPI'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALISENTASIPI'
          DataSource = dmEF.dsNfe
          TabOrder = 13
        end
        object DBEdit40: TDBEdit
          Left = 576
          Top = 85
          Width = 124
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Outras IPI'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALOUTRASIPI'
          DataSource = dmEF.dsNfe
          TabOrder = 14
        end
        object DBEdit41: TDBEdit
          Left = 120
          Top = 16
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Frete'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRFRETE'
          DataSource = dmEF.dsNfe
          TabOrder = 0
        end
        object DBEdit43: TDBEdit
          Left = 120
          Top = 40
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Seguro'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRSEGURO'
          DataSource = dmEF.dsNfe
          TabOrder = 1
        end
        object DBEdit44: TDBEdit
          Left = 120
          Top = 64
          Width = 113
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Desp. Acess'#243'rias'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRDESPESAACESSORIA'
          DataSource = dmEF.dsNfe
          TabOrder = 2
        end
        object DBEdit45: TDBEdit
          Left = 576
          Top = 117
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Produto'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALPRODUTO'
          DataSource = dmEF.dsNfe
          TabOrder = 15
        end
        object DBEdit46: TDBEdit
          Left = 576
          Top = 141
          Width = 122
          Height = 21
          Hint = 'C'#225'lculo do Imposto: Vlr. Total Nota'
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'VLRTOTALNOTA'
          DataSource = dmEF.dsNfe
          TabOrder = 16
        end
      end
      object GroupBox8: TGroupBox
        Left = 325
        Top = 198
        Width = 382
        Height = 67
        Caption = ' &Transportador '
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        object Label41: TLabel
          Left = 8
          Top = 20
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
          Top = 47
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
          Top = 43
          Width = 114
          Height = 21
          Hint = 'Placa do Ve'#237'culo'
          CharCase = ecUpperCase
          DataField = 'PLACAVEICULO'
          DataSource = dmEF.dsNfe
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
          Top = 17
          Width = 67
          Height = 20
          Hint = 'Transportador: N'#186' do Transportador '
          OnCustomDlg = wwDBComboDlg5CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          Color = clScrollBar
          DataField = 'TRANSPORTADORID'
          DataSource = dmEF.dsNfe
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit23: TDBEdit
          Left = 168
          Top = 16
          Width = 209
          Height = 21
          Hint = 'Transportador: Descri'#231#227'o do Transportador '
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOMETRANSPORTADOR'
          DataSource = dmEF.dsNfe
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 495
    Width = 770
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 770
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
          Width = 230
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 382
        end>
      TtmbCria = True
      TtmbClientDataSet = dmEF.cdsNfe
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 770
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
        Width = 460
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
      Width = 447
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 447
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
  object Panel7: TPanel
    Left = 0
    Top = 29
    Width = 770
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 4
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
    object Label55: TLabel
      Left = 680
      Top = 3
      Width = 60
      Height = 13
      Caption = 'Requisitante'
      FocusControl = DBEdit47
    end
    object Label6: TLabel
      Left = 72
      Top = 3
      Width = 33
      Height = 13
      Caption = 'NFE ID'
      FocusControl = DBEdit20
    end
    object Label44: TLabel
      Left = 160
      Top = 3
      Width = 79
      Height = 13
      Caption = 'Data de Emiss'#227'o'
    end
    object Label56: TLabel
      Left = 256
      Top = 3
      Width = 79
      Height = 13
      Caption = 'Data de Entrada'
    end
    object Label58: TLabel
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
    object DBEdit1: TDBEdit
      Left = 6
      Top = 16
      Width = 58
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      DataField = 'EMPRESAID'
      DataSource = dmEF.dsNfe
      TabOrder = 0
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 352
      Top = 2
      Width = 201
      Height = 46
      Hint = 'Tipo da Nota'
      Caption = '&Tipo de Nota Fiscal'
      Color = clBtnFace
      Columns = 2
      DataField = 'TIPONOTA'
      DataSource = dmEF.dsNfe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Comum'
        'De Importa'#231#227'o'
        'De Fornecedor'
        'Sem Produto')
      ParentBackground = True
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Values.Strings = (
        'C'
        'I'
        'F'
        'S')
    end
    object GroupBox5: TGroupBox
      Left = 560
      Top = 2
      Width = 119
      Height = 46
      Caption = 'Checks de Controle'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object DBCheckBox5: TDBCheckBox
        Left = 7
        Top = 11
        Width = 120
        Height = 17
        Hint = 'Checks de Controle: Contribuinte do ICMS'
        Caption = 'Contribuinte do ICMS'
        DataField = 'CONTRIBUINTEICMS'
        DataSource = dmEF.dsNfe
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 27
        Width = 120
        Height = 17
        Hint = 'Checks de Controle: Contribuinte do ICMS'
        Caption = 'Cancelar NFE'
        DataField = 'CANCELADA'
        DataSource = dmEF.dsNfe
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object DBEdit47: TDBEdit
      Left = 680
      Top = 16
      Width = 80
      Height = 21
      Hint = 'Nat. Opera'#231#227'o: Requisitante'
      TabStop = False
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmEF.dsNfe
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit20: TDBEdit
      Left = 70
      Top = 16
      Width = 81
      Height = 21
      Hint = 'N'#186' da Nota Fiscal de Entrada'
      DataField = 'NFEID'
      DataSource = dmEF.dsNfe
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 159
      Top = 16
      Width = 90
      Height = 21
      Hint = 'Data de Emiss'#227'o'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAEMISSAOID'
      DataSource = dmEF.dsNfe
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 5
    end
    object wwDBDateTimePicker3: TwwDBDateTimePicker
      Left = 255
      Top = 16
      Width = 90
      Height = 21
      Hint = 'Data de entrada da Nota'
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAENTRADA'
      DataSource = dmEF.dsNfe
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 6
    end
    object DBEdit49: TDBEdit
      Left = 6
      Top = 49
      Width = 123
      Height = 21
      Hint = 'N'#186' da Empresa'
      TabStop = False
      DataField = 'NSUID'
      DataSource = dmEF.dsNfe
      TabOrder = 7
    end
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
            ImageIndex = 0
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
  end
  object ImageList1: TImageList
    Height = 19
    Left = 616
    Top = 64
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500FFFFFF00DEDEDE009C9C
      9C009C9C9C00C6C6C6009C9C9C008C8C8C00848484008C8C8C00A5A5A500BDBD
      BD00BDBDBD00C6C6C600C6C6C600C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500F7F7F7009C9C9C00D6D6
      D600DEDEDE00D6D6D600CECECE00BDBDBD00A5A5A5009C9C9C008C8C8C008C8C
      8C00A5A5A500BDBDBD0084BD9400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C008C8C8C00DEDEDE00DEDE
      DE00D6D6D600EFEFEF00E7E7E700E7E7E700DEDEDE00CECECE00BDBDBD00ADAD
      AD009C9C9C008484840094949400C6C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00E7E7E700D6D6D600CECE
      CE00DEDEDE00C6C6C600F7F7F700EFEFEF00CECECE00BDBDBD00BDBDBD00BDBD
      BD00D6D6D600E7E7E700D6D6D600CECECE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600CECECE00DEDE
      DE00CECECE00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00CECE
      CE00BDBDBD00BDBDBD00CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600BDBDBD00C6C6
      C600D6D6D600CECECE00E7E7E700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700D6D6D600CECECE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00FFFF
      F700FFF7E700D6D6D600C6C6C600C6C6C600C6C6C600BDBDBD00BDADAD00B5B5
      B500CECECE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00C694
      8400FFD6AD00FFD6AD00FFDEB500FFE7BD00F7E7D600EFE7D600C6ADAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7DEDE00DEAD
      9400FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500F7D6AD00BD9494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A5A500FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00BD949400D6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C9400FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7DECE00BD949400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6BD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CEB5AD00BD9C9C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD9C9C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFEF00BD949400BD949400BD94
      9400BD949400BD949400BD949400BD9494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F80F000000000000
      C001000000000000C00000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000008001000000000000
      8001000000000000C007000000000000C01F000000000000C01F000000000000
      C01F000000000000C03F000000000000C03F000000000000807F000000000000
      00FF00000000000000000000000000000000000000000000000000000000}
  end
end
