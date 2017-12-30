object frmDeclaracao: TfrmDeclaracao
  Left = 159
  Top = -14
  ActiveControl = DBEdit3
  Caption = 'Declara'#231#227'o de Importa'#231#227'o'
  ClientHeight = 539
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
  object pgctrlDI: TPageControl
    Left = 0
    Top = 75
    Width = 759
    Height = 412
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = pgctrlDIChange
    object TabSheet1: TTabSheet
      Caption = 'Dados da Declara'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 751
        Height = 70
        Align = alTop
        Caption = 'Dados da Declara'#231#227'o'
        TabOrder = 0
        object Label7: TLabel
          Left = 5
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Importador'
        end
        object Label8: TLabel
          Left = 5
          Top = 40
          Width = 55
          Height = 13
          Caption = 'Fornecedor'
        end
        object DBEdit6: TDBEdit
          Left = 159
          Top = 16
          Width = 226
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOMEIMPORTADOR'
          DataSource = dmIT.dsDeclaracao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit8: TDBEdit
          Left = 159
          Top = 40
          Width = 226
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NOMEFORNECEDOR'
          DataSource = dmIT.dsDeclaracao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object GroupBox3: TGroupBox
          Left = 387
          Top = 0
          Width = 363
          Height = 68
          Caption = 'Checks de Controle'
          TabOrder = 4
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 16
            Width = 130
            Height = 17
            Caption = 'Cr'#233'ditar Valor do ICMS'
            DataField = 'CREDITARICMS'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 32
            Width = 110
            Height = 17
            Caption = 'Agregar Valor FOB'
            DataField = 'AGREGARVLRFOB'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 48
            Width = 89
            Height = 17
            Caption = 'Restituir ICMS'
            DataField = 'RESTITUIRICMS'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 135
            Top = 48
            Width = 85
            Height = 17
            Caption = 'Agregar Frete'
            DataField = 'AGREGARFRETE'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox5: TDBCheckBox
            Left = 223
            Top = 32
            Width = 136
            Height = 17
            Caption = 'Adm.Temp/Imp. Isentas'
            DataField = 'ADMISSAOTEMP'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox7: TDBCheckBox
            Left = 223
            Top = 16
            Width = 118
            Height = 17
            Caption = 'Antecipar Valor FOB'
            DataField = 'FOBANTECIPADO'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 135
            Top = 16
            Width = 74
            Height = 17
            Caption = 'Ativo Fixo'
            DataField = 'ATIVOFIXO'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox6: TDBCheckBox
            Left = 135
            Top = 32
            Width = 74
            Height = 17
            Caption = 'Frete Pago'
            DataField = 'FRETEPAGO'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox9: TDBCheckBox
            Left = 223
            Top = 48
            Width = 119
            Height = 17
            Caption = 'Material de Consumo'
            DataField = 'MATERIALCONSUMO'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object wwDBComboDlg1: TwwDBComboDlg
          Left = 88
          Top = 15
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg1CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'IMPORTADORID'
          DataSource = dmIT.dsDeclaracao
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 88
          Top = 39
          Width = 65
          Height = 20
          OnCustomDlg = wwDBComboDlg3CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'FORNECEDORID'
          DataSource = dmIT.dsDeclaracao
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 70
        Width = 751
        Height = 314
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 1
        TabStop = False
        object TabSheet4: TTabSheet
          Caption = 'Dados da Nota'
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 473
            Height = 286
            Align = alLeft
            Caption = 'Dados da Nota Fiscal de Entrada'
            TabOrder = 0
            object Label26: TLabel
              Left = 5
              Top = 48
              Width = 30
              Height = 13
              Caption = 'NFEID'
              FocusControl = DBEdit25
            end
            object Label27: TLabel
              Left = 168
              Top = 48
              Width = 56
              Height = 13
              Caption = 'Dt. Emiss'#227'o'
            end
            object Label28: TLabel
              Left = 320
              Top = 48
              Width = 56
              Height = 13
              Caption = 'Dt. Entrada'
            end
            object Label29: TLabel
              Left = 5
              Top = 72
              Width = 68
              Height = 13
              Caption = 'Nat.Opera'#231#227'o'
            end
            object Label32: TLabel
              Left = 176
              Top = 72
              Width = 43
              Height = 13
              Caption = 'C.F.O.P.'
              FocusControl = DBEdit31
            end
            object Label30: TLabel
              Left = 5
              Top = 96
              Width = 82
              Height = 13
              Caption = 'Descr.do Usu'#225'rio'
            end
            object Label9: TLabel
              Left = 5
              Top = 120
              Width = 71
              Height = 13
              Caption = 'Conta Cont'#225'bil'
              FocusControl = DBEdit9
            end
            object Label10: TLabel
              Left = 189
              Top = 120
              Width = 79
              Height = 13
              Caption = 'Centro de Custo'
              FocusControl = DBEdit10
            end
            object Label11: TLabel
              Left = 5
              Top = 145
              Width = 81
              Height = 13
              Caption = 'N'#186' Contr.C'#226'mbio'
              FocusControl = DBEdit11
            end
            object Label12: TLabel
              Left = 190
              Top = 145
              Width = 84
              Height = 13
              Caption = 'Data do Contrato'
            end
            object Label13: TLabel
              Left = 5
              Top = 26
              Width = 54
              Height = 13
              Caption = 'Empresa Id'
              FocusControl = DBEdit12
            end
            object Label5: TLabel
              Left = 5
              Top = 216
              Width = 76
              Height = 13
              Caption = 'Ref.Importa'#231#227'o'
              FocusControl = DBEdit5
            end
            object Label68: TLabel
              Left = 5
              Top = 169
              Width = 81
              Height = 13
              Caption = 'N'#186' Contr.C'#226'mbio'
              FocusControl = DBEdit61
            end
            object Label69: TLabel
              Left = 190
              Top = 169
              Width = 84
              Height = 13
              Caption = 'Data do Contrato'
            end
            object Label70: TLabel
              Left = 5
              Top = 193
              Width = 81
              Height = 13
              Caption = 'N'#186' Contr.C'#226'mbio'
              FocusControl = DBEdit62
            end
            object Label71: TLabel
              Left = 190
              Top = 193
              Width = 84
              Height = 13
              Caption = 'Data do Contrato'
            end
            object DBEdit25: TDBEdit
              Left = 86
              Top = 48
              Width = 75
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'NFEID'
              DataSource = dmIT.dsDeclaracao
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit30: TDBEdit
              Left = 86
              Top = 96
              Width = 363
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAONATUREZAUSUARIO'
              DataSource = dmIT.dsDeclaracao
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit31: TDBEdit
              Left = 232
              Top = 72
              Width = 86
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_CFOP'
              DataSource = dmIT.dsDeclaracao
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object wwDBDateTimePicker4: TwwDBDateTimePicker
              Left = 232
              Top = 48
              Width = 87
              Height = 21
              TabStop = False
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'DATAEMISSAONFEID'
              DataSource = dmIT.dsDeclaracao
              Date = 37820.000000000000000000
              Epoch = 1950
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              ShowButton = True
              TabOrder = 1
            end
            object wwDBDateTimePicker5: TwwDBDateTimePicker
              Left = 384
              Top = 48
              Width = 87
              Height = 21
              TabStop = False
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              Color = clScrollBar
              DataField = 'DATAENTRADANFEID'
              DataSource = dmIT.dsDeclaracao
              Date = 37820.000000000000000000
              Epoch = 1950
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              ShowButton = True
              TabOrder = 2
            end
            object DBEdit9: TDBEdit
              Left = 86
              Top = 120
              Width = 95
              Height = 21
              DataField = 'CONTACONTABILID'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 6
            end
            object DBEdit10: TDBEdit
              Left = 278
              Top = 120
              Width = 95
              Height = 21
              DataField = 'CENTROCUSTOID'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 7
            end
            object DBEdit11: TDBEdit
              Left = 86
              Top = 142
              Width = 95
              Height = 21
              DataField = 'NUMCONTRATOCAMBIO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 8
            end
            object wwDBDateTimePicker3: TwwDBDateTimePicker
              Left = 278
              Top = 142
              Width = 75
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATACONTRATO'
              DataSource = dmIT.dsDeclaracao
              Epoch = 1950
              ShowButton = True
              TabOrder = 9
            end
            object wwDBComboDlg2: TwwDBComboDlg
              Left = 86
              Top = 71
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg2CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'NATUREZAOPID'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 3
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit12: TDBEdit
              Left = 168
              Top = 22
              Width = 302
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_NOMEFANTASIA'
              DataSource = dmIT.dsDeclaracao
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object wwDBComboDlg5: TwwDBComboDlg
              Left = 86
              Top = 23
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg2CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'EMPRESAID'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 11
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit5: TDBEdit
              Left = 86
              Top = 216
              Width = 265
              Height = 21
              DataField = 'REFERENCIA'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 12
            end
            object DBEdit61: TDBEdit
              Left = 86
              Top = 166
              Width = 95
              Height = 21
              DataField = 'NUMCONTRATOCAMBIO2'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 13
            end
            object wwDBDateTimePicker6: TwwDBDateTimePicker
              Left = 278
              Top = 166
              Width = 75
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATACONTRATO2'
              DataSource = dmIT.dsDeclaracao
              Epoch = 1950
              ShowButton = True
              TabOrder = 14
            end
            object DBEdit62: TDBEdit
              Left = 86
              Top = 190
              Width = 95
              Height = 21
              DataField = 'NUMCONTRATOCAMBIO3'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 15
            end
            object wwDBDateTimePicker7: TwwDBDateTimePicker
              Left = 278
              Top = 190
              Width = 75
              Height = 21
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATACONTRATO3'
              DataSource = dmIT.dsDeclaracao
              Epoch = 1950
              ShowButton = True
              TabOrder = 16
            end
          end
          object GroupBox2: TGroupBox
            Left = 473
            Top = 0
            Width = 270
            Height = 286
            Align = alClient
            Caption = 'Valores da Declar. de Importa'#231#227'o'
            TabOrder = 1
            object Label19: TLabel
              Left = 8
              Top = 16
              Width = 71
              Height = 13
              Caption = 'Valor Total CIF'
              FocusControl = DBEdit18
            end
            object Label20: TLabel
              Left = 8
              Top = 40
              Width = 77
              Height = 13
              Caption = 'Valor Total Peso'
              FocusControl = DBEdit19
            end
            object Label21: TLabel
              Left = 8
              Top = 64
              Width = 69
              Height = 13
              Caption = 'Valor FOB US$'
              FocusControl = DBEdit20
            end
            object Label22: TLabel
              Left = 8
              Top = 88
              Width = 47
              Height = 13
              Caption = 'Valor FOB'
              FocusControl = DBEdit21
            end
            object Label23: TLabel
              Left = 8
              Top = 112
              Width = 99
              Height = 13
              Caption = 'Valor do Frete Inter.'
              FocusControl = DBEdit22
            end
            object Label24: TLabel
              Left = 8
              Top = 131
              Width = 64
              Height = 26
              Caption = 'Valor Seguro Internacional'
              FocusControl = DBEdit23
              WordWrap = True
            end
            object Label25: TLabel
              Left = 6
              Top = 234
              Width = 93
              Height = 13
              Caption = 'Taxa  FOB Antecip.'
              FocusControl = DBEdit24
            end
            object Label3: TLabel
              Left = 6
              Top = 210
              Width = 78
              Height = 13
              Caption = 'Taxa SISCOMEX'
              FocusControl = DBEdit7
            end
            object Label54: TLabel
              Left = 6
              Top = 183
              Width = 64
              Height = 26
              Caption = 'Valor Seguro Transporte'
              FocusControl = DBEdit17
              WordWrap = True
            end
            object Label79: TLabel
              Left = 6
              Top = 261
              Width = 101
              Height = 13
              Caption = 'Vlr. ICMS Antecipado'
              FocusControl = DBEdit70
            end
            object Label80: TLabel
              Left = 6
              Top = 163
              Width = 75
              Height = 13
              Caption = 'Valor Capatazia'
              FocusControl = DBEdit71
            end
            object DBEdit18: TDBEdit
              Left = 104
              Top = 16
              Width = 81
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALCIF'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit19: TDBEdit
              Left = 104
              Top = 40
              Width = 81
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALPESO'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit20: TDBEdit
              Left = 104
              Top = 64
              Width = 81
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALFOBUS'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit21: TDBEdit
              Left = 104
              Top = 88
              Width = 81
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALFOB'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit22: TDBEdit
              Left = 104
              Top = 112
              Width = 81
              Height = 21
              DataField = 'VLRFRETE'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 4
            end
            object DBEdit23: TDBEdit
              Left = 104
              Top = 136
              Width = 81
              Height = 21
              DataField = 'VLRSEGUROINTERNAC'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 5
            end
            object DBEdit24: TDBEdit
              Left = 104
              Top = 234
              Width = 81
              Height = 21
              DataField = 'TAXAFOBANTECIPADO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 6
            end
            object DBEdit7: TDBEdit
              Left = 104
              Top = 210
              Width = 81
              Height = 21
              DataField = 'TAXASISCOMEX'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 7
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 187
              Top = 110
              Width = 81
              Height = 40
              Caption = 'Tipo de Moeda'
              DataField = 'TIPOMOEDAFRETE'
              DataSource = dmIT.dsDeclaracao
              Items.Strings = (
                'Dolar'
                'Yene')
              ParentBackground = True
              TabOrder = 8
              Values.Strings = (
                'D'
                'Y')
            end
            object DBEdit17: TDBEdit
              Left = 104
              Top = 186
              Width = 82
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALSEGUROTRANSP'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit70: TDBEdit
              Left = 104
              Top = 261
              Width = 81
              Height = 21
              DataField = 'VLRICMSANTECIPADO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 10
            end
            object DBEdit71: TDBEdit
              Left = 104
              Top = 162
              Width = 81
              Height = 21
              DataField = 'VLRDESPCAPATAZIA'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 11
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Despachante'
          ImageIndex = 1
          object GroupBox8: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 286
            Align = alClient
            Caption = 'Demonstrativo de despesas'
            TabOrder = 0
            object Label48: TLabel
              Left = 8
              Top = 16
              Width = 76
              Height = 13
              Caption = 'Despachante Id'
            end
            object Label49: TLabel
              Left = 8
              Top = 39
              Width = 89
              Height = 13
              Caption = 'N'#186' Dem. Despesas'
              FocusControl = DBEdit46
            end
            object Label50: TLabel
              Left = 8
              Top = 108
              Width = 88
              Height = 13
              Caption = 'Valor Desp. com II'
              FocusControl = DBEdit47
            end
            object Label52: TLabel
              Left = 8
              Top = 126
              Width = 109
              Height = 26
              AutoSize = False
              Caption = 'Valor Desp.c/ Desemb. (Parcial)'
              FocusControl = DBEdit49
              WordWrap = True
            end
            object Label53: TLabel
              Left = 8
              Top = 84
              Width = 101
              Height = 13
              Caption = 'Total.Desp.Despach.'
              FocusControl = DBEdit50
            end
            object Label1: TLabel
              Left = 208
              Top = 39
              Width = 202
              Height = 13
              Caption = 'Observa'#231#227'o do Pedido  para Despachante'
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = 5460819
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label55: TLabel
              Left = 8
              Top = 152
              Width = 73
              Height = 26
              Caption = 'Vlr. Desp. Sind Despachante'
              FocusControl = DBEdit28
              WordWrap = True
            end
            object Label56: TLabel
              Left = 8
              Top = 181
              Width = 104
              Height = 39
              Caption = 'Vlr. Desp. Armaz'#233'ns e Capataziais (CODESP/INFRAERO)'
              FocusControl = DBEdit45
              WordWrap = True
            end
            object Label57: TLabel
              Left = 8
              Top = 225
              Width = 106
              Height = 13
              Caption = 'Vlr. Desp. A.F.R.M.M.'
              FocusControl = DBEdit48
            end
            object Label59: TLabel
              Left = 250
              Top = 111
              Width = 77
              Height = 13
              Caption = 'Vlr. Desp. CPMF'
              FocusControl = DBEdit52
            end
            object Label60: TLabel
              Left = 252
              Top = 151
              Width = 87
              Height = 26
              Caption = 'Vlr. Desp. Transp. de Entrega'
              FocusControl = DBEdit53
              WordWrap = True
            end
            object Label61: TLabel
              Left = 252
              Top = 177
              Width = 111
              Height = 26
              Caption = 'Vlr. Desp. Transportes  de Remo'#231#227'o'
              FocusControl = DBEdit54
              WordWrap = True
            end
            object Label62: TLabel
              Left = 252
              Top = 220
              Width = 77
              Height = 26
              Caption = 'Vlr. Desp. Taxa de Expediente'
              FocusControl = DBEdit55
              WordWrap = True
            end
            object Label63: TLabel
              Left = 507
              Top = 136
              Width = 96
              Height = 26
              Caption = 'Vlr. Desp. Vigil'#226'ncia Sanit'#225'ria'
              FocusControl = DBEdit56
              WordWrap = True
            end
            object Label58: TLabel
              Left = 252
              Top = 204
              Width = 118
              Height = 13
              Caption = 'Vlr. Desp. de Entreposto'
              FocusControl = DBEdit55
              WordWrap = True
            end
            object Label64: TLabel
              Left = 252
              Top = 249
              Width = 77
              Height = 13
              Caption = 'Taxa Emiss'#227'o LI'
              FocusControl = DBEdit57
            end
            object Label65: TLabel
              Left = 507
              Top = 176
              Width = 101
              Height = 26
              Caption = 'Vlr. Desp. Comiss'#227'o N.F.S. Prest. Servi'#231'o'
              FocusControl = DBEdit58
              WordWrap = True
            end
            object Label72: TLabel
              Left = 8
              Top = 245
              Width = 112
              Height = 13
              Caption = 'Vlr.Frete Mar'#237'tim/A'#233'reo'
              FocusControl = DBEdit52
            end
            object Label73: TLabel
              Left = 252
              Top = 132
              Width = 78
              Height = 13
              Caption = 'Taxa SISCOMEX'
              FocusControl = DBEdit64
            end
            object Label74: TLabel
              Left = 507
              Top = 248
              Width = 95
              Height = 26
              Caption = 'Vlr. Total Despesas Aduaneiras'
              FocusControl = DBEdit65
              WordWrap = True
            end
            object Label75: TLabel
              Left = 507
              Top = 160
              Width = 101
              Height = 13
              Caption = 'Vlr. Outras Despesas'
              FocusControl = DBEdit66
              WordWrap = True
            end
            object Label76: TLabel
              Left = 507
              Top = 208
              Width = 39
              Height = 13
              Caption = 'Vlr IRRF'
              FocusControl = DBEdit67
            end
            object Label77: TLabel
              Left = 507
              Top = 230
              Width = 41
              Height = 13
              Caption = 'Vlr CSRF'
              FocusControl = DBEdit68
            end
            object Label78: TLabel
              Left = 8
              Top = 62
              Width = 99
              Height = 13
              Caption = 'Dt. Emiss'#227'o NF Desp'
              FocusControl = DBEdit69
            end
            object DBEdit46: TDBEdit
              Left = 120
              Top = 39
              Width = 81
              Height = 21
              DataField = 'NUMDEMONSDESPESA'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 2
            end
            object DBEdit47: TDBEdit
              Left = 120
              Top = 108
              Width = 81
              Height = 21
              DataField = 'VLRDESPESAII'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 5
            end
            object DBEdit49: TDBEdit
              Left = 120
              Top = 132
              Width = 81
              Height = 21
              DataField = 'VLRDESPESADESEMB'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 6
            end
            object DBEdit50: TDBEdit
              Left = 120
              Top = 84
              Width = 81
              Height = 21
              DataField = 'VLRTOTALDESPDESP'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 4
            end
            object wwDBComboDlg4: TwwDBComboDlg
              Left = 120
              Top = 15
              Width = 81
              Height = 21
              OnCustomDlg = wwDBComboDlg4CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'DESPACHANTEID'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit4: TDBEdit
              Left = 208
              Top = 16
              Width = 505
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_NOMEDESPACHANTE'
              DataSource = dmIT.dsDeclaracao
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object wwDBRichEdit3: TwwDBRichEdit
              Left = 207
              Top = 53
              Width = 505
              Height = 52
              ScrollBars = ssVertical
              AutoURLDetect = False
              Color = clWhite
              DataField = 'DESCRICAOCONDPAGTO'
              DataSource = dmPP.dsProposta
              PrintJobName = 'Delphi 7'
              TabOrder = 3
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
                760000007B5C727466315C616E73695C616E7369637067313235325C64656666
                305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C
                666368617273657430205461686F6D613B7D7D0D0A5C766965776B696E64345C
                7563315C706172645C66305C667331365C7061720D0A7D0D0A00}
            end
            object DBEdit28: TDBEdit
              Left = 120
              Top = 157
              Width = 81
              Height = 21
              DataField = 'VLRDESPSINDDESP'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 7
            end
            object DBEdit45: TDBEdit
              Left = 120
              Top = 181
              Width = 81
              Height = 21
              DataField = 'VLRDESPCODESPINFRAERO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 8
            end
            object DBEdit48: TDBEdit
              Left = 120
              Top = 221
              Width = 81
              Height = 21
              DataField = 'VLRDESPAFRMM'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 9
            end
            object DBEdit51: TDBEdit
              Left = 372
              Top = 108
              Width = 81
              Height = 21
              DataField = 'VLRDESPCPMF'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 11
            end
            object DBEdit52: TDBEdit
              Left = 372
              Top = 153
              Width = 81
              Height = 21
              DataField = 'VLRDESPTRANSPENTREGA'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 13
            end
            object DBEdit53: TDBEdit
              Left = 372
              Top = 177
              Width = 81
              Height = 21
              DataField = 'VLRDESPTRANSPREMOCAO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 14
            end
            object DBEdit54: TDBEdit
              Left = 372
              Top = 201
              Width = 81
              Height = 21
              DataField = 'VLRDESPARMAZENTREPOSTO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 15
            end
            object DBEdit55: TDBEdit
              Left = 372
              Top = 225
              Width = 81
              Height = 21
              DataField = 'VLRDESPTXEXPEDIENTE'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 16
            end
            object DBEdit56: TDBEdit
              Left = 614
              Top = 133
              Width = 98
              Height = 21
              DataField = 'VLRDESPVIGSANITARIA'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 18
            end
            object DBEdit57: TDBEdit
              Left = 372
              Top = 246
              Width = 81
              Height = 21
              DataField = 'VLRTAXAEMISSAOLI'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 17
            end
            object DBEdit58: TDBEdit
              Left = 614
              Top = 179
              Width = 97
              Height = 21
              DataField = 'VLRDESPCOMISSAONFS'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 19
            end
            object DBEdit63: TDBEdit
              Left = 120
              Top = 244
              Width = 81
              Height = 21
              DataField = 'VLRFRETEMARITIMOAEREO'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 10
            end
            object DBEdit64: TDBEdit
              Left = 372
              Top = 131
              Width = 81
              Height = 21
              DataField = 'TAXASISCOMEX'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 12
            end
            object DBEdit65: TDBEdit
              Left = 615
              Top = 248
              Width = 97
              Height = 21
              Color = clInactiveBorder
              DataField = 'C_TOTALDESPADUANEIRAS'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 20
            end
            object DBEdit66: TDBEdit
              Left = 614
              Top = 156
              Width = 98
              Height = 21
              DataField = 'VLROUTRASDESPESAS'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 21
            end
            object DBEdit67: TDBEdit
              Left = 614
              Top = 204
              Width = 98
              Height = 21
              DataField = 'VLRIRRF'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 22
            end
            object DBEdit68: TDBEdit
              Left = 614
              Top = 226
              Width = 98
              Height = 21
              DataField = 'VLRCSRF'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 23
            end
            object DBEdit69: TDBEdit
              Left = 120
              Top = 62
              Width = 81
              Height = 21
              DataField = 'DATANFDESP'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 24
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Resumo dos Lan'#231'amentos'
          ImageIndex = 2
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 369
            Height = 286
            Align = alLeft
            Caption = 'D'#233'bitos'
            TabOrder = 0
            object Label31: TLabel
              Left = 7
              Top = 31
              Width = 83
              Height = 13
              Caption = 'Valor Total do IPI'
              FocusControl = DBEdit26
            end
            object Label33: TLabel
              Left = 7
              Top = 58
              Width = 94
              Height = 13
              Caption = 'Valor Total do ICMS'
              FocusControl = DBEdit27
            end
            object Label34: TLabel
              Left = 7
              Top = 130
              Width = 148
              Height = 13
              Caption = 'Valor Total Custo de Aparelhos'
              FocusControl = DBEdit29
            end
            object Label35: TLabel
              Left = 7
              Top = 154
              Width = 128
              Height = 13
              Caption = 'Valor Total Custo de Pe'#231'as'
              FocusControl = DBEdit32
            end
            object Label36: TLabel
              Left = 7
              Top = 178
              Width = 120
              Height = 13
              Caption = 'Valor Total M'#225'q. e Equip.'
              FocusControl = DBEdit33
            end
            object Label37: TLabel
              Left = 7
              Top = 202
              Width = 112
              Height = 13
              Caption = 'Valor Total Ferramental'
              FocusControl = DBEdit34
            end
            object Label38: TLabel
              Left = 7
              Top = 226
              Width = 135
              Height = 13
              Caption = 'Valor Total M'#243'v. e Utens'#237'lios'
              FocusControl = DBEdit35
            end
            object Label39: TLabel
              Left = 7
              Top = 250
              Width = 136
              Height = 13
              Caption = 'Valor Total Adm. Tempor'#225'ria'
              FocusControl = DBEdit36
            end
            object Label2: TLabel
              Left = 7
              Top = 82
              Width = 70
              Height = 13
              Caption = 'Valor Total PIS'
              FocusControl = DBEdit2
            end
            object Label15: TLabel
              Left = 7
              Top = 106
              Width = 92
              Height = 13
              Caption = 'Valor Total COFINS'
              FocusControl = DBEdit13
            end
            object Label66: TLabel
              Left = 7
              Top = 9
              Width = 77
              Height = 13
              Caption = 'Valor Total do II'
              FocusControl = DBEdit59
            end
            object DBEdit26: TDBEdit
              Left = 159
              Top = 31
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALIPI'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit27: TDBEdit
              Left = 159
              Top = 58
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALICMS'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit29: TDBEdit
              Left = 159
              Top = 130
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALCUSTOAPARELHO'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit32: TDBEdit
              Left = 159
              Top = 154
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALCUSTOPECA'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit33: TDBEdit
              Left = 159
              Top = 178
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALMAQEQUIP'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit34: TDBEdit
              Left = 159
              Top = 202
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALFERRAMENTAL'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit35: TDBEdit
              Left = 159
              Top = 226
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALMOVUTENSILIOS'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit36: TDBEdit
              Left = 159
              Top = 250
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALADMTEMP'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit2: TDBEdit
              Left = 159
              Top = 82
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALPIS'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit13: TDBEdit
              Left = 159
              Top = 106
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALCOFINS'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 9
            end
            object DBEdit59: TDBEdit
              Left = 159
              Top = 9
              Width = 199
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRDESPESAII'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 10
            end
          end
          object GroupBox7: TGroupBox
            Left = 369
            Top = 0
            Width = 374
            Height = 286
            Align = alClient
            Caption = 'Cr'#233'ditos'
            TabOrder = 1
            object Label40: TLabel
              Left = 8
              Top = 10
              Width = 74
              Height = 13
              Caption = 'Valor Total FOB'
              FocusControl = DBEdit37
            end
            object Label41: TLabel
              Left = 8
              Top = 34
              Width = 131
              Height = 13
              Caption = 'Valor Total FOB Antecipado'
              FocusControl = DBEdit38
            end
            object Label42: TLabel
              Left = 8
              Top = 58
              Width = 71
              Height = 13
              Caption = 'Valor Total CIF'
              FocusControl = DBEdit39
            end
            object Label43: TLabel
              Left = 8
              Top = 82
              Width = 122
              Height = 13
              Caption = 'Valor Total CIF Anteciado'
              FocusControl = DBEdit40
            end
            object Label44: TLabel
              Left = 8
              Top = 106
              Width = 148
              Height = 13
              Caption = 'Valor Total Desp. Despachante'
              FocusControl = DBEdit41
            end
            object Label45: TLabel
              Left = 8
              Top = 130
              Width = 104
              Height = 13
              Caption = 'Valor Total Desp. G.I.'
              FocusControl = DBEdit42
            end
            object Label46: TLabel
              Left = 8
              Top = 154
              Width = 144
              Height = 13
              Caption = 'Valor Total Seguro Transporte'
              FocusControl = DBEdit43
            end
            object Label47: TLabel
              Left = 8
              Top = 178
              Width = 118
              Height = 13
              Caption = 'Valor Total IRRF a Pagar'
              FocusControl = DBEdit44
            end
            object Label17: TLabel
              Left = 8
              Top = 202
              Width = 107
              Height = 13
              Caption = 'Valor Total Frete Local'
              FocusControl = DBEdit14
            end
            object Label67: TLabel
              Left = 8
              Top = 224
              Width = 142
              Height = 36
              Caption = 'Diferen'#231'a apurado do Resumo'
              FocusControl = DBEdit60
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object DBEdit37: TDBEdit
              Left = 159
              Top = 10
              Width = 181
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALFOB2'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit38: TDBEdit
              Left = 159
              Top = 34
              Width = 181
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALFOBANT'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit39: TDBEdit
              Left = 159
              Top = 58
              Width = 181
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALCIF2'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit40: TDBEdit
              Left = 159
              Top = 82
              Width = 181
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALCIFANT'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit41: TDBEdit
              Left = 159
              Top = 106
              Width = 181
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALDESPDESP'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit42: TDBEdit
              Left = 159
              Top = 130
              Width = 181
              Height = 21
              DataField = 'VLRTOTALDESPGI'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 5
            end
            object DBEdit43: TDBEdit
              Left = 159
              Top = 154
              Width = 181
              Height = 21
              TabStop = False
              Color = clInactiveBorder
              DataField = 'VLRTOTALSEGUROTRANSP'
              DataSource = dmIT.dsDeclaracao
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit44: TDBEdit
              Left = 159
              Top = 178
              Width = 181
              Height = 21
              DataField = 'VLRTOTALIRRFPAGAR'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 7
            end
            object DBEdit14: TDBEdit
              Left = 159
              Top = 202
              Width = 181
              Height = 21
              DataField = 'VLRTOTALFRETELOCAL'
              DataSource = dmIT.dsDeclaracao
              TabOrder = 8
            end
            object DBEdit60: TDBEdit
              Left = 160
              Top = 232
              Width = 178
              Height = 24
              Color = clScrollBar
              DataField = 'C_DIFAPURARESUMO'
              DataSource = dmIT.dsDeclaracao
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
            end
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Observa'#231#227'o do Pedido'
          ImageIndex = 3
          object DBRichEdit1: TDBRichEdit
            Left = 0
            Top = 0
            Width = 743
            Height = 286
            Align = alClient
            DataField = 'OBSPEDIDO'
            DataSource = dmIT.dsDeclaracao
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Adi'#231#227'o'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 751
        Height = 384
        Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
        Align = alClient
        Color = clCream
        DataSource = dmIT.dsAdicao
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
            FieldName = 'ADICAOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCMID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESOLIQUIDO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFOBUS'
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
            FieldName = 'VLRCIF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAII'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRII'
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
            FieldName = 'USUARIO'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Mercadorias'
      ImageIndex = 3
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 673
        Top = 0
        Width = 78
        Height = 384
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
        TtmbClientDataSet = dmIT.cdsMercadoria
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmIT.dsMercadoria
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'Mercadorias'
        ExplicitLeft = 684
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 128
          Width = 78
          Height = 49
          Action = actAdicionarProcessos
          Flat = True
          Glyph.Data = {
            F6040000424DF604000000000000360000002800000010000000130000000100
            200000000000C004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BF000000FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BF000000BF000000FF00FF0000000000FFFF
            FF0080808000808080008080800080808000FFFFFF0000000000FF00FF00BF00
            0000BF000000BF000000BF000000BF000000BF000000BF00000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00BF00
            0000BF000000BF000000BF000000BF000000BF000000BF00000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BF000000BF000000FF00FF0000000000FFFF
            FF0080808000808080008080800080808000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00BF000000FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0080808000808080008080800080808000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF000000
            000000000000000000000000000000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0080808000FFFFFF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0080808000FFFFFF00000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FFFFFF0080808000FFFFFF000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
        end
        object tmbAjtgrdMercadoria: tPanel1
          Left = 0
          Top = 192
          Width = 70
          Height = 24
          AutoSize = True
          TabOrder = 0
          tmbDBGrid = dbgrdMercadoria
          tmbCria = True
          tmbAjusta = True
        end
      end
      object dbgrdMercadoria: TDBGrid
        Left = 0
        Top = 0
        Width = 673
        Height = 384
        Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
        Align = alClient
        Color = clCream
        DataSource = dmIT.dsMercadoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'L_SIGLA'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROCESSOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPROCESSOID'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMPROCESSOID'
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
            FieldName = 'L_PARTNUMBERID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAO_PRODUTO'
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
            FieldName = 'VLRFOBUS'
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
            FieldName = 'VLRCIF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCMID'
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
            FieldName = 'ALIQUOTAII'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFRETE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRFRETEUS'
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
            FieldName = 'VLRCOFINS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESOLIQUIDO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESOBRUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOMOVIMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOTRANSFERENCIA'
            Width = 64
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
            FieldName = 'IMOBILIZADO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOMATERIAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MERCADORIAID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOPROCESSOID'
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
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 519
    Width = 759
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
    Top = 29
    Width = 759
    Height = 46
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label14: TLabel
      Left = 6
      Top = 2
      Width = 74
      Height = 13
      Caption = 'DI Provis'#243'ria Id'
    end
    object Label16: TLabel
      Left = 84
      Top = 2
      Width = 66
      Height = 13
      Caption = 'Declara'#231#227'o Id'
    end
    object Label4: TLabel
      Left = 166
      Top = 2
      Width = 81
      Height = 13
      Caption = 'Data do Registro'
    end
    object Label6: TLabel
      Left = 258
      Top = 3
      Width = 87
      Height = 13
      Caption = 'Data de Libera'#231#227'o'
    end
    object Label18: TLabel
      Left = 351
      Top = 2
      Width = 52
      Height = 13
      Caption = 'Taxa Dolar'
    end
    object Label51: TLabel
      Left = 439
      Top = 2
      Width = 51
      Height = 13
      Caption = 'Taxa Yene'
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 15
      Width = 74
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'DECLARACAOID'
      DataSource = dmIT.dsDeclaracao
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 83
      Top = 15
      Width = 80
      Height = 21
      DataField = 'DIID'
      DataSource = dmIT.dsDeclaracao
      TabOrder = 1
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 610
      Top = 4
      Width = 132
      Height = 38
      Caption = 'Liberado Estoque'
      Color = clScrollBar
      DataField = 'LIBERARESTOQUE'
      DataSource = dmIT.dsDeclaracao
      Items.Strings = (
        'Entrou no Estoque'
        'Pendente no Estoque')
      ParentBackground = True
      ParentColor = False
      ReadOnly = True
      TabOrder = 2
      Values.Strings = (
        '1'
        '0')
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 166
      Top = 15
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAREGISTRO'
      DataSource = dmIT.dsDeclaracao
      Date = 37819.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 257
      Top = 15
      Width = 90
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATALIBERACAO'
      DataSource = dmIT.dsDeclaracao
      Date = 37819.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
    end
    object DBEdit15: TDBEdit
      Left = 350
      Top = 15
      Width = 80
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DOLARFISCALDIARIO'
      DataSource = dmIT.dsDeclaracao
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit16: TDBEdit
      Left = 438
      Top = 15
      Width = 80
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_YENEFISCALDIARIO'
      DataSource = dmIT.dsDeclaracao
      ReadOnly = True
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 487
    Width = 759
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 759
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
          Width = 510
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 91
        end>
      TtmbCria = True
      TtmbClientDataSet = dmIT.cdsDeclaracao
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 759
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
        Control = ActionToolBar2
        ImageIndex = -1
        MinHeight = 29
        Width = 279
      end
      item
        Break = False
        Control = tmbEdicaoTop1
        ImageIndex = -1
        MinHeight = 29
        Width = 168
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
      Left = 600
      Top = 0
      Width = 155
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 155
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object ActionToolBar2: TActionToolBar
      Left = 319
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
      494C010106000900040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      000000000000BF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF000000BF0000000000000000000000FFFFFF00808080008080
      80008080800080808000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BF000000BF000000BF00
      0000BF000000BF000000BF000000BF00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF000000BF0000000000000000000000FFFFFF00808080008080
      80008080800080808000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BF000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00808080008080
      80008080800080808000FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008000000080000000FFFFFF000000FF000000FF000000FF000000FF00FFFF
      FF00000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00008000000080000000800000008000000080000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF008080
      8000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      000080000000800000008000000080000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008000000080000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B73008C5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009494940094949400ADADAD00E7E7E700BDA5A500B5ADAD00CECE
      CE00000000000000000000000000000000000000000000000000000000000000
      0000A57B7300E7BDBD00F7BDBD00EFBDB500EFBDB500EFBDB500EFBDB500EFBD
      B500EFBDB500EFBDB500E7B594008C5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00CECE
      CE00EFEFEF00DEDEDE00ADADAD00B5B5B500524A4A005A5A5A00636363009C9C
      9C00D6D6D600D6D6D600BDBDBD00000000000000000000000000000000000000
      0000C6948400EFEFE700FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7E700FFEF
      DE00FFEFDE00FFEFDE00FFD6CE00946B63000000000000000000000000000000
      000000000000000000000000000000000000BD000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F7F7
      F700EFEFEF00D6D6D600ADADAD00ADADAD004A4A4A00424242005A5A5A008484
      840094949400B5B5B500DEDEDE00BDBDBD000000000000000000000000000000
      0000C6948400EFEFEF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
      DE00FFEFDE00FFEFDE00FFD6CE009C6B6B000000000000000000000000000000
      000000000000000000000000000000000000BD000000BD000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00F7F7F700EFEF
      EF00EFEFEF00D6D6D600A5A5A500ADADAD00B5B5B500A5A5A5008C8C8C006363
      630084848400949494009C9C9C00BDBDBD00A57B7300A57B7300A57B7300A57B
      7300CE9C8400EFEFEF00187B1800529C5A00FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFDE00FFEFDE00FFD6CE009C6B6B000000000000000000000000000000
      0000000000000000000000000000BD000000BD000000BD000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500FFFFFF00DEDEDE009C9C
      9C009C9C9C00C6C6C6009C9C9C008C8C8C00848484008C8C8C00A5A5A500BDBD
      BD00BDBDBD00C6C6C600C6C6C600C6C6C600A57B7300E7BDBD00F7BDBD00EFBD
      B500CE9C8400EFEFEF00187B180029B54A00529C5A00FFFFF700FFF7EF00FFF7
      E700FFF7E700FFF7E700FFCECE009C6B6B000000000000000000000000000000
      0000000000000000000000000000BD000000BD000000BD000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500F7F7F7009C9C9C00D6D6
      D600DEDEDE00D6D6D600CECECE00BDBDBD00A5A5A5009C9C9C008C8C8C008C8C
      8C00A5A5A500BDBDBD0084BD9400C6C6C600BD8C7B00E7E7E700FFF7EF00739C
      7300187B1800187B1800187B180031CE630029B54A00529C5A00FFFFF700FFF7
      EF00FFF7EF00FFF7E700FFC6C6009C736B000000000000000000000000000000
      00000000000000000000BD000000BD000000FFFFFF00BD000000BD000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF0000000000009C9C9C008C8C8C00DEDEDE00DEDE
      DE00D6D6D600EFEFEF00E7E7E700E7E7E700DEDEDE00CECECE00BDBDBD00ADAD
      AD009C9C9C008484840094949400C6C6C600C6948400EFEFE700529452000894
      100029C64A0029C64A0031CE6B0042DE73004AE77B004ADE7B0031843100FFF7
      EF00FFF7EF00FFF7EF00FFBDB5009C7373000000000000000000FFFFFF00FFFF
      FF00FFFFFF00BD000000BD000000BD0000000000000000000000BD000000BD00
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000000000000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000008C8C8C00E7E7E700D6D6D600CECE
      CE00DEDEDE00C6C6C600F7F7F700EFEFEF00CECECE00BDBDBD00BDBDBD00BDBD
      BD00D6D6D600E7E7E700D6D6D600CECECE00C69484008CB58C000894180029C6
      4A00088418000884180039CE63004AE7840052EF8400218C2100FFFFF700FFE7
      D600FFBDBD00FFADAD00FFA5A500A57373000000000000000000FFFFFF008484
      84008484840084848400BD000000FFFFFF00000000000000000000000000BD00
      0000FFFFFF000000000000000000000000000000000000FFFF00000000000000
      00000000000000000000FFFF000000000000FFFF000000000000000000000000
      00000000000000000000FFFF00000000000000000000D6D6D600CECECE00DEDE
      DE00CECECE00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00CECE
      CE00BDBDBD00BDBDBD00CECECE0000000000CE9C8400218C290018A529000884
      1800DEAD8C00FFFFFF00187B180042CE6B00428C3100FFFFF700FFFFF700E7C6
      AD00E7A59C00E79C9400E79C8C00A57373000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000BD000000FFFFFF000000000000000000000000008484840000FFFF000000
      000000000000FFFF0000000000000000000000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000D6D6D600BDBDBD00C6C6
      C600D6D6D600CECECE00E7E7E700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700D6D6D600CECECE0000000000CE9C84001094210042944A00FFFF
      FF00DEAD8C00F7F7F7004294420084B56300FFFFFF00FFFFFF00FFFFFF00B584
      7300B5847300B5847300B5847300A57B73000000000000000000FFFFFF008484
      8400848484008484840084848400848484000000000000000000000000000000
      000000000000BD000000FFFFFF000000000000000000848484000000000000FF
      FF000000000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF0000000000000000000000000000ADADAD00FFFF
      F700FFF7E700D6D6D600C6C6C600C6C6C600C6C6C600BDBDBD00BDADAD00B5B5
      B500CECECE00000000000000000000000000CEA5840008841800FFFFFF00FFFF
      FF00E7B58C00FFFFFF008C9C7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300FFBD5A00E7A56B00CE9C8400EFD6C6000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000BD000000FFFFFF000000000000000000848484000000
      000000FFFF0000000000000000000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00C694
      8400FFD6AD00FFD6AD00FFDEB500FFE7BD00F7E7D600EFE7D600C6ADAD000000
      000000000000000000000000000000000000D6A58C00187B1800FFFFFF00FFFF
      FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300E7AD8400D69C8400EFDED600000000000000000000000000FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BD0000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000E7DEDE00DEAD
      9400FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500F7D6AD00BD9494000000
      000000000000000000000000000000000000D6A58C0084A55200ADCE9C00FFFF
      FF00E7B58C00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300D6A58400EFDED60000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000C6A5A500FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00BD949400D6C6C6000000
      000000000000000000000000000000000000DEAD8C00FFFFFF00BDBD8C00FFFF
      FF00EFBD9400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300F7DED6000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848484000000000000FF
      FF000000000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF0000000000000000000000000000BD9C9400FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7DECE00BD949400000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300FFBD5A00E7A56B00CE9C8400EFD6
      C600000000000000000000000000000000000000000000000000FFFFFF008484
      8400848484000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008484840000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6BD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CEB5AD00BD9C9C00000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300E7AD8400D69C8400EFDED6000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD9C9C0000000000000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300D6A58400EFDED600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      84000000000000FFFF0000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFEF00BD949400BD949400BD94
      9400BD949400BD949400BD949400BD9494000000000000000000000000000000
      000000000000000000000000000000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400B5847300F7DED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000FFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000390000000100010000000000C80100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FFFFFFFF00000000FF00FFFF00000000FB00FFFF00000000
      F900F55F000000008000FFCF000000008000F00700000000F900F00700000000
      FB00F00300000000FF00F00300000000E000E00100000000E000E00000000000
      80FF00000000000080FF00010000000080FF00030000000080FF000700000000
      81FF000F0000000083FF001F0000000087FFF1FF00000000FFFFF3FF00000000
      FFFFF000FFFFFFFFF80FF000FFFFFFFFC001F000FF3FFFFFC000F000FF1FFFFF
      80000000FE1FFFFF00000000FE1FF00000000000800FF5540000000080479002
      00000000806785588001000080738002800100008079A154C0070000807CD002
      C01F0001877E08D8C01F0003807F4002C01F0007807FA154C03F000F85FFC000
      C03F001F80FFD0FF807F003F81FFE87F00FF007FFFFFF43F0000000000000000
      0000000000000000000000000000}
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actCalcularCIF
            Caption = '&Calcular CIF'
            ImageIndex = 2
          end
          item
            Action = actPDE
            ImageIndex = 5
          end
          item
            Action = actCalcularResumo
            Caption = 'C&alcular Resumo'
            ImageIndex = 3
          end>
        ActionBar = ActionToolBar1
      end
      item
        Items = <
          item
            Action = actRelatorioPedDI
            Caption = '&Pedido de DI'
            ImageIndex = 0
          end
          item
            Action = actRelatorio
            Caption = '&Ficha de DI'
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
      Caption = 'Ficha de DI'
      ImageIndex = 0
      OnExecute = actRelatorioExecute
    end
    object actCalcularCIF: TAction
      Category = 'Ferramentas'
      Caption = 'Calcular CIF'
      ImageIndex = 2
      OnExecute = actCalcularCIFExecute
    end
    object actCalcularResumo: TAction
      Category = 'Ferramentas'
      Caption = 'Calcular Resumo'
      ImageIndex = 3
      OnExecute = actCalcularResumoExecute
    end
    object actRelatorioPedDI: TAction
      Category = 'Relat'#243'rio'
      Caption = 'Pedido de DI'
      ImageIndex = 0
      OnExecute = actRelatorioPedDIExecute
    end
    object actAdicionarProcessos: TAction
      Category = 'Ferramentas'
      Caption = 'Adic.Processo'
      Hint = 'Adicionar processos de importa'#231#227'o'
      ImageIndex = 4
      OnExecute = actAdicionarProcessosExecute
    end
    object actPDE: TAction
      Category = 'Ferramentas'
      Caption = 'Gerar Pedido'
      ImageIndex = 5
      OnExecute = actPDEExecute
    end
  end
end
