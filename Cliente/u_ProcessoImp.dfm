object frmProcessoImp: TfrmProcessoImp
  Left = 79
  Top = 80
  Caption = 'Processo Importa'#231#227'o Direta'
  ClientHeight = 606
  ClientWidth = 792
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
  object pgctrlDI: TPageControl
    Left = 0
    Top = 91
    Width = 792
    Height = 463
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados do Pedido'
      object Splitter1: TSplitter
        Left = 0
        Top = 159
        Width = 784
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 159
        Align = alTop
        Caption = 'Endere'#231'o da Origem de Venda ( COMISS'#195'O )'
        TabOrder = 0
        object Label1: TLabel
          Left = 4
          Top = 62
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label2: TLabel
          Left = 214
          Top = 62
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 404
          Top = 62
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit7
        end
        object Label5: TLabel
          Left = 4
          Top = 85
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label9: TLabel
          Left = 4
          Top = 108
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label19: TLabel
          Left = 4
          Top = 132
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit19
        end
        object Label20: TLabel
          Left = 348
          Top = 132
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit20
        end
        object Label21: TLabel
          Left = 412
          Top = 131
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
          FocusControl = DBEdit21
        end
        object Label23: TLabel
          Left = 5
          Top = 20
          Width = 47
          Height = 13
          Caption = 'Cliente ID'
          FocusControl = DBEdit13
        end
        object Label22: TLabel
          Left = 4
          Top = 39
          Width = 39
          Height = 13
          Caption = 'Contato'
          FocusControl = DBEdit4
        end
        object Label24: TLabel
          Left = 405
          Top = 39
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit22
        end
        object DBEdit2: TDBEdit
          Left = 262
          Top = 62
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMEROORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 480
          Top = 62
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTOORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 5
        end
        object DBEdit18: TDBEdit
          Left = 78
          Top = 108
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRROORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 78
          Top = 132
          Width = 265
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADEORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 8
        end
        object DBEdit20: TDBEdit
          Left = 364
          Top = 132
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFORIGID'
          DataSource = dmPP.dsPedVend
          TabOrder = 9
        end
        object DBEdit21: TDBEdit
          Left = 480
          Top = 131
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAISORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 10
        end
        object DBMemo3: TDBMemo
          Left = 78
          Top = 84
          Width = 627
          Height = 22
          DataField = 'ENDERECOORIG'
          DataSource = dmPP.dsPedVend
          ScrollBars = ssVertical
          TabOrder = 6
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 78
          Top = 62
          Width = 113
          Height = 20
          OnCustomDlg = wwDBComboDlg4CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CEPORIGID'
          DataSource = dmPP.dsPedVend
          TabOrder = 3
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit4: TDBEdit
          Left = 78
          Top = 39
          Width = 313
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATOORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 1
        end
        object wwDBComboDlg6: TwwDBComboDlg
          Left = 78
          Top = 17
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg6CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CLIENTEID'
          DataSource = dmPP.dsProcessoImp
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit13: TDBEdit
          Left = 168
          Top = 17
          Width = 537
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOME'
          DataSource = dmPP.dsProcessoImp
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit22: TDBEdit
          Left = 480
          Top = 39
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONEORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 2
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 162
        Width = 784
        Height = 273
        ActivePage = tbshtImpCondPagto
        Align = alClient
        TabOrder = 1
        object tbshtImpCondPagto: TTabSheet
          Caption = 'Condi'#231#227'o de Pagamento'
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 449
            Height = 245
            Align = alLeft
            Caption = 'Condi'#231#227'o pagto de importa'#231#227'o'
            TabOrder = 0
            object Label15: TLabel
              Left = 5
              Top = 20
              Width = 79
              Height = 13
              Caption = 'Cond Pagto FOB'
              FocusControl = DBEdit12
            end
            object Label10: TLabel
              Left = 5
              Top = 36
              Width = 73
              Height = 26
              Caption = 'Cond Interv. ID'
              FocusControl = DBEdit5
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label12: TLabel
              Left = 5
              Top = 61
              Width = 83
              Height = 26
              Caption = 'Descri'#231#227'o Interveni'#234'ncia'
              FocusControl = DBEdit10
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label13: TLabel
              Left = 5
              Top = 89
              Width = 59
              Height = 26
              Caption = 'Cond Pagto Supl. ID'
              FocusControl = DBEdit11
              WordWrap = True
            end
            object Label43: TLabel
              Left = 228
              Top = 120
              Width = 11
              Height = 13
              Caption = '%'
              FocusControl = DBEdit28
            end
            object Label32: TLabel
              Left = 212
              Top = 136
              Width = 46
              Height = 13
              Caption = 'Despesas'
              FocusControl = DBEdit28
            end
            object Label17: TLabel
              Left = 273
              Top = 136
              Width = 49
              Height = 13
              Caption = 'Financeira'
              FocusControl = DBEdit25
            end
            object Label26: TLabel
              Left = 273
              Top = 120
              Width = 34
              Height = 13
              Caption = '% FOB'
              FocusControl = DBEdit25
            end
            object Label27: TLabel
              Left = 3
              Top = 157
              Width = 104
              Height = 13
              Caption = 'Valor despesa import.'
              FocusControl = DBEdit29
            end
            object Label11: TLabel
              Left = 5
              Top = 180
              Width = 408
              Height = 13
              Caption = 
                '* Estes campos n'#227'o s'#227'o mais utilizados utilizar ABA (INTERVENI'#202'N' +
                'CIA)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit12: TDBEdit
              Left = 168
              Top = 16
              Width = 273
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCR_FOB'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object wwDBComboDlg5: TwwDBComboDlg
              Left = 86
              Top = 17
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg5CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'CONDPAGTOPROPID'
              DataSource = dmPP.dsPedVend
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object wwDBComboDlg2: TwwDBComboDlg
              Left = 86
              Top = 41
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg2CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'CONDINTERVID'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit5: TDBEdit
              Left = 168
              Top = 40
              Width = 273
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCR_INTERV'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit10: TDBEdit
              Left = 85
              Top = 65
              Width = 356
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DESCRICAOINTERV'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object wwDBComboDlg10: TwwDBComboDlg
              Left = 86
              Top = 89
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg10CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'CONDEMPRSUPLID'
              DataSource = dmPP.dsPedVend
              TabOrder = 3
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit11: TDBEdit
              Left = 168
              Top = 88
              Width = 273
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCR_SUPL'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 3
              Top = 120
              Width = 207
              Height = 31
              Caption = 'Tipo de &Despesas'
              Columns = 3
              DataField = 'TIPODESPESA'
              DataSource = dmPP.dsPedVend
              Items.Strings = (
                'Nissho'
                'Toshiba'
                'Nenhum')
              ParentBackground = True
              TabOrder = 10
              Values.Strings = (
                'N'
                'T'
                'S')
            end
            object DBEdit25: TDBEdit
              Left = 273
              Top = 154
              Width = 56
              Height = 21
              DataField = 'PORCFOB'
              DataSource = dmPP.dsPedVend
              TabOrder = 6
            end
            object DBEdit28: TDBEdit
              Left = 212
              Top = 154
              Width = 57
              Height = 21
              DataField = 'PORCDESPESA'
              DataSource = dmPP.dsPedVend
              TabOrder = 5
            end
            object DBEdit29: TDBEdit
              Left = 109
              Top = 154
              Width = 100
              Height = 21
              DataField = 'VLRDESPESA'
              DataSource = dmPP.dsPedVend
              TabOrder = 4
            end
          end
          object GroupBox4: TGroupBox
            Left = 449
            Top = 0
            Width = 327
            Height = 245
            Align = alClient
            Caption = '&Resumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label29: TLabel
              Left = 12
              Top = 37
              Width = 88
              Height = 13
              Caption = 'Frete Internacional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label28: TLabel
              Left = 57
              Top = 24
              Width = 43
              Height = 13
              Caption = 'do FOB'
              FocusControl = DBEdit31
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 37
              Top = 60
              Width = 63
              Height = 13
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label44: TLabel
              Left = 14
              Top = 72
              Width = 86
              Height = 13
              Caption = 'de Bonifica'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label45: TLabel
              Left = 37
              Top = 13
              Width = 63
              Height = 13
              Caption = 'Valor Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label46: TLabel
              Left = 36
              Top = 134
              Width = 64
              Height = 13
              Caption = 'Total Geral'
              FocusControl = DBEdit33
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label59: TLabel
              Left = 11
              Top = 85
              Width = 89
              Height = 13
              Caption = 'Total de Interv.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label70: TLabel
              Left = 11
              Top = 107
              Width = 89
              Height = 13
              Caption = 'Total de Interv.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label71: TLabel
              Left = 59
              Top = 96
              Width = 38
              Height = 13
              Caption = 'D'#233'bito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label72: TLabel
              Left = 57
              Top = 120
              Width = 41
              Height = 13
              Caption = 'Cr'#233'dito'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -8
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit30: TDBEdit
              Left = 106
              Top = 36
              Width = 127
              Height = 21
              DataField = 'VLRFRETEINTERNACIONAL'
              DataSource = dmPP.dsPedVend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit31: TDBEdit
              Left = 106
              Top = 14
              Width = 127
              Height = 21
              DataField = 'VLRFOB'
              DataSource = dmPP.dsPedVend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit32: TDBEdit
              Left = 106
              Top = 62
              Width = 127
              Height = 21
              DataField = 'VLRBONIFICACAO'
              DataSource = dmPP.dsPedVend
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit33: TDBEdit
              Left = 106
              Top = 134
              Width = 127
              Height = 21
              DataField = 'VLRTOTALGERAL'
              DataSource = dmPP.dsPedVend
              TabOrder = 5
            end
            object DBEdit38: TDBEdit
              Left = 106
              Top = 86
              Width = 127
              Height = 21
              CharCase = ecUpperCase
              DataField = 'VLRTOTALINTERVDEB'
              DataSource = dmPP.dsPedVend
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit44: TDBEdit
              Left = 106
              Top = 110
              Width = 127
              Height = 21
              CharCase = ecUpperCase
              DataField = 'VLRTOTALINTERVCRED'
              DataSource = dmPP.dsPedVend
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
          end
        end
        object tbshtRevCondPagto: TTabSheet
          Caption = 'Documenta'#231#227'o e Projeto'
          ImageIndex = 1
          object GroupBox1: TGroupBox
            Left = 8
            Top = 0
            Width = 417
            Height = 193
            Caption = '&Documenta'#231#227'o'
            TabOrder = 0
            object Label73: TLabel
              Left = 5
              Top = 103
              Width = 58
              Height = 13
              Caption = 'Observa'#231#227'o'
              FocusControl = DBMemo5
            end
            object Label69: TLabel
              Left = 255
              Top = 15
              Width = 146
              Height = 13
              Caption = 'Dt. pedido confec'#231#227'o contrato'
              FocusControl = DBEdit49
            end
            object Label6: TLabel
              Left = 126
              Top = 15
              Width = 113
              Height = 13
              Caption = 'Dt. requis.doc.ao MDIC'
              FocusControl = DBEdit51
            end
            object Label68: TLabel
              Left = 8
              Top = 15
              Width = 78
              Height = 13
              Caption = 'Dt. receb. docs.'
              FocusControl = DBEdit48
            end
            object Label7: TLabel
              Left = 8
              Top = 58
              Width = 96
              Height = 13
              Caption = 'Dt. Receb. contrato'
              FocusControl = DBEdit50
            end
            object Label135: TLabel
              Left = 126
              Top = 58
              Width = 93
              Height = 13
              Caption = 'N'#186'Contrato Financ.'
              FocusControl = DBEdit113
            end
            object Label136: TLabel
              Left = 256
              Top = 58
              Width = 96
              Height = 13
              Caption = 'Dt.Contrato Financ.'
              FocusControl = DBEdit114
            end
            object DBMemo5: TDBMemo
              Left = 5
              Top = 119
              Width = 404
              Height = 69
              DataField = 'DOCOBS'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 6
            end
            object DBEdit49: TDBEdit
              Left = 255
              Top = 31
              Width = 74
              Height = 21
              DataField = 'DOCPEDCONFCONTRATO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit51: TDBEdit
              Left = 126
              Top = 31
              Width = 74
              Height = 21
              DataField = 'DOCDATAREQUISICAOMI'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit48: TDBEdit
              Left = 8
              Top = 31
              Width = 74
              Height = 21
              DataField = 'DOCDATARECDOC'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 0
            end
            object DBEdit50: TDBEdit
              Left = 8
              Top = 74
              Width = 74
              Height = 21
              DataField = 'DOCRECCONTRATO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 3
            end
            object DBEdit113: TDBEdit
              Left = 126
              Top = 74
              Width = 94
              Height = 21
              DataField = 'DOCNUMCONTRATO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 4
            end
            object DBEdit114: TDBEdit
              Left = 255
              Top = 74
              Width = 64
              Height = 21
              DataField = 'DOCDATACONTRATO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 5
            end
          end
          object GroupBox3: TGroupBox
            Left = 406
            Top = 0
            Width = 370
            Height = 193
            Caption = '&Pedido de Projeto'
            TabOrder = 1
            object Label77: TLabel
              Left = 7
              Top = 61
              Width = 23
              Height = 13
              Caption = 'Obs.'
            end
            object Label74: TLabel
              Left = 7
              Top = 16
              Width = 90
              Height = 13
              Caption = 'Data de solicita'#231#227'o'
              FocusControl = DBEdit53
            end
            object Label75: TLabel
              Left = 111
              Top = 16
              Width = 116
              Height = 13
              Caption = 'Data de envio ao cliente'
              FocusControl = DBEdit54
            end
            object Label76: TLabel
              Left = 239
              Top = 17
              Width = 77
              Height = 13
              Caption = 'Data aprova'#231#227'o'
              FocusControl = DBEdit55
            end
            object DBMemo6: TDBMemo
              Left = 7
              Top = 77
              Width = 344
              Height = 108
              DataField = 'PPOBS'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 3
            end
            object DBEdit53: TDBEdit
              Left = 7
              Top = 32
              Width = 74
              Height = 21
              DataField = 'PPDATASOLICITACAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 0
            end
            object DBEdit54: TDBEdit
              Left = 111
              Top = 32
              Width = 74
              Height = 21
              DataField = 'PPDATAENVIOCLIENTE'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit55: TDBEdit
              Left = 239
              Top = 33
              Width = 74
              Height = 21
              DataField = 'PPDATAAPROVACAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Carta Cr'#233'dito/Contr.C'#226'mbio'
          ImageIndex = 2
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 281
            Height = 245
            Align = alLeft
            Caption = '&Carta de Cr'#233'dito'
            TabOrder = 0
            object Label8: TLabel
              Left = 8
              Top = 40
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit60
            end
            object Label83: TLabel
              Left = 112
              Top = 40
              Width = 64
              Height = 13
              Caption = 'Data emiss'#227'o'
              FocusControl = DBEdit61
            end
            object Label84: TLabel
              Left = 192
              Top = 40
              Width = 66
              Height = 13
              Caption = 'Data validade'
              FocusControl = DBEdit62
            end
            object Label85: TLabel
              Left = 8
              Top = 80
              Width = 130
              Height = 13
              Caption = #218'ltima data para embarque'
              FocusControl = DBEdit66
            end
            object Label90: TLabel
              Left = 192
              Top = 80
              Width = 68
              Height = 13
              Caption = 'Banco Emissor'
              FocusControl = DBEdit67
            end
            object DBCheckBox5: TDBCheckBox
              Left = 8
              Top = 16
              Width = 97
              Height = 17
              Caption = 'Dispensa'
              DataField = 'LCDISPENSA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit60: TDBEdit
              Left = 8
              Top = 56
              Width = 94
              Height = 21
              DataField = 'LCNUMERO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 1
            end
            object DBEdit61: TDBEdit
              Left = 112
              Top = 56
              Width = 75
              Height = 21
              DataField = 'LCDATAEMISSAOID'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit62: TDBEdit
              Left = 192
              Top = 56
              Width = 75
              Height = 21
              DataField = 'LCDATAVALIDADE'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 3
            end
            object DBEdit66: TDBEdit
              Left = 8
              Top = 94
              Width = 75
              Height = 21
              DataField = 'LCULTDATAEMBARQUE'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 4
            end
            object DBEdit67: TDBEdit
              Left = 192
              Top = 94
              Width = 75
              Height = 21
              DataField = 'LCBANCOEMISSOR'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 5
            end
          end
          object GroupBox11: TGroupBox
            Left = 281
            Top = 0
            Width = 495
            Height = 245
            Align = alClient
            Caption = 'Co&ntrato de Cambio'
            TabOrder = 1
            object Label91: TLabel
              Left = 8
              Top = 42
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit81
            end
            object Label109: TLabel
              Left = 113
              Top = 42
              Width = 82
              Height = 13
              Caption = 'Data do contrato'
              FocusControl = DBEdit94
            end
            object Label61: TLabel
              Left = 208
              Top = 42
              Width = 73
              Height = 13
              Caption = 'Pra'#231'a de Pagto'
              FocusControl = DBEdit56
            end
            object Label82: TLabel
              Left = 296
              Top = 42
              Width = 96
              Height = 13
              Caption = 'Institui'#231#227'o de Pagto'
              FocusControl = DBEdit57
            end
            object DBCheckBox6: TDBCheckBox
              Left = 8
              Top = 16
              Width = 97
              Height = 17
              Caption = 'Dispensa'
              DataField = 'CBDISPENSA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit81: TDBEdit
              Left = 8
              Top = 57
              Width = 94
              Height = 21
              DataField = 'CBNUMERO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 1
            end
            object DBEdit94: TDBEdit
              Left = 113
              Top = 57
              Width = 75
              Height = 21
              DataField = 'CBDATA'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit56: TDBEdit
              Left = 208
              Top = 57
              Width = 64
              Height = 21
              DataField = 'LCPRACA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 3
            end
            object DBEdit57: TDBEdit
              Left = 296
              Top = 57
              Width = 64
              Height = 21
              DataField = 'LCINSTITUICAO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 4
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Reg.Opera'#231#227'o Financ. (ROF)'
          ImageIndex = 3
          object GroupBox13: TGroupBox
            Left = 0
            Top = 0
            Width = 776
            Height = 245
            Align = alClient
            Caption = 'Regist&ro de Opera'#231#227'o Financeira'
            TabOrder = 0
            object Label64: TLabel
              Left = 6
              Top = 32
              Width = 100
              Height = 13
              Caption = 'Data de Transmiss'#227'o'
              FocusControl = DBEdit45
            end
            object Label65: TLabel
              Left = 110
              Top = 33
              Width = 93
              Height = 13
              Caption = 'Data da Aprova'#231#227'o'
              FocusControl = DBEdit46
            end
            object Label66: TLabel
              Left = 215
              Top = 34
              Width = 76
              Height = 13
              Caption = 'N'#250'mero do ROF'
              FocusControl = DBEdit47
            end
            object Label67: TLabel
              Left = 6
              Top = 72
              Width = 106
              Height = 13
              Caption = 'Obs. sobre exigencias'
              FocusControl = DBMemo4
            end
            object DBRadioGroup2: TDBRadioGroup
              Left = 309
              Top = 8
              Width = 164
              Height = 65
              Caption = 'Respons'#225'vel'
              DataField = 'ROFRESPONSAVEL'
              DataSource = dmPP.dsProcessoImp
              Items.Strings = (
                'Cliente'
                'TMB'
                'Despachante')
              ParentBackground = True
              TabOrder = 4
              Values.Strings = (
                'C'
                'T'
                'D')
            end
            object DBCheckBox1: TDBCheckBox
              Left = 6
              Top = 15
              Width = 97
              Height = 17
              Caption = 'Dispensa'
              DataField = 'ROFDISPENSA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit45: TDBEdit
              Left = 6
              Top = 48
              Width = 75
              Height = 21
              DataField = 'ROFDATATRANSMISSAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit46: TDBEdit
              Left = 110
              Top = 48
              Width = 75
              Height = 21
              DataField = 'ROFDATAAPROVACAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit47: TDBEdit
              Left = 215
              Top = 50
              Width = 89
              Height = 21
              DataField = 'ROFID'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 3
            end
            object DBMemo4: TDBMemo
              Left = 6
              Top = 88
              Width = 771
              Height = 81
              DataField = 'ROFOBSEXIGENCIA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 5
            end
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Licen'#231'a de Importa'#231#227'o'
          ImageIndex = 4
          object GroupBox14: TGroupBox
            Left = 0
            Top = 0
            Width = 776
            Height = 245
            Align = alClient
            Caption = 'Licen'#231'a de Importa&'#231#227'o'
            TabOrder = 0
            object Label92: TLabel
              Left = 230
              Top = 71
              Width = 102
              Height = 13
              Caption = 'Obs sobre exigencias'
              FocusControl = DBMemo9
            end
            object Label93: TLabel
              Left = 228
              Top = 150
              Width = 100
              Height = 13
              Caption = 'Data de Transmiss'#227'o'
              FocusControl = DBEdit68
            end
            object Label94: TLabel
              Left = 332
              Top = 151
              Width = 92
              Height = 13
              Caption = 'Data de aprova'#231#227'o'
              FocusControl = DBEdit69
            end
            object Label95: TLabel
              Left = 526
              Top = 11
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit70
            end
            object Label96: TLabel
              Left = 624
              Top = 10
              Width = 40
              Height = 13
              Caption = 'Validade'
              FocusControl = DBEdit71
            end
            object Label97: TLabel
              Left = 433
              Top = 151
              Width = 45
              Height = 13
              Caption = 'Comiss'#227'o'
              FocusControl = DBEdit72
            end
            object Label98: TLabel
              Left = 526
              Top = 48
              Width = 86
              Height = 13
              Caption = 'N'#250'mero 1'#186' aditivo'
              FocusControl = DBEdit73
            end
            object Label99: TLabel
              Left = 620
              Top = 48
              Width = 89
              Height = 13
              Caption = 'Validade 1'#186' aditivo'
              FocusControl = DBEdit74
            end
            object Label100: TLabel
              Left = 526
              Top = 81
              Width = 86
              Height = 13
              Caption = 'N'#250'mero 2'#186' aditivo'
              FocusControl = DBEdit75
            end
            object Label101: TLabel
              Left = 620
              Top = 81
              Width = 89
              Height = 13
              Caption = 'Validade 2'#186' aditivo'
              FocusControl = DBEdit76
            end
            object Label102: TLabel
              Left = 526
              Top = 114
              Width = 86
              Height = 13
              Caption = 'N'#250'mero 3'#186' aditivo'
              FocusControl = DBEdit77
            end
            object Label103: TLabel
              Left = 620
              Top = 114
              Width = 89
              Height = 13
              Caption = 'Validade 3'#186' aditivo'
              FocusControl = DBEdit78
            end
            object Label104: TLabel
              Left = 526
              Top = 150
              Width = 86
              Height = 13
              Caption = 'N'#250'mero 4'#186' aditivo'
              FocusControl = DBEdit79
            end
            object Label105: TLabel
              Left = 620
              Top = 150
              Width = 89
              Height = 13
              Caption = 'Validade 4'#186' aditivo'
              FocusControl = DBEdit80
            end
            object DBGrid5: TDBGrid
              Left = 6
              Top = 16
              Width = 208
              Height = 172
              TabStop = False
              Color = clCream
              DataSource = dmPP.dsPedVendItem
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clMaroon
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              Columns = <
                item
                  Expanded = False
                  FieldName = 'MODELOID'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aparelho(s)'
                  Visible = True
                end>
            end
            object DBRadioGroup5: TDBRadioGroup
              Left = 337
              Top = 16
              Width = 128
              Height = 60
              Caption = 'Respons'#225'vel'
              DataField = 'LIRESPONSAVEL'
              DataSource = dmPP.dsProcessoImp
              Items.Strings = (
                'Cliente'
                'TMB'
                'Despachante')
              ParentBackground = True
              TabOrder = 3
              Values.Strings = (
                'V'
                'C'
                'T')
            end
            object DBMemo9: TDBMemo
              Left = 230
              Top = 87
              Width = 278
              Height = 61
              DataField = 'LIOBSEXIGENCIA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBCheckBox3: TDBCheckBox
              Left = 233
              Top = 16
              Width = 70
              Height = 17
              TabStop = False
              Caption = 'Dispensa'
              DataField = 'LIDISPENSA'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit68: TDBEdit
              Left = 228
              Top = 166
              Width = 75
              Height = 21
              DataField = 'LIDATATRANSMISSAO'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 4
            end
            object DBEdit69: TDBEdit
              Left = 332
              Top = 167
              Width = 75
              Height = 21
              DataField = 'LIDATAAPROVACAO'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 5
            end
            object DBEdit70: TDBEdit
              Left = 526
              Top = 27
              Width = 74
              Height = 21
              DataField = 'LINUMERO'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 7
            end
            object DBEdit71: TDBEdit
              Left = 622
              Top = 26
              Width = 75
              Height = 21
              DataField = 'LIDATAVALIDADE'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 8
            end
            object DBEdit72: TDBEdit
              Left = 433
              Top = 167
              Width = 81
              Height = 21
              DataField = 'LIVLRCOMISSAO'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 6
            end
            object DBEdit73: TDBEdit
              Left = 526
              Top = 61
              Width = 76
              Height = 21
              DataField = 'LIADITIVO1'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 9
            end
            object DBEdit74: TDBEdit
              Left = 620
              Top = 61
              Width = 75
              Height = 21
              DataField = 'LIDATAVALIDADE1'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 10
            end
            object DBEdit75: TDBEdit
              Left = 526
              Top = 94
              Width = 76
              Height = 21
              DataField = 'LIADITIVO2'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 11
            end
            object DBEdit76: TDBEdit
              Left = 620
              Top = 94
              Width = 75
              Height = 21
              DataField = 'LIDATAVALIDADE2'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 12
            end
            object DBEdit77: TDBEdit
              Left = 526
              Top = 130
              Width = 76
              Height = 21
              DataField = 'LIADITIVO3'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 13
            end
            object DBEdit78: TDBEdit
              Left = 620
              Top = 130
              Width = 75
              Height = 21
              DataField = 'LIDATAVALIDADE3'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 14
            end
            object DBEdit79: TDBEdit
              Left = 526
              Top = 166
              Width = 76
              Height = 21
              DataField = 'LIADITIVO4'
              DataSource = dmPP.dsPedVendItem
              TabOrder = 15
            end
            object DBEdit80: TDBEdit
              Left = 620
              Top = 166
              Width = 75
              Height = 21
              DataField = 'LIDATAVALIDADE4'
              DataSource = dmPP.dsPedVendItem
              MaxLength = 10
              TabOrder = 16
            end
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Purchase Order'
          ImageIndex = 5
          object GroupBox15: TGroupBox
            Left = 0
            Top = -14
            Width = 257
            Height = 361
            Caption = 'Purchase Order (PO)'
            TabOrder = 0
            object Label81: TLabel
              Left = 7
              Top = 20
              Width = 28
              Height = 13
              Caption = 'N'#186' NX'
              FocusControl = DBEdit58
            end
            object Label60: TLabel
              Left = 7
              Top = 56
              Width = 129
              Height = 13
              Caption = 'Data transmissao do e-mail'
              FocusControl = DBEdit40
            end
            object Label62: TLabel
              Left = 143
              Top = 19
              Width = 99
              Height = 13
              Caption = 'Data de envio do PO'
              FocusControl = DBEdit42
            end
            object Label63: TLabel
              Left = 144
              Top = 61
              Width = 63
              Height = 16
              Caption = 'Revised:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 145
              Top = 95
              Width = 14
              Height = 16
              Caption = '1-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label78: TLabel
              Left = 145
              Top = 119
              Width = 14
              Height = 16
              Caption = '2-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label79: TLabel
              Left = 145
              Top = 143
              Width = 14
              Height = 16
              Caption = '3-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label80: TLabel
              Left = 167
              Top = 76
              Width = 59
              Height = 13
              Caption = 'Transmiss'#227'o'
              FocusControl = DBEdit3
            end
            object Label137: TLabel
              Left = 145
              Top = 167
              Width = 14
              Height = 16
              Caption = '4-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label144: TLabel
              Left = 145
              Top = 191
              Width = 14
              Height = 16
              Caption = '5-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label145: TLabel
              Left = 145
              Top = 215
              Width = 14
              Height = 16
              Caption = '6-'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit58: TDBEdit
              Left = 6
              Top = 34
              Width = 59
              Height = 21
              DataField = 'PONXID'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBEdit40: TDBEdit
              Left = 7
              Top = 72
              Width = 71
              Height = 21
              DataField = 'PODATATRANSMISSAOEMAIL'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit42: TDBEdit
              Left = 143
              Top = 34
              Width = 71
              Height = 21
              DataField = 'PODATAENVIOFORM'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit43: TDBEdit
              Left = 165
              Top = 93
              Width = 71
              Height = 21
              DataField = 'POTRANSMISSAO1'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 3
            end
            object DBEdit3: TDBEdit
              Left = 165
              Top = 116
              Width = 71
              Height = 21
              DataField = 'POTRANSMISSAO2'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 4
            end
            object DBEdit52: TDBEdit
              Left = 165
              Top = 139
              Width = 71
              Height = 21
              DataField = 'POTRANSMISSAO3'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 5
            end
            object DBEdit115: TDBEdit
              Left = 165
              Top = 162
              Width = 71
              Height = 21
              DataField = 'POTRANSMISSAO4'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 6
            end
            object DBEdit117: TDBEdit
              Left = 165
              Top = 185
              Width = 70
              Height = 21
              DataField = 'POTRANSMISSAO5'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 7
            end
            object DBEdit118: TDBEdit
              Left = 165
              Top = 208
              Width = 70
              Height = 21
              DataField = 'POTRANSMISSAO6'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 8
            end
          end
          object GroupBox16: TGroupBox
            Left = 259
            Top = -14
            Width = 201
            Height = 361
            Caption = 'Fatura Pro-forma'
            TabOrder = 1
            object Label113: TLabel
              Left = 11
              Top = 19
              Width = 123
              Height = 13
              Caption = 'N'#250'mero Fatura Pro-forma'
              FocusControl = DBEdit85
            end
            object Label129: TLabel
              Left = 11
              Top = 59
              Width = 107
              Height = 13
              Caption = 'Data fatura Pro-forma'
              FocusControl = DBEdit95
            end
            object DBEdit85: TDBEdit
              Left = 11
              Top = 35
              Width = 184
              Height = 21
              DataField = 'PONUMFATPROFORMA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBEdit95: TDBEdit
              Left = 11
              Top = 75
              Width = 64
              Height = 21
              DataField = 'PODATAFATPROFORMA'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
          end
          object GroupBox17: TGroupBox
            Left = 462
            Top = -14
            Width = 329
            Height = 361
            Caption = 'Comiss'#227'o'
            TabOrder = 2
            object SpeedButton1: TSpeedButton
              Left = 244
              Top = 16
              Width = 72
              Height = 23
              Caption = 'Comiss'#227'o'
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000120B0000120B00001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
                DADAADA000000000000DDAD7FFFFFFFFFF0AADA7FF000000FF0DDAD7FFFFFFFF
                FF0AA007FF000000FF0DDB00FFFFFFFFFF0AA7B000000000FF0DDA7FB0000000
                FF0A0000FB00FFFFFF0D7FBBBBB00FF7000AA7FB00FFFFF7F0ADDA7FB00FFFF7
                0ADAAD7FBB007777ADADDAD7FBB00ADADADAADAD7FBB00ADADAD}
              OnClick = SpeedButton1Click
            end
            object dbgComissao: TDBGrid
              Left = 5
              Top = 16
              Width = 237
              Height = 182
              Color = clCream
              DataSource = dmPP.dsPedVendItem
              Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Visible = False
              Columns = <
                item
                  Expanded = False
                  FieldName = 'MODELOID'
                  Title.Caption = 'Modelo Id'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 124
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRCOMISSAO'
                  Title.Caption = 'Vlr. Comiss'#227'o'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clMaroon
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end>
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Embarque'
          ImageIndex = 6
          object GroupBox18: TGroupBox
            Left = 0
            Top = 0
            Width = 417
            Height = 217
            Caption = '&Embarque'
            TabOrder = 0
            object Label31: TLabel
              Left = 8
              Top = 16
              Width = 133
              Height = 13
              Caption = 'Data Previs'#227'o de Embarque'
              FocusControl = DBEdit17
            end
            object Label33: TLabel
              Left = 152
              Top = 17
              Width = 89
              Height = 13
              Caption = 'Data de embarque'
              FocusControl = DBEdit6
            end
            object Label34: TLabel
              Left = 8
              Top = 59
              Width = 109
              Height = 13
              Caption = 'Data do Conhecimento'
              FocusControl = DBEdit8
            end
            object Label35: TLabel
              Left = 243
              Top = 18
              Width = 63
              Height = 13
              Caption = 'de embarque'
              FocusControl = DBEdit9
            end
            object Label36: TLabel
              Left = 8
              Top = 98
              Width = 72
              Height = 13
              Caption = 'Nome do Navio'
              FocusControl = DBEdit14
            end
            object Label37: TLabel
              Left = 347
              Top = 59
              Width = 52
              Height = 13
              Caption = 'Peso Bruto'
              FocusControl = DBEdit23
            end
            object Label38: TLabel
              Left = 152
              Top = 56
              Width = 69
              Height = 13
              Caption = 'Data do termo'
              FocusControl = DBEdit24
            end
            object Label39: TLabel
              Left = 8
              Top = 135
              Width = 23
              Height = 13
              Caption = 'Obs.'
              FocusControl = DBMemo2
            end
            object SpeedButton2: TSpeedButton
              Left = 440
              Top = 24
              Width = 95
              Height = 25
              Caption = 'Parcelas'
              Flat = True
              Glyph.Data = {
                F6000000424DF600000000000000760000002800000010000000100000000100
                04000000000080000000CE0E0000D80E00001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777447777777777777777477777777777777477700000000077444777777777
                7777777777777777777744477777777777777477777777777777774770000000
                0077447777777777777777777777777777774447777777777777747777777777
                7777447770000000007774777777777777777777777777777777}
            end
            object Label40: TLabel
              Left = 151
              Top = 67
              Width = 86
              Height = 13
              Caption = 'de entrega/aceite'
              FocusControl = DBEdit24
            end
            object Label131: TLabel
              Left = 243
              Top = 8
              Width = 81
              Height = 13
              Caption = 'N'#186' conhecimento'
              FocusControl = DBEdit9
            end
            object Label134: TLabel
              Left = 248
              Top = 59
              Width = 43
              Height = 13
              Caption = 'Peso L'#237'q.'
              FocusControl = DBEdit112
            end
            object DBEdit17: TDBEdit
              Left = 8
              Top = 32
              Width = 72
              Height = 21
              DataField = 'EMBDATAPREVISAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 0
            end
            object DBEdit6: TDBEdit
              Left = 152
              Top = 33
              Width = 72
              Height = 21
              DataField = 'EMBDATA'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit8: TDBEdit
              Left = 8
              Top = 75
              Width = 72
              Height = 21
              DataField = 'EMBDATABL'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 3
            end
            object DBEdit9: TDBEdit
              Left = 243
              Top = 31
              Width = 94
              Height = 21
              DataField = 'EMBNUMCONHEC'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 2
            end
            object DBEdit14: TDBEdit
              Left = 8
              Top = 114
              Width = 401
              Height = 21
              DataField = 'EMBNOMENAVIO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 7
            end
            object DBEdit23: TDBEdit
              Left = 347
              Top = 75
              Width = 64
              Height = 21
              DataField = 'EMBPESOBRUTO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 6
            end
            object DBEdit24: TDBEdit
              Left = 152
              Top = 80
              Width = 72
              Height = 21
              DataField = 'EMBDATATERMOACEIT'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 4
            end
            object DBMemo2: TDBMemo
              Left = 8
              Top = 151
              Width = 403
              Height = 61
              DataField = 'EMBOBS'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 8
            end
            object DBEdit112: TDBEdit
              Left = 248
              Top = 75
              Width = 64
              Height = 21
              DataField = 'EMBPESOLIQUIDO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 5
            end
          end
          object GroupBox19: TGroupBox
            Left = 419
            Top = 0
            Width = 198
            Height = 217
            Caption = 'Fatura Invoice'
            TabOrder = 1
            object Label56: TLabel
              Left = 8
              Top = 16
              Width = 70
              Height = 13
              Caption = 'N'#186'Fat. Invoice'
              FocusControl = DBEdit15
            end
            object Label57: TLabel
              Left = 8
              Top = 56
              Width = 53
              Height = 13
              Caption = 'Ref. Jap'#227'o'
              FocusControl = DBEdit39
            end
            object Label58: TLabel
              Left = 8
              Top = 96
              Width = 76
              Height = 13
              Caption = 'Data da Invoice'
              FocusControl = DBEdit41
            end
            object DBEdit15: TDBEdit
              Left = 8
              Top = 32
              Width = 184
              Height = 21
              DataField = 'EMBFATINVOICEID'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBEdit39: TDBEdit
              Left = 8
              Top = 72
              Width = 184
              Height = 21
              DataField = 'EMBJAPAOID'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 1
            end
            object DBEdit41: TDBEdit
              Left = 8
              Top = 112
              Width = 64
              Height = 21
              DataField = 'EMBDATAFATURA'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
          end
          object GroupBox20: TGroupBox
            Left = 620
            Top = 104
            Width = 172
            Height = 113
            Caption = 'FOB '#224' Vista'
            TabOrder = 2
            object Label41: TLabel
              Left = 8
              Top = 16
              Width = 73
              Height = 13
              Caption = 'Valor FOB vista'
              FocusControl = DBEdit27
            end
            object Label42: TLabel
              Left = 8
              Top = 61
              Width = 112
              Height = 13
              Caption = 'Data Pagto FOB a vista'
              FocusControl = DBEdit16
            end
            object DBEdit27: TDBEdit
              Left = 8
              Top = 32
              Width = 97
              Height = 21
              DataField = 'EMBFOBAVISTA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBEdit16: TDBEdit
              Left = 8
              Top = 77
              Width = 72
              Height = 21
              DataField = 'EMBDATAPAGTOFOBV'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
          end
          object GroupBox21: TGroupBox
            Left = 620
            Top = -1
            Width = 172
            Height = 106
            Caption = 'FOB Sinal'
            TabOrder = 3
            object Label47: TLabel
              Left = 9
              Top = 53
              Width = 102
              Height = 13
              Caption = 'Data Pagto Sinal FOB'
              FocusControl = DBEdit26
            end
            object Label48: TLabel
              Left = 9
              Top = 13
              Width = 72
              Height = 13
              Caption = 'Valor Sinal FOB'
              FocusControl = DBEdit34
            end
            object DBEdit26: TDBEdit
              Left = 9
              Top = 69
              Width = 72
              Height = 21
              DataField = 'EMBDATAPAGTOSINAL'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit34: TDBEdit
              Left = 9
              Top = 29
              Width = 97
              Height = 21
              DataField = 'EMBSINALFOB'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Desembara'#231'o'
          ImageIndex = 7
          object GroupBox22: TGroupBox
            Left = 0
            Top = 0
            Width = 153
            Height = 245
            Align = alLeft
            Caption = 'Desembara'#231'o'
            TabOrder = 0
            object Label49: TLabel
              Left = 7
              Top = 14
              Width = 63
              Height = 13
              Caption = 'Despachante'
              FocusControl = DBEdit35
            end
            object Label50: TLabel
              Left = 7
              Top = 52
              Width = 92
              Height = 13
              Caption = 'Valor Desembara'#231'o'
              FocusControl = DBEdit36
            end
            object Label52: TLabel
              Left = 7
              Top = 93
              Width = 97
              Height = 13
              Caption = 'Valor Frete Internac'
              FocusControl = DBEdit37
            end
            object Label53: TLabel
              Left = 7
              Top = 135
              Width = 92
              Height = 13
              Caption = 'Valor Frete Interno'
              FocusControl = DBEdit59
            end
            object DBEdit35: TDBEdit
              Left = 7
              Top = 29
              Width = 119
              Height = 21
              DataField = 'EMBDESPACHANTE'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBEdit36: TDBEdit
              Left = 7
              Top = 68
              Width = 95
              Height = 21
              DataField = 'EMBVLRDESEMBARACO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 1
            end
            object DBEdit37: TDBEdit
              Left = 7
              Top = 109
              Width = 96
              Height = 21
              DataField = 'EMBVLRFRETEINTERNAC'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 2
            end
            object DBEdit59: TDBEdit
              Left = 7
              Top = 151
              Width = 95
              Height = 21
              DataField = 'EMBVLRFRETEINTERNO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 3
            end
          end
          object GroupBox23: TGroupBox
            Left = 153
            Top = 0
            Width = 197
            Height = 245
            Align = alLeft
            Caption = 'Libera'#231#227'o Aparelho'
            TabOrder = 1
            object Label54: TLabel
              Left = 6
              Top = 14
              Width = 128
              Height = 13
              Caption = 'Data chegada do Aparelho'
              FocusControl = DBEdit63
            end
            object Label55: TLabel
              Left = 7
              Top = 135
              Width = 113
              Height = 13
              Caption = 'Data entrega ao cliente'
              FocusControl = DBEdit64
            end
            object Label86: TLabel
              Left = 7
              Top = 94
              Width = 73
              Height = 13
              Caption = 'Data Liber.TMB'
              FocusControl = DBEdit82
            end
            object Label87: TLabel
              Left = 6
              Top = 54
              Width = 135
              Height = 13
              Caption = 'Data libera'#231#227'o na alfandega'
              FocusControl = DBEdit83
            end
            object DBEdit63: TDBEdit
              Left = 6
              Top = 30
              Width = 77
              Height = 21
              DataField = 'EMBDATACHEGAPAR'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 0
            end
            object DBEdit64: TDBEdit
              Left = 7
              Top = 151
              Width = 77
              Height = 21
              DataField = 'EMBDATAENTREGACLI'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 3
            end
            object DBEdit82: TDBEdit
              Left = 6
              Top = 110
              Width = 77
              Height = 21
              DataField = 'EMBDATALIBTMB'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit83: TDBEdit
              Left = 6
              Top = 70
              Width = 77
              Height = 21
              DataField = 'EMBDATALIBALFANDEGA'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
          end
          object GroupBox24: TGroupBox
            Left = 350
            Top = 0
            Width = 166
            Height = 245
            Align = alLeft
            Caption = 'Seguro Internacional'
            TabOrder = 2
            object Label88: TLabel
              Left = 8
              Top = 14
              Width = 137
              Height = 13
              Caption = 'Data Solict.Seguro Internac.'
              FocusControl = DBEdit65
            end
            object Label89: TLabel
              Left = 8
              Top = 88
              Width = 109
              Height = 13
              Caption = 'Valor Seguro Internac.'
              FocusControl = DBEdit84
            end
            object Label106: TLabel
              Left = 8
              Top = 52
              Width = 75
              Height = 13
              Caption = 'Data da Apolice'
              FocusControl = DBEdit86
            end
            object Label107: TLabel
              Left = 8
              Top = 132
              Width = 139
              Height = 13
              Caption = 'Data Pagto Seguro Internac.'
              FocusControl = DBEdit87
            end
            object DBEdit65: TDBEdit
              Left = 8
              Top = 30
              Width = 77
              Height = 21
              DataField = 'EMBDATASOLSEGINT'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 0
            end
            object DBEdit84: TDBEdit
              Left = 8
              Top = 104
              Width = 103
              Height = 21
              DataField = 'EMBSEGINT'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 2
            end
            object DBEdit86: TDBEdit
              Left = 8
              Top = 67
              Width = 77
              Height = 21
              DataField = 'EMBDATAAPOLICE'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit87: TDBEdit
              Left = 8
              Top = 148
              Width = 77
              Height = 21
              DataField = 'EMBDATAPAGTOSEGINT'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 3
            end
          end
          object GroupBox25: TGroupBox
            Left = 516
            Top = 0
            Width = 267
            Height = 245
            Align = alLeft
            Caption = 'Declara'#231#227'o de Importa'#231#227'o (DI)'
            TabOrder = 3
            object Label108: TLabel
              Left = 6
              Top = 16
              Width = 26
              Height = 13
              Caption = 'N'#186' DI'
              FocusControl = DBEdit88
            end
            object Label110: TLabel
              Left = 6
              Top = 62
              Width = 52
              Height = 13
              Caption = 'Data da DI'
              FocusControl = DBEdit89
            end
            object DBEdit88: TDBEdit
              Left = 6
              Top = 31
              Width = 89
              Height = 21
              DataField = 'EMBDIID'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
            end
            object DBEdit89: TDBEdit
              Left = 6
              Top = 77
              Width = 77
              Height = 21
              DataField = 'EMBDATADI'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Esquema de Pagamento'
          ImageIndex = 8
          object GroupBox26: TGroupBox
            Left = 0
            Top = 0
            Width = 776
            Height = 245
            Align = alClient
            Caption = 'Esquema de Pagamento'
            TabOrder = 0
            object Label111: TLabel
              Left = 7
              Top = 32
              Width = 98
              Height = 13
              Caption = 'Data da transmiss'#227'o'
              FocusControl = DBEdit90
            end
            object Label112: TLabel
              Left = 111
              Top = 34
              Width = 92
              Height = 13
              Caption = 'Data da aprova'#231#227'o'
              FocusControl = DBEdit91
            end
            object Label114: TLabel
              Left = 215
              Top = 36
              Width = 130
              Height = 13
              Caption = 'N'#250'mero do Esq.Pagamento'
              FocusControl = DBEdit92
            end
            object Label115: TLabel
              Left = 7
              Top = 82
              Width = 23
              Height = 13
              Caption = 'Obs.'
              FocusControl = DBMemo8
            end
            object DBRadioGroup4: TDBRadioGroup
              Left = 352
              Top = 8
              Width = 120
              Height = 64
              Caption = 'Respons'#225'vel'
              DataField = 'EPRESPONSAVEL'
              DataSource = dmPP.dsProcessoImp
              Items.Strings = (
                'Cliente'
                'TMB'
                'Despachante')
              ParentBackground = True
              TabOrder = 4
              Values.Strings = (
                'C'
                'T'
                'D')
            end
            object DBCheckBox2: TDBCheckBox
              Left = 7
              Top = 13
              Width = 83
              Height = 17
              Caption = 'Dispensa'
              DataField = 'EPDISPENSA'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit90: TDBEdit
              Left = 7
              Top = 48
              Width = 82
              Height = 21
              DataField = 'EPDATATRANSMISSAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 1
            end
            object DBEdit91: TDBEdit
              Left = 111
              Top = 50
              Width = 82
              Height = 21
              DataField = 'EPDATAAPROVACAO'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 2
            end
            object DBEdit92: TDBEdit
              Left = 215
              Top = 52
              Width = 82
              Height = 21
              DataField = 'EPNUMERO'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 3
            end
            object DBMemo8: TDBMemo
              Left = 7
              Top = 98
              Width = 770
              Height = 119
              DataField = 'EPOBS'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 5
            end
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Transf.Importador'
          ImageIndex = 9
          object GroupBox27: TGroupBox
            Left = 0
            Top = 0
            Width = 776
            Height = 245
            Align = alClient
            Caption = 'Transferencia de Importador'
            TabOrder = 0
            object Label116: TLabel
              Left = 8
              Top = 22
              Width = 105
              Height = 13
              Caption = 'Data da transferencia'
              FocusControl = DBEdit99
            end
            object Label117: TLabel
              Left = 118
              Top = 24
              Width = 33
              Height = 13
              Caption = 'Codigo'
              FocusControl = DBEdit100
            end
            object Label118: TLabel
              Left = 182
              Top = 25
              Width = 97
              Height = 13
              Caption = 'Cliente (transferido)'
            end
            object Label119: TLabel
              Left = 8
              Top = 63
              Width = 23
              Height = 13
              Caption = 'Obs.'
              FocusControl = DBMemo10
            end
            object DBEdit99: TDBEdit
              Left = 8
              Top = 38
              Width = 73
              Height = 21
              DataField = 'TIDATA'
              DataSource = dmPP.dsProcessoImp
              MaxLength = 10
              TabOrder = 0
            end
            object DBEdit100: TDBEdit
              Left = 118
              Top = 40
              Width = 47
              Height = 21
              DataField = 'TICLIENTEID'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 1
            end
            object DBMemo10: TDBMemo
              Left = 8
              Top = 79
              Width = 769
              Height = 106
              DataField = 'TIOBS'
              DataSource = dmPP.dsProcessoImp
              TabOrder = 2
            end
          end
        end
      end
    end
    object tbshtAparelhoImp: TTabSheet
      Caption = 'Aparelhos (Importa'#231#227'o)'
      ImageIndex = 1
      DesignSize = (
        784
        435)
      object Splitter2: TSplitter
        Left = 0
        Top = 205
        Width = 784
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 205
        Align = alTop
        TabOrder = 1
        DesignSize = (
          784
          205)
        object GroupBox12: TGroupBox
          Left = 1
          Top = 1
          Width = 704
          Height = 203
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Itens de processo'
          TabOrder = 0
          object dbgrdItem: TDBGrid
            Left = 2
            Top = 15
            Width = 700
            Height = 186
            Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
            Align = alClient
            Color = clCream
            DataSource = dmPP.dsPedVendItem
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
                FieldName = 'ITEMID'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIEID'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOID'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOLTAGEM'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QUANTIDADE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFOB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFOBREVENDA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRINTERVENIENCIA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCOMISSAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NXID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INVOICEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CEPINSTID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMEROINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMPLEMENTOINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ENDERECOINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BAIRROINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CIDADEINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SIGLAUFINSTID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONEINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CONTATOINST'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'EMBJAPAOID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDISPENSA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATATRANSMISSAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATAAPROVACAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LINUMERO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATAVALIDADE'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIVLRCOMISSAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIADITIVO1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATAVALIDADE1'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIADITIVO2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATAVALIDADE2'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIADITIVO3'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATAVALIDADE3'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIADITIVO4'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LIDATAVALIDADE4'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTINVOICEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTCLIENTEID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTOBSERVACAO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTCABOK7'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTCABOVIDEOPRINTER'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTCABOMONITORAUXILIAR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTMULTIFORMATO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTESTABILIZADOR'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTDATASAIDA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTNOMETRANSPORTADOR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTTRANSPORTADORID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTOSID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTIMPRESSO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTDATAPREVCHEGADA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTUSUARIO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTLIBERADO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RTDATAEMBARQUE'
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
      object tmbedtlstApImp: TtmbEdicaoLista
        Left = 710
        Top = 14
        Width = 67
        Height = 120
        Anchors = [akLeft, akTop, akRight, akBottom]
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
        TtmbClientDataSet = dmPP.cdsPedVendItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendItem
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
      object GroupBox10: TGroupBox
        Left = 0
        Top = 209
        Width = 713
        Height = 216
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Itens composi'#231#227'o'
        TabOrder = 2
        object dbgrdItemBar: TDBGrid
          Left = 2
          Top = 15
          Width = 709
          Height = 199
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmPP.dsPedVendComp
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
              FieldName = 'ITEMCOMPID'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODELOID'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOPORTUGUES'
              Width = 187
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_GRUPOID'
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
              FieldName = 'VLRUNITARIOFOB'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALFOB'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRUNITARIOREVENDA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALREVENDA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIEID'
              Width = 109
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
      object tmbedtlstApImpComp: TtmbEdicaoLista
        Left = 721
        Top = 208
        Width = 63
        Height = 227
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
        TtmbClientDataSet = dmPP.cdsPedVendComp
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendComp
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Item Bar'
        ExplicitLeft = 717
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Interveni'#234'ncia'
      ImageIndex = 3
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 435
        Align = alClient
        Caption = 'Itens da Interveni'#234'ncia'
        TabOrder = 1
        object dbgrdPDEItem: TDBGrid
          Left = 2
          Top = 15
          Width = 713
          Height = 418
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmPP.dsPedVendInterv
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
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONDINTERVID'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOPAGTO'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DEDUZIRCOMISSAO'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRINTERVENIENCIA'
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
      object tmbedtlstInterv: TtmbEdicaoLista
        Left = 717
        Top = 0
        Width = 67
        Height = 435
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
        TtmbClientDataSet = dmPP.cdsPedVendInterv
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendInterv
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Interveni'#234'ncia'
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Vendedores'
      ImageIndex = 4
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 435
        Align = alClient
        Caption = 'Itens de Bonifica'#231#227'o '
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 713
          Height = 418
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmPP.dsPedVendVend
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
              FieldName = 'ITEMID'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDORID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_NOMEVENDEDOR'
              Width = 251
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSEVENDEDORID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCR_CLASSEVENDEDOR'
              Width = 246
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PORCENTAGEM'
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
      object tmbedtlstVend: TtmbEdicaoLista
        Left = 717
        Top = 0
        Width = 67
        Height = 435
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
        TtmbClientDataSet = dmPP.cdsPedVendVend
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendVend
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Vendedor'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Bonifica'#231#227'o'
      ImageIndex = 5
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 717
        Height = 435
        Align = alClient
        Caption = 'Itens de Vendedor '
        TabOrder = 1
        DesignSize = (
          717
          435)
        object Label51: TLabel
          Left = 8
          Top = 233
          Width = 130
          Height = 13
          Caption = 'Observa'#231#227'o de Bonifica'#231#227'o'
        end
        object dbgrdPDEItemBar: TDBGrid
          Left = 2
          Top = 15
          Width = 713
          Height = 184
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Color = clCream
          DataSource = dmPP.dsPedVendBonif
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
              FieldName = 'ITEMID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BONIFICACAOID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCR_BONIFICACAO'
              Width = 298
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRBONIFICACAO'
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
        object DBRichEdit1: TDBRichEdit
          Left = 6
          Top = 248
          Width = 707
          Height = 158
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'DESCRICAO'
          DataSource = dmPP.dsPedVendBonif
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object tmbedtlstBonif: TtmbEdicaoLista
        Left = 717
        Top = 0
        Width = 67
        Height = 435
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
        TtmbClientDataSet = dmPP.cdsPedVendBonif
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendBonif
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Bonificacao'
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 6
      object GroupBox29: TGroupBox
        Left = 0
        Top = 0
        Width = 784
        Height = 121
        Align = alTop
        Caption = 'Observa'#231#227'o do Pedido do Vendedor'
        TabOrder = 0
        object Label123: TLabel
          Left = 95
          Top = 14
          Width = 23
          Height = 13
          Caption = 'Obs.'
          FocusControl = DBMemo12
        end
        object Label121: TLabel
          Left = 10
          Top = 15
          Width = 73
          Height = 13
          Caption = 'Data do Pedido'
          FocusControl = DBEdit104
        end
        object DBMemo12: TDBMemo
          Left = 95
          Top = 30
          Width = 674
          Height = 77
          DataField = 'OBSERVACAO'
          DataSource = dmPP.dsPedVend
          TabOrder = 0
        end
        object DBEdit104: TDBEdit
          Left = 10
          Top = 31
          Width = 74
          Height = 21
          DataField = 'DATAPEDIDO'
          DataSource = dmPP.dsProcessoImp
          MaxLength = 10
          TabOrder = 1
        end
      end
      object GroupBox30: TGroupBox
        Left = 0
        Top = 121
        Width = 784
        Height = 314
        Align = alClient
        Caption = 'Observa'#231#227'o do Processo de Importa'#231#227'o'
        TabOrder = 1
        object Label122: TLabel
          Left = 8
          Top = 18
          Width = 65
          Height = 13
          Caption = 'Obs Processo'
          FocusControl = DBMemo11
        end
        object DBMemo11: TDBMemo
          Left = 8
          Top = 31
          Width = 761
          Height = 66
          DataField = 'OBSERVACAOPROCESSO'
          DataSource = dmPP.dsProcessoImp
          TabOrder = 0
          WantTabs = True
        end
      end
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 586
    Width = 792
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
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 792
    Height = 58
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label14: TLabel
      Left = 6
      Top = 4
      Width = 69
      Height = 13
      Caption = 'Ped. Venda ID'
    end
    object Label16: TLabel
      Left = 83
      Top = 4
      Width = 84
      Height = 13
      Caption = 'Data do Processo'
    end
    object Label18: TLabel
      Left = 171
      Top = 4
      Width = 73
      Height = 13
      Caption = 'Data do Pedido'
    end
    object Label4: TLabel
      Left = 259
      Top = 4
      Width = 84
      Height = 13
      Caption = 'Data Ped.Interno'
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 17
      Width = 74
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'PEDVENDID'
      DataSource = dmPP.dsProcessoImp
      ReadOnly = True
      TabOrder = 1
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 82
      Top = 17
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAPROCESSO'
      DataSource = dmPP.dsProcessoImp
      Date = 37208.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 170
      Top = 17
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAPEDIDO'
      DataSource = dmPP.dsProcessoImp
      Date = 37208.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object wwDBDateTimePicker5: TwwDBDateTimePicker
      Left = 258
      Top = 17
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAPDI'
      DataSource = dmPP.dsProcessoImp
      Date = 37208.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 554
    Width = 792
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 792
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
          Width = 625
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 9
        end>
      TtmbCria = True
      TtmbClientDataSet = dmPP.cdsProcessoImp
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 792
    Height = 33
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 788
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 775
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 14410210
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 14410210
      Spacing = 0
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
      end
      item
      end
      item
        Items = <
          item
            Action = actCancFat
            Caption = '&Cancelar Pedido'
            ImageIndex = 1
          end
          item
            Action = actImpressao
            Caption = '&Impress'#227'o'
            ImageIndex = 2
          end
          item
            Action = actAddAparelho
            Caption = '&Adicionar Aparelho'
            ImageIndex = 0
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 736
    Top = 40
    StyleName = 'XP Style'
    object actCancFat: TAction
      Caption = 'Cancelar Pedido'
      Hint = 'Cancelar pedido de sa'#237'da'
      ImageIndex = 1
      OnExecute = actCancFatExecute
    end
    object actImpressao: TAction
      Caption = 'Impress'#227'o'
      Hint = 'Impress'#227'o do Pedido'
      ImageIndex = 2
      OnExecute = actImpressaoExecute
    end
    object actAddAparelho: TAction
      Caption = 'Adicionar Aparelho'
      ImageIndex = 0
      OnExecute = actAddAparelhoExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 656
    Top = 40
    Bitmap = {
      494C010103000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0008080800080808000C0C0C00080808000C0C0C000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000FFFFFF000000000080808000FFFFFF000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      0000000000000000000000008000000000000000000000000000FFFFFF00C0C0
      C000FFFFFF00C0C0C000C0C0C00000FF000000FF000000FF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000000000000000000080808000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      0000000000000000800000008000000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00FFFFFF000000FF000000FF000000FF00C0C0C0000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000080808000FFFFFF000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080008000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000FFFF000000000000FFFFFF00FFFFFF000000
      000080808000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800080000000
      8000000080000000000000000000000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00FFFFFF00C0C0C000FFFFFF00C0C0C00000000000C0C0
      C00000000000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000808080000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080008000
      8000000080000000800000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFF0000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000080000000
      0000000000000000800000008000800080000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFF00000000
      0000FFFFFF00FFFFFF0000000000000000000000000080000000800000008000
      0000800000008000000080000000800080000000800080000000800000008000
      0000800000000000000080008000000080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      000000000000FFFFFF0000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000800080008000FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BF00
      BF00BF00BF00BF00BF00000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFF00000000000000000000000000000000000080000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BF00
      BF0000000000000000000000000000000000BF000000BF000000BF000000BF00
      000000000000FFFF000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BF00
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000000000008000
      0000800000000000000080000000800000000000000080000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFF00F0000FFFFFFFFE00700008001FFBFC0030000B891FF3EC0030000
      B891FF1DC003000081B5FF99C0030000B8910003C0010000B8117FC7C0010000
      823D4943E003000080117F98F0030000BC810004F00F00007E818007F80F0000
      22818007F80700002E018007FC0700002E008007FFFF000085FCA497FFFF0000
      C3FF8007FFFF000000000000000000000000000000000000000000000000}
  end
  object cdsRelPedVend: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 89
  end
  object dsRelPedVend: TDataSource
    DataSet = cdsRelPedVend
    Left = 736
    Top = 81
  end
end
