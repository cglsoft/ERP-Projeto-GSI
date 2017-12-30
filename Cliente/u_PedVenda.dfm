object frmPedVenda: TfrmPedVenda
  Left = 140
  Top = 14
  Caption = 'Pedido de Venda / Importa'#231#227'o Direta'
  ClientHeight = 611
  ClientWidth = 787
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
  object pgctrlDI: TPageControl
    Left = 0
    Top = 134
    Width = 787
    Height = 425
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados do Pedido'
      object Splitter1: TSplitter
        Left = 0
        Top = 181
        Width = 779
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 189
      end
      object grpbxDadosCliente: TGroupBox
        Left = 0
        Top = 0
        Width = 779
        Height = 181
        Align = alTop
        Caption = 'Endere'#231'o da Origem de Venda ( COMISS'#195'O )'
        TabOrder = 0
        object Label1: TLabel
          Left = 4
          Top = 87
          Width = 33
          Height = 13
          Caption = 'CEP ID'
        end
        object Label2: TLabel
          Left = 214
          Top = 87
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 404
          Top = 87
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit7
        end
        object Label5: TLabel
          Left = 4
          Top = 110
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label9: TLabel
          Left = 4
          Top = 133
          Width = 28
          Height = 13
          Caption = 'Bairro'
          FocusControl = DBEdit18
        end
        object Label19: TLabel
          Left = 4
          Top = 157
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit19
        end
        object Label20: TLabel
          Left = 348
          Top = 157
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit20
        end
        object Label21: TLabel
          Left = 412
          Top = 156
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
          Top = 64
          Width = 39
          Height = 13
          Caption = 'Contato'
          FocusControl = DBEdit4
        end
        object Label24: TLabel
          Left = 405
          Top = 64
          Width = 42
          Height = 13
          Caption = 'Telefone'
          FocusControl = DBEdit22
        end
        object Label55: TLabel
          Left = 5
          Top = 44
          Width = 72
          Height = 13
          Caption = 'Destinat'#225'rio ID'
          FocusControl = DBEdit37
        end
        object DBEdit2: TDBEdit
          Left = 262
          Top = 87
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NUMEROORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 480
          Top = 87
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTOORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 5
        end
        object DBEdit18: TDBEdit
          Left = 78
          Top = 133
          Width = 316
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRROORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 7
        end
        object DBEdit19: TDBEdit
          Left = 78
          Top = 157
          Width = 265
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADEORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 8
        end
        object DBEdit20: TDBEdit
          Left = 364
          Top = 157
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SIGLAUFORIGID'
          DataSource = dmPP.dsPedVend
          TabOrder = 9
        end
        object DBEdit21: TDBEdit
          Left = 480
          Top = 156
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PAISORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 10
        end
        object DBMemo3: TDBMemo
          Left = 78
          Top = 109
          Width = 627
          Height = 22
          DataField = 'ENDERECOORIG'
          DataSource = dmPP.dsPedVend
          ScrollBars = ssVertical
          TabOrder = 6
        end
        object wwDBComboDlg4: TwwDBComboDlg
          Left = 78
          Top = 87
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
          Top = 64
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
          DataSource = dmPP.dsPedVend
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
          DataField = 'L_NOMECLIENTE'
          DataSource = dmPP.dsPedVend
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
          Top = 64
          Width = 225
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONEORIG'
          DataSource = dmPP.dsPedVend
          TabOrder = 2
        end
        object wwDBComboDlg11: TwwDBComboDlg
          Left = 78
          Top = 41
          Width = 77
          Height = 20
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'DESTINATARIOID'
          DataSource = dmPP.dsPedVend
          TabOrder = 12
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit37: TDBEdit
          Left = 168
          Top = 41
          Width = 537
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOMEDESTINATARIO'
          DataSource = dmPP.dsPedVend
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 184
        Width = 779
        Height = 213
        ActivePage = tbshtRevCondPagto
        Align = alClient
        TabOrder = 1
        object tbshtImpCondPagto: TTabSheet
          Caption = 'Condi'#231#227'o de Pagamento (Importa'#231#227'o)'
          object grpbxCondPagtoImp: TGroupBox
            Left = 0
            Top = 0
            Width = 449
            Height = 185
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
              Left = 70
              Top = 108
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
          object grpResumoImp: TGroupBox
            Left = 449
            Top = 0
            Width = 322
            Height = 185
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
          Caption = 'Condi'#231#227'o de Pagamento (Revenda)'
          ImageIndex = 1
          object grpbxCondPagtoRev: TGroupBox
            Left = 0
            Top = 0
            Width = 473
            Height = 185
            Align = alLeft
            Caption = 'Condi'#231#227'o pagto de revenda'
            TabOrder = 0
            object Label25: TLabel
              Left = 5
              Top = 45
              Width = 33
              Height = 13
              Caption = 'PDS ID'
              FocusControl = DBEdit14
            end
            object Label31: TLabel
              Left = 168
              Top = 40
              Width = 56
              Height = 13
              Caption = 'Dt. Emiss'#227'o'
            end
            object Label34: TLabel
              Left = 5
              Top = 104
              Width = 68
              Height = 13
              Caption = 'Nat.Opera'#231#227'o'
            end
            object Label35: TLabel
              Left = 176
              Top = 104
              Width = 43
              Height = 13
              Caption = 'C.F.O.P.'
              FocusControl = DBEdit16
            end
            object Label36: TLabel
              Left = 5
              Top = 124
              Width = 46
              Height = 26
              Caption = 'Descr.do Usu'#225'rio'
              WordWrap = True
            end
            object Label41: TLabel
              Left = 5
              Top = 18
              Width = 69
              Height = 13
              Caption = 'Cond Pagto Id'
              FocusControl = DBEdit26
              WordWrap = True
            end
            object Label52: TLabel
              Left = 5
              Top = 69
              Width = 33
              Height = 13
              Caption = 'NFS ID'
              FocusControl = DBEdit35
            end
            object Label53: TLabel
              Left = 168
              Top = 64
              Width = 56
              Height = 13
              Caption = 'Dt. Emiss'#227'o'
            end
            object DBEdit14: TDBEdit
              Left = 86
              Top = 40
              Width = 75
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'PDSID'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit15: TDBEdit
              Left = 86
              Top = 128
              Width = 382
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAOUSUARIO'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit16: TDBEdit
              Left = 232
              Top = 104
              Width = 86
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_CFOP'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object wwDBDateTimePicker1: TwwDBDateTimePicker
              Left = 232
              Top = 40
              Width = 87
              Height = 21
              TabStop = False
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'DATAPEDIDOPDSID'
              DataSource = dmPP.dsPedVend
              Epoch = 1950
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ShowButton = True
              TabOrder = 1
            end
            object wwDBComboDlg7: TwwDBComboDlg
              Left = 86
              Top = 103
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg7CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'NATUREZAOPID'
              DataSource = dmPP.dsPedVend
              TabOrder = 2
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit26: TDBEdit
              Left = 168
              Top = 14
              Width = 302
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAOCONDPAGTO'
              DataSource = dmPP.dsPedVend
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object wwDBComboDlg8: TwwDBComboDlg
              Left = 86
              Top = 15
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg8CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'CONDPAGTOID'
              DataSource = dmPP.dsPedVend
              TabOrder = 6
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit35: TDBEdit
              Left = 86
              Top = 64
              Width = 75
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_NFSID'
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
            object wwDBDateTimePicker3: TwwDBDateTimePicker
              Left = 232
              Top = 64
              Width = 87
              Height = 21
              TabStop = False
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'L_DATAEMISSAOID'
              DataSource = dmPP.dsPedVend
              Epoch = 1950
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              ShowButton = True
              TabOrder = 8
            end
          end
          object grpbxResumoRev: TGroupBox
            Left = 473
            Top = 0
            Width = 298
            Height = 185
            Align = alClient
            Caption = '&Resumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label33: TLabel
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
            object Label37: TLabel
              Left = 57
              Top = 24
              Width = 43
              Height = 13
              Caption = 'do FOB'
              FocusControl = DBEdit17
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label38: TLabel
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
            object Label39: TLabel
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
            object Label40: TLabel
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
            object Label42: TLabel
              Left = 36
              Top = 134
              Width = 64
              Height = 13
              Caption = 'Total Geral'
              FocusControl = DBEdit24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label47: TLabel
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
            object Label48: TLabel
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
            object Label49: TLabel
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
            object Label50: TLabel
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
            object DBEdit9: TDBEdit
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
            object DBEdit17: TDBEdit
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
            object DBEdit23: TDBEdit
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
            object DBEdit24: TDBEdit
              Left = 106
              Top = 134
              Width = 127
              Height = 21
              DataField = 'VLRTOTALVENDA'
              DataSource = dmPP.dsPedVend
              TabOrder = 3
            end
            object DBEdit27: TDBEdit
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
              TabOrder = 4
            end
            object DBEdit34: TDBEdit
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
              TabOrder = 5
            end
          end
        end
      end
    end
    object tbshtAparelhoImp: TTabSheet
      Caption = 'Aparelhos (Importa'#231#227'o)'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 779
        Height = 205
        Align = alTop
        TabOrder = 2
        object GroupBox12: TGroupBox
          Left = 1
          Top = 1
          Width = 710
          Height = 203
          Align = alClient
          TabOrder = 1
          object dbgrdItem: TDBGrid
            Left = 2
            Top = 15
            Width = 706
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIEID'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOID'
                Width = 129
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VOLTAGEM'
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
                FieldName = 'VLRFOB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRFOBREVENDA'
                Title.Caption = 'Vlr. Fob Venda'
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
                FieldName = 'USUARIO'
                Width = 64
                Visible = True
              end>
          end
        end
        object tmbedtlstApImp: TtmbEdicaoLista
          Left = 711
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
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 205
        Width = 712
        Height = 192
        Align = alClient
        TabOrder = 1
        object dbgrdItemBar: TDBGrid
          Left = 2
          Top = 15
          Width = 708
          Height = 175
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIEID'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MODELOID'
              Width = 142
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOPORTUGUES'
              Width = 257
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
              FieldName = 'USUARIO'
              Width = 64
              Visible = True
            end>
        end
      end
      object tmbedtlstApImpComp: TtmbEdicaoLista
        Left = 712
        Top = 205
        Width = 67
        Height = 192
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
        TtmbClientDataSet = dmPP.cdsPedVendComp
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendComp
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Item'
        object tPanel11: tPanel1
          Left = 1
          Top = 134
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
    object tbshtAparelhoRev: TTabSheet
      Caption = 'Aparelhos (Revenda)'
      ImageIndex = 2
      object tmbedtlstApRev: TtmbEdicaoLista
        Left = 712
        Top = 0
        Width = 67
        Height = 397
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
        TtmbClientDataSet = dmPP.cdsPedVendItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'VendaRev'
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 712
        Height = 397
        Align = alClient
        Caption = ' '#236'tens de Revenda '
        TabOrder = 1
        object dbgrdRevenda: TDBGrid
          Left = 2
          Top = 15
          Width = 708
          Height = 380
          Align = alClient
          Color = clCream
          Ctl3D = True
          DataSource = dmPP.dsPedVendItem
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
          Columns = <
            item
              Expanded = False
              FieldName = 'ITEMID'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTOID'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOPORTUGUES'
              Width = 233
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
              FieldName = 'L_GRUPOID'
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
              FieldName = 'ESTOQUEUTILIZADO'
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
              FieldName = 'USUARIO'
              Width = 64
              Visible = True
            end>
        end
      end
    end
    object tbshtServico: TTabSheet
      Caption = 'Servi'#231'os (Interveni'#234'ncia)'
      ImageIndex = 7
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 712
        Height = 397
        Align = alClient
        TabOrder = 1
        object dbgrdServico: TDBGrid
          Left = 2
          Top = 15
          Width = 708
          Height = 380
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmPP.dsPedVendServ
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
              FieldName = 'EMPRESAID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERVICOID'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_GRUPOID'
              Width = 52
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
              FieldName = 'DESCRICAOSERVICO'
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
      object tmbedtlstServico: TtmbEdicaoLista
        Left = 712
        Top = 0
        Width = 67
        Height = 397
        Align = alRight
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
        TtmbClientDataSet = dmPP.cdsPedVendServ
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPedVendServ
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Item'
      end
    end
    object tbshtInterv: TTabSheet
      Caption = 'Permuta (Antigo Interv)'
      ImageIndex = 3
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 712
        Height = 397
        Align = alClient
        Caption = 'Itens (Permuta)'
        TabOrder = 1
        object dbgrdPDEItem: TDBGrid
          Left = 2
          Top = 15
          Width = 708
          Height = 380
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
        Left = 712
        Top = 0
        Width = 67
        Height = 397
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
    object tbshtVendedores: TTabSheet
      Caption = 'Vendedores'
      ImageIndex = 4
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 712
        Height = 397
        Align = alClient
        Caption = 'Itens de Bonifica'#231#227'o '
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 708
          Height = 380
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
        Left = 712
        Top = 0
        Width = 67
        Height = 397
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
    object tbshtBonif: TTabSheet
      Caption = 'Bonifica'#231#227'o'
      ImageIndex = 5
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 712
        Height = 397
        Align = alClient
        Caption = 'Itens de Vendedor '
        TabOrder = 1
        DesignSize = (
          712
          397)
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
          Width = 806
          Height = 120
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
        Left = 712
        Top = 0
        Width = 67
        Height = 397
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
    object tbshtObsGerais: TTabSheet
      Caption = 'Observa'#231#245'es Gerais'
      ImageIndex = 5
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 779
        Height = 305
        Align = alTop
        DataField = 'OBSERVACAO'
        DataSource = dmPP.dsPedVend
        TabOrder = 0
      end
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 591
    Width = 787
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
  object pnTopPedVend: TPanel
    Left = 0
    Top = 33
    Width = 787
    Height = 101
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label14: TLabel
      Left = 8
      Top = 3
      Width = 69
      Height = 13
      Caption = 'Ped. Venda ID'
    end
    object Label16: TLabel
      Left = 83
      Top = 3
      Width = 73
      Height = 13
      Caption = 'Data do Pedido'
    end
    object Label4: TLabel
      Left = 172
      Top = 3
      Width = 57
      Height = 13
      Caption = 'Proposta ID'
    end
    object Label6: TLabel
      Left = 253
      Top = 4
      Width = 94
      Height = 13
      Caption = 'N'#186'Ped.Vendedor ID'
    end
    object Label18: TLabel
      Left = 358
      Top = 4
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label7: TLabel
      Left = 415
      Top = 4
      Width = 96
      Height = 13
      Caption = 'Origem da Venda ID'
    end
    object Label8: TLabel
      Left = 415
      Top = 39
      Width = 67
      Height = 13
      Caption = 'Tipo Venda ID'
    end
    object Label54: TLabel
      Left = 102
      Top = 39
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label56: TLabel
      Left = 6
      Top = 39
      Width = 90
      Height = 13
      Caption = 'Ped. Venda Ref.ID'
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 17
      Width = 74
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'PEDVENDID'
      DataSource = dmPP.dsPedVend
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 171
      Top = 17
      Width = 80
      Height = 21
      DataField = 'PROPOSTAID'
      DataSource = dmPP.dsPedVend
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
      DataField = 'DATAPEDIDO'
      DataSource = dmPP.dsPedVend
      Date = 37208.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object DBEdit61: TDBEdit
      Left = 252
      Top = 17
      Width = 104
      Height = 21
      DataField = 'NUMPEDVENDEDORID'
      DataSource = dmPP.dsPedVend
      TabOrder = 2
    end
    object wwDBComboDlg9: TwwDBComboDlg
      Left = 357
      Top = 17
      Width = 57
      Height = 20
      OnCustomDlg = wwDBComboDlg9CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'EMPRESAID'
      DataSource = dmPP.dsPedVend
      TabOrder = 3
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 415
      Top = 17
      Width = 65
      Height = 20
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'ORIGEMVENDAID'
      DataSource = dmPP.dsPedVend
      TabOrder = 4
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit6: TDBEdit
      Left = 486
      Top = 17
      Width = 291
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DESCR_ORIGEMVENDA'
      DataSource = dmPP.dsPedVend
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 415
      Top = 51
      Width = 66
      Height = 20
      OnCustomDlg = wwDBComboDlg3CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'TIPOVENDAID'
      DataSource = dmPP.dsPedVend
      TabOrder = 5
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit8: TDBEdit
      Left = 486
      Top = 49
      Width = 290
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DESCRICAOTIPOVENDA'
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
    object DBCheckBox10: TDBCheckBox
      Left = 252
      Top = 39
      Width = 122
      Height = 13
      Caption = 'Pedido Cancelado'
      DataField = 'CANCELADO'
      DataSource = dmPP.dsPedVend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBEdit36: TDBEdit
      Left = 82
      Top = 52
      Width = 158
      Height = 21
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmPP.dsPedVend
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit39: TDBEdit
      Left = 6
      Top = 51
      Width = 74
      Height = 21
      TabStop = False
      DataField = 'PEDVENDREFID'
      DataSource = dmPP.dsPedVend
      TabOrder = 11
    end
    object dbckbxPagtoComissao: TDBCheckBox
      Left = 252
      Top = 53
      Width = 159
      Height = 13
      Caption = 'Pagamento de Comiss'#227'o'
      DataField = 'PAGAMENTOCOMISSAO'
      DataSource = dmPP.dsPedVend
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object GroupBox4: TGroupBox
      Left = 246
      Top = 70
      Width = 363
      Height = 29
      Caption = '&Libera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      object Label57: TLabel
        Left = 80
        Top = 11
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit40
      end
      object Label58: TLabel
        Left = 211
        Top = 11
        Width = 23
        Height = 13
        Caption = 'Data'
        FocusControl = DBEdit41
      end
      object DBEdit40: TDBEdit
        Left = 112
        Top = 11
        Width = 93
        Height = 21
        TabStop = False
        Color = clScrollBar
        DataField = 'LIBCHEFIANOME'
        DataSource = dmPP.dsPedVend
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit41: TDBEdit
        Left = 240
        Top = 11
        Width = 120
        Height = 21
        TabStop = False
        Color = clScrollBar
        DataField = 'LIBCHEFIADATA'
        DataSource = dmPP.dsPedVend
        ReadOnly = True
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 11
        Width = 58
        Height = 13
        Hint = 'Checks de controle : Movimenta Estoque'
        Caption = 'Chefia'
        DataField = 'LIBCHEFIA'
        DataSource = dmPP.dsPedVend
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 559
    Width = 787
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 787
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
          Width = 620
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 9
        end>
      TtmbCria = True
      TtmbClientDataSet = dmPP.cdsPedVend
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 787
    Height = 33
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 783
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 770
      Height = 29
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actGerarFat
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actGerarFat
            Caption = '&Gerar Pedido'
            ImageIndex = 0
          end
          item
            Action = actCancFat
            ImageIndex = 1
          end
          item
            Action = actImpressao
            Caption = '&Impress'#227'o'
            ImageIndex = 2
          end
          item
            Action = actTransfProcesso
            Caption = '&Transf. Processo'
            ImageIndex = 3
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 464
    Top = 72
    StyleName = 'XP Style'
    object actGerarFat: TAction
      Caption = 'Gerar Pedido'
      Hint = 'Gerar pedido de venda'
      ImageIndex = 0
      OnExecute = actGerarFatExecute
    end
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
    object actTransfProcesso: TAction
      Caption = 'Transf. Processo'
      Hint = 'Transferir processo '
      ImageIndex = 3
      OnExecute = actTransfProcessoExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 600
    Top = 96
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008484840084848400848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6008484840084848400C6C6C60084848400C6C6C600000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000000000000
      0000000000000000000000000000000084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000840000008400000084000000
      0000000000000000000000008400000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C60000FF000000FF000000FF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000000000000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      0000000000000000840000008400000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF00FFFFFF000000FF000000FF000000FF00C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000FFFF000000000000FFFF000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084008400840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840084848400000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF00000000000000000000000000000000008484840000FFFF000000
      000000000000FFFF0000000000000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840084000000
      8400000084000000000000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000C6C6
      C60000000000C6C6C6008484840000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF00000000000000000000000000848484000000000000FF
      FF000000000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000084008400
      8400000084000000840000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000C6C6C6000000000000000000000000000000000000000000FFFF
      FF0084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000848484000000
      000000FFFF0000000000000000000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008400000084000000
      0000000000000000840000008400840084000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008400000084000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000840000008400000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000084000000840000008400
      0000840000008400000084000000840084000000840084000000840000008400
      0000840000000000000084008400000084000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000848484000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000840084008400FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00000000000000
      00000000000084848400000000000000000000000000848484000000000000FF
      FF000000000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF0000000000000000000084000000FFFFFF000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000008400000084000000840000008400
      00008400000084000000840000008400000084000000FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000000000000000008484840000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      000084000000840000008400000084000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000000000008400
      0000840000000000000084000000840000000000000084000000840000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008400000084000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084000000FFFFFF0000000000000000000000000000000000000000000000
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFE007F55F
      FFFFFFBFC003FFCFF000FF3EC003F007F554FF1DC003F0079002FF99C003F003
      85580003C001F00380027FC7C001E001A1544943E003E000D0027F98F0030000
      08D80004F00F000140028007F80F0003A1548007F8070007C0008007FC07000F
      D0FF8007FFFF001FE87FA497FFFFF1FFF43F8007FFFFF3FF0000000000000000
      0000000000000000000000000000}
  end
  object cdsRelPedVend: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 89
  end
  object dsRelPedVend: TDataSource
    DataSet = cdsRelPedVend
    Left = 728
    Top = 169
  end
end
