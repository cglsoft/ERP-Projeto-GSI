object frmPedidoProposta: TfrmPedidoProposta
  Left = 484
  Top = 75
  Width = 767
  Height = 639
  VertScrollBar.Style = ssFlat
  Caption = 'Pedido de Proposta'
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
    Top = 29
    Width = 759
    Height = 525
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Dados da Declara'#231#227'o'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 751
        Height = 213
        Align = alTop
        Caption = 'Dados do Prospect / Cliente'
        TabOrder = 0
        object Label4: TLabel
          Left = 6
          Top = 122
          Width = 44
          Height = 13
          Caption = 'CPFCNPJ'
        end
        object Label5: TLabel
          Left = 6
          Top = 144
          Width = 63
          Height = 13
          Caption = 'Nome Cliente'
          FocusControl = DBEdit4
        end
        object Label9: TLabel
          Left = 342
          Top = 122
          Width = 55
          Height = 13
          Caption = 'Repr. S'#243'cio'
          FocusControl = DBEdit5
        end
        object Label10: TLabel
          Left = 6
          Top = 168
          Width = 58
          Height = 13
          Caption = 'Observa'#231#227'o'
        end
        object Label14: TLabel
          Left = 6
          Top = 14
          Width = 56
          Height = 13
          Caption = 'Proposta Id'
        end
        object Label1: TLabel
          Left = 6
          Top = 54
          Width = 33
          Height = 13
          Caption = 'Filial Id'
        end
        object Label3: TLabel
          Left = 84
          Top = 14
          Width = 61
          Height = 13
          Caption = 'Dt. Proposta'
        end
        object Label6: TLabel
          Left = 176
          Top = 14
          Width = 58
          Height = 13
          Caption = 'Dt. Validade'
        end
        object Label63: TLabel
          Left = 6
          Top = 73
          Width = 52
          Height = 26
          Caption = 'Origem da Venda ID'
          WordWrap = True
        end
        object Label65: TLabel
          Left = 6
          Top = 101
          Width = 67
          Height = 13
          Caption = 'Tipo Venda ID'
        end
        object DBEdit4: TDBEdit
          Tag = 1
          Left = 84
          Top = 144
          Width = 659
          Height = 21
          Hint = 'Nome do Cliente'
          CharCase = ecUpperCase
          DataField = 'NOMECLIENTE'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = wwDBComboDlg5Exit
        end
        object DBEdit5: TDBEdit
          Left = 406
          Top = 120
          Width = 337
          Height = 21
          Hint = 'Nome do Representante'
          CharCase = ecUpperCase
          DataField = 'REPRESENTSOCIO'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBMemo3: TDBMemo
          Left = 84
          Top = 168
          Width = 659
          Height = 41
          Hint = 'Observa'#231#227'o do Cliente'
          DataField = 'OBSERVACAO'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 2
          OnMouseMove = DBMemo3MouseMove
        end
        object wwDBComboDlg9: TwwDBComboDlg
          Left = 84
          Top = 120
          Width = 203
          Height = 20
          Hint = 'CNPJ ou Cpf do cliente'
          OnCustomDlg = wwDBComboDlg9CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CPFCNPJ'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
          OnExit = wwDBComboDlg5Exit
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 28
          Width = 74
          Height = 21
          Hint = 'N'#186' da Proposta'
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'PROPOSTAID'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object wwDBComboDlg5: TwwDBComboDlg
          Left = 84
          Top = 52
          Width = 85
          Height = 20
          Hint = 'N'#186' da Filial'
          OnCustomDlg = wwDBComboDlg5CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'FILIALID'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          WordWrap = False
          UnboundDataType = wwDefault
          OnExit = wwDBComboDlg5Exit
        end
        object DBEdit3: TDBEdit
          Left = 176
          Top = 52
          Width = 273
          Height = 21
          Hint = 'Nome da Filial'
          TabStop = False
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_FILIAL'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 6
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 84
          Top = 28
          Width = 87
          Height = 21
          Hint = 'Data da Proposta'
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAPROPOSTA'
          DataSource = dmPP.dsProposta
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          ShowButton = True
          TabOrder = 7
        end
        object wwDBDateTimePicker2: TwwDBDateTimePicker
          Left = 176
          Top = 28
          Width = 87
          Height = 21
          Hint = 'Data de validade da proposta'
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAVALIDADE'
          DataSource = dmPP.dsProposta
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          ShowButton = True
          TabOrder = 8
        end
        object wwDBComboDlg12: TwwDBComboDlg
          Left = 84
          Top = 74
          Width = 85
          Height = 20
          OnCustomDlg = wwDBComboDlg12CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'ORIGEMVENDAID'
          DataSource = dmPP.dsProposta
          TabOrder = 9
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit2: TDBEdit
          Left = 176
          Top = 98
          Width = 273
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCR_ORIGEMVENDA'
          DataSource = dmPP.dsProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object wwDBComboDlg13: TwwDBComboDlg
          Left = 84
          Top = 98
          Width = 85
          Height = 20
          OnCustomDlg = wwDBComboDlg13CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'TIPOVENDAID'
          DataSource = dmPP.dsProposta
          TabOrder = 11
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit10: TDBEdit
          Left = 176
          Top = 74
          Width = 273
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCR_TIPOVENDA'
          DataSource = dmPP.dsProposta
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object GroupBox3: TGroupBox
          Left = 456
          Top = 8
          Width = 287
          Height = 89
          Caption = 'Libera'#231#227'o Proposta'
          TabOrder = 13
          object Label13: TLabel
            Left = 8
            Top = 47
            Width = 75
            Height = 13
            Caption = 'Nome Liberador'
            FocusControl = DBEdit7
          end
          object Label15: TLabel
            Left = 138
            Top = 47
            Width = 90
            Height = 13
            Caption = 'Dt. Hora Libera'#231#227'o'
          end
          object DBEdit7: TDBEdit
            Left = 8
            Top = 60
            Width = 128
            Height = 21
            Hint = 'Nome Liberador'
            TabStop = False
            CharCase = ecUpperCase
            Color = clScrollBar
            DataField = 'LIBNOME'
            DataSource = dmPP.dsProposta
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
          end
          object wwDBDateTimePicker3: TwwDBDateTimePicker
            Left = 137
            Top = 60
            Width = 144
            Height = 21
            Hint = 'Dt. da Hora da Libera'#231#227'o'
            TabStop = False
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            Color = clScrollBar
            DataField = 'LIBDATAHORA'
            DataSource = dmPP.dsProposta
            Epoch = 1950
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            ShowButton = True
            TabOrder = 1
          end
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 12
            Width = 106
            Height = 17
            Hint = 'Proposta Liberada'
            TabStop = False
            Caption = 'Proposta Liberada'
            Color = 12442335
            DataField = 'LIBERACAO'
            DataSource = dmPP.dsProposta
            Font.Charset = ANSI_CHARSET
            Font.Color = 5460819
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 27
            Width = 106
            Height = 17
            Hint = 'TRADE-IN'
            Caption = 'TRADE-IN'
            DataField = 'TRADEIN'
            DataSource = dmPP.dsProposta
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBRadioGroup1: TDBRadioGroup
            Left = 116
            Top = 10
            Width = 165
            Height = 39
            Hint = 'Andamento da proposta'
            Caption = 'Andamento da Proposta'
            Columns = 2
            DataField = 'ANDAMENTOPROPOSTA'
            DataSource = dmPP.dsProposta
            Enabled = False
            Items.Strings = (
              'Aberta'
              'Entregue'
              'Cancelada'
              'Aprovada')
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Values.Strings = (
              'A'
              'B'
              'C'
              'D')
          end
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 213
        Width = 751
        Height = 284
        ActivePage = TabSheet4
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TabStop = False
        object TabSheet4: TTabSheet
          Caption = 'Dados de Endere'#231'o'
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 401
            Height = 256
            Align = alLeft
            Caption = 'Endere'#231'o de Cadastro'
            TabOrder = 0
            object Label7: TLabel
              Left = 6
              Top = 16
              Width = 33
              Height = 13
              Caption = 'CEP ID'
            end
            object Label8: TLabel
              Left = 216
              Top = 16
              Width = 37
              Height = 13
              Caption = 'N'#250'mero'
              FocusControl = DBEdit6
            end
            object Label11: TLabel
              Left = 6
              Top = 40
              Width = 65
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit9
            end
            object Label12: TLabel
              Left = 6
              Top = 64
              Width = 45
              Height = 13
              Caption = 'Endere'#231'o'
            end
            object Label18: TLabel
              Left = 6
              Top = 107
              Width = 28
              Height = 13
              Caption = 'Bairro'
              FocusControl = DBEdit18
            end
            object Label19: TLabel
              Left = 6
              Top = 135
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = DBEdit19
            end
            object Label20: TLabel
              Left = 350
              Top = 135
              Width = 13
              Height = 13
              Caption = 'UF'
              FocusControl = DBEdit20
            end
            object Label21: TLabel
              Left = 6
              Top = 157
              Width = 19
              Height = 13
              Caption = 'Pa'#237's'
              FocusControl = DBEdit21
            end
            object DBEdit6: TDBEdit
              Left = 264
              Top = 14
              Width = 130
              Height = 21
              Hint = 'N'#186' da Resid'#234'ncia'
              CharCase = ecUpperCase
              DataField = 'NUMERO'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 80
              Top = 39
              Width = 314
              Height = 21
              Hint = 'Complemento do endere'#231'o'
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object DBEdit18: TDBEdit
              Left = 80
              Top = 107
              Width = 316
              Height = 21
              Hint = 'Bairro '
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
            end
            object DBEdit19: TDBEdit
              Left = 80
              Top = 132
              Width = 265
              Height = 21
              Hint = 'Cidade'
              CharCase = ecUpperCase
              DataField = 'CIDADE'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
            end
            object DBEdit20: TDBEdit
              Left = 366
              Top = 132
              Width = 30
              Height = 21
              Hint = 'Unidade federativa'
              CharCase = ecUpperCase
              DataField = 'SIGLAUFID'
              DataSource = dmPP.dsProposta
              TabOrder = 6
            end
            object DBEdit21: TDBEdit
              Left = 80
              Top = 157
              Width = 316
              Height = 21
              Hint = 'Pa'#237's'
              CharCase = ecUpperCase
              DataField = 'PAIS'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
            end
            object DBMemo1: TDBMemo
              Left = 80
              Top = 63
              Width = 316
              Height = 40
              Hint = 'Endere'#231'o completo'
              DataField = 'ENDERECO'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ScrollBars = ssVertical
              ShowHint = True
              TabOrder = 3
              OnMouseMove = DBMemo1MouseMove
            end
            object wwDBComboDlg4: TwwDBComboDlg
              Left = 80
              Top = 15
              Width = 113
              Height = 20
              Hint = 'N'#186' da Caixa Postal'
              OnCustomDlg = wwDBComboDlg4CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              CharCase = ecUpperCase
              DataField = 'CEPID'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
              OnExit = wwDBComboDlg5Exit
            end
          end
          object GroupBox4: TGroupBox
            Left = 401
            Top = 0
            Width = 342
            Height = 256
            Align = alClient
            Caption = 'Contato'
            TabOrder = 1
            object Label22: TLabel
              Left = 6
              Top = 33
              Width = 39
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit8
            end
            object Label24: TLabel
              Left = 6
              Top = 59
              Width = 42
              Height = 13
              Caption = 'Telefone'
              FocusControl = DBEdit22
            end
            object Label26: TLabel
              Left = 6
              Top = 85
              Width = 33
              Height = 13
              Caption = 'Celular'
              FocusControl = DBEdit24
            end
            object Label28: TLabel
              Left = 6
              Top = 110
              Width = 19
              Height = 13
              Caption = 'FAX'
              FocusControl = DBEdit26
            end
            object Label29: TLabel
              Left = 6
              Top = 136
              Width = 28
              Height = 13
              Caption = 'e-mail'
              FocusControl = DBEdit27
            end
            object Label31: TLabel
              Left = 6
              Top = 153
              Width = 40
              Height = 26
              Caption = 'P'#225'gina Internet'
              FocusControl = DBEdit28
              WordWrap = True
            end
            object DBEdit8: TDBEdit
              Left = 56
              Top = 27
              Width = 281
              Height = 21
              Hint = 'Nome para Contato'
              CharCase = ecUpperCase
              DataField = 'CONTATO'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object DBEdit22: TDBEdit
              Left = 56
              Top = 53
              Width = 281
              Height = 21
              Hint = 'Telef'#244'ne'
              CharCase = ecUpperCase
              DataField = 'TELEFONE'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object DBEdit24: TDBEdit
              Left = 56
              Top = 79
              Width = 281
              Height = 21
              Hint = 'Celular'
              CharCase = ecUpperCase
              DataField = 'CELULAR'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 56
              Top = 105
              Width = 281
              Height = 21
              Hint = 'N'#186' do Fax'
              CharCase = ecUpperCase
              DataField = 'FAX'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
            end
            object DBEdit27: TDBEdit
              Left = 56
              Top = 131
              Width = 281
              Height = 21
              Hint = 'endere'#231'o eletr'#244'nico'
              CharCase = ecUpperCase
              DataField = 'EMAIL'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
            end
            object DBEdit28: TDBEdit
              Left = 56
              Top = 157
              Width = 281
              Height = 21
              Hint = 'URL'
              CharCase = ecUpperCase
              DataField = 'PAGINA'
              DataSource = dmPP.dsProposta
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
            end
          end
        end
        object TabSheet16: TTabSheet
          Caption = 'Carta Apresenta'#231#227'o'
          ImageIndex = 8
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Carta de Apresenta'#231#227'o'
            TabOrder = 0
            object Splitter5: TSplitter
              Left = 154
              Top = 15
              Width = 4
              Height = 239
            end
            object Panel3: TPanel
              Left = 158
              Top = 15
              Width = 583
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Splitter2: TSplitter
                Left = 0
                Top = 82
                Width = 583
                Height = 4
                Cursor = crVSplit
                Align = alTop
              end
              object Panel8: TPanel
                Left = 0
                Top = 0
                Width = 583
                Height = 82
                Align = alTop
                BevelOuter = bvNone
                Constraints.MinHeight = 40
                TabOrder = 0
                object Label30: TLabel
                  Left = 0
                  Top = 0
                  Width = 583
                  Height = 13
                  Align = alTop
                  AutoSize = False
                  Caption = '  Tipo de Carta de Apresenta'#231#227'o'
                  Color = clBtnFace
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 5460819
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object DBMemo2: TDBMemo
                  Left = 0
                  Top = 13
                  Width = 583
                  Height = 69
                  Align = alClient
                  Color = clScrollBar
                  DataField = 'L_CARTA_APRESENT'
                  DataSource = dmPP.dsProposta
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel9: TPanel
                Left = 0
                Top = 86
                Width = 583
                Height = 80
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label33: TLabel
                  Left = 0
                  Top = 0
                  Width = 583
                  Height = 13
                  Align = alTop
                  AutoSize = False
                  Caption = '  Carta de Apresenta'#231#227'o'
                  Color = clBtnFace
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 5460819
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object DBRhCartaApresentacao: TDBMemo
                  Left = 0
                  Top = 13
                  Width = 583
                  Height = 67
                  Align = alClient
                  Color = clScrollBar
                  DataField = 'L_CARTA'
                  DataSource = dmPP.dsProposta
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
            object Panel6: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              Constraints.MaxWidth = 152
              Constraints.MinWidth = 5
              TabOrder = 1
              object Label36: TLabel
                Left = 6
                Top = 16
                Width = 42
                Height = 13
                Caption = 'N'#186' Carta'
              end
              object wwDBComboDlg10: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg10CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'CARTAAPRESENTID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
                OnExit = wwDBComboDlg10Exit
              end
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Condi'#231#227'o Pagto'
          ImageIndex = 2
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Condi'#231#227'o de Pagto'
            TabOrder = 0
            object Panel10: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label16: TLabel
                Left = 6
                Top = 6
                Width = 57
                Height = 13
                Caption = 'Cond.Pagto'
              end
              object Label32: TLabel
                Left = 6
                Top = 20
                Width = 56
                Height = 13
                Caption = 'Proposta Id'
              end
              object Label27: TLabel
                Left = 5
                Top = 60
                Width = 64
                Height = 30
                AutoSize = False
                Caption = 'Cond Pagto  Faturamento'
                FocusControl = DBEdit12
                WordWrap = True
              end
              object wwDBComboDlg1: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg1CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'CONDPAGTOPROPID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
              object DBEdit12: TDBEdit
                Left = 74
                Top = 64
                Width = 65
                Height = 21
                Color = clScrollBar
                DataField = 'L_CONDPAGTOID'
                DataSource = dmPP.dsProposta
                ReadOnly = True
                TabOrder = 1
              end
            end
            object Panel11: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Splitter3: TSplitter
                Left = 0
                Top = 85
                Width = 587
                Height = 4
                Cursor = crVSplit
                Align = alTop
              end
              object Panel12: TPanel
                Left = 0
                Top = 0
                Width = 587
                Height = 85
                Align = alTop
                BevelOuter = bvNone
                Constraints.MinHeight = 40
                TabOrder = 0
                object Label38: TLabel
                  Left = 0
                  Top = 0
                  Width = 193
                  Height = 13
                  Align = alTop
                  Caption = '  Descri'#231#227'o da cond. pagto. da Proposta'
                  Color = clBtnFace
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 5460819
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object wwDBRichEdit3: TDBMemo
                  Left = 0
                  Top = 13
                  Width = 587
                  Height = 72
                  Align = alClient
                  Color = clScrollBar
                  DataField = 'DESCRICAOCONDPAGTO'
                  DataSource = dmPP.dsProposta
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel13: TPanel
                Left = 0
                Top = 89
                Width = 587
                Height = 77
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label52: TLabel
                  Left = 0
                  Top = 0
                  Width = 131
                  Height = 13
                  Align = alTop
                  Caption = '  Cond. pagto. da Proposta'
                  Color = clBtnFace
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 5460819
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object DBRhCodPagtoProp: TDBMemo
                  Left = 0
                  Top = 13
                  Width = 587
                  Height = 64
                  Align = alClient
                  Color = clScrollBar
                  DataField = 'L_DESCR_CONDPGTO'
                  DataSource = dmPP.dsProposta
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Obs.Prop.'
          ImageIndex = 3
          object GroupBox6: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Observa'#231#227'o da Proposta'
            TabOrder = 0
            object Panel14: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label17: TLabel
                Left = 6
                Top = 16
                Width = 58
                Height = 13
                Caption = 'Obs.Prop Id'
              end
              object wwDBComboDlg2: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg2CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'OBSPROPID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
            end
            object Panel15: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label53: TLabel
                Left = 0
                Top = 0
                Width = 125
                Height = 13
                Align = alTop
                Caption = '  Observa'#231#227'o da Proposta'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = 5460819
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBRhObsProp: TDBMemo
                Left = 0
                Top = 13
                Width = 587
                Height = 153
                Align = alClient
                Color = clScrollBar
                DataField = 'L_DESCR_OBS'
                DataSource = dmPP.dsProposta
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Garantia'
          ImageIndex = 4
          object GroupBox7: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Garantia da Proposta'
            TabOrder = 0
            object Panel16: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label23: TLabel
                Left = 6
                Top = 16
                Width = 54
                Height = 13
                Caption = 'Garantia Id'
              end
              object wwDBComboDlg3: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg3CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'GARANTIAID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
            end
            object Panel17: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label54: TLabel
                Left = 0
                Top = 0
                Width = 47
                Height = 13
                Align = alTop
                Caption = '  Garantia'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = 5460819
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBRhGarantia: TDBMemo
                Left = 0
                Top = 13
                Width = 587
                Height = 153
                Align = alClient
                Color = clScrollBar
                DataField = 'L_DESCR_GARANTIA'
                DataSource = dmPP.dsProposta
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Assist. T'#233'cnica'
          ImageIndex = 5
          object GroupBox8: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Assist'#234'ncia T'#233'cnica'
            TabOrder = 0
            object Panel18: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label25: TLabel
                Left = 6
                Top = 16
                Width = 56
                Height = 13
                Caption = 'Assist. T'#233'c.'
              end
              object wwDBComboDlg6: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg6CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'ASSISTTECID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
            end
            object Panel28: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label55: TLabel
                Left = 0
                Top = 0
                Width = 96
                Height = 13
                Align = alTop
                Caption = '  Assistencia t'#233'cnica'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = 5460819
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBRhAssistTec: TDBMemo
                Left = 0
                Top = 13
                Width = 587
                Height = 153
                Align = alClient
                Color = clScrollBar
                DataField = 'L_DESCR_ASSISTTEC'
                DataSource = dmPP.dsProposta
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet14: TTabSheet
          Caption = 'Prazo'
          ImageIndex = 6
          object GroupBox10: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Prazo de Entrega / Embarque'
            TabOrder = 0
            object Panel19: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label34: TLabel
                Left = 14
                Top = 16
                Width = 40
                Height = 13
                Caption = 'Prazo Id'
              end
              object wwDBComboDlg7: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg7CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'PRAZOID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
            end
            object Panel25: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label56: TLabel
                Left = 0
                Top = 0
                Width = 33
                Height = 13
                Align = alTop
                Caption = '  Prazo'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = 5460819
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
            end
            object DBRhPrazo: TDBMemo
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              Color = clScrollBar
              DataField = 'L_DESCR_PRAZO'
              DataSource = dmPP.dsProposta
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Validade'
          ImageIndex = 7
          object GroupBox11: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Validade'
            TabOrder = 0
            object Panel20: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label35: TLabel
                Left = 12
                Top = 16
                Width = 53
                Height = 13
                Caption = 'Validade Id'
              end
              object wwDBComboDlg8: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg8CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'VALIDADEID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
            end
            object Panel29: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label57: TLabel
                Left = 0
                Top = 0
                Width = 46
                Height = 13
                Align = alTop
                Caption = '  Validade'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = 5460819
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object DBRhValidade: TDBMemo
                Left = 0
                Top = 13
                Width = 587
                Height = 153
                Align = alClient
                Color = clScrollBar
                DataField = 'L_DESCR_VALID'
                DataSource = dmPP.dsProposta
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Instala'#231#227'o'
          ImageIndex = 9
          object GroupBox13: TGroupBox
            Left = 0
            Top = 0
            Width = 743
            Height = 256
            Align = alClient
            Caption = 'Instala'#231#227'o'
            TabOrder = 0
            object Panel22: TPanel
              Left = 2
              Top = 15
              Width = 152
              Height = 239
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label41: TLabel
                Left = 12
                Top = 16
                Width = 50
                Height = 13
                Caption = 'Instala'#231#227'o'
              end
              object wwDBComboDlg11: TwwDBComboDlg
                Left = 74
                Top = 11
                Width = 65
                Height = 20
                OnCustomDlg = wwDBComboDlg11CustomDlg
                ShowButton = True
                Style = csDropDown
                AutoSize = False
                DataField = 'INSTALACAOID'
                DataSource = dmPP.dsProposta
                TabOrder = 0
                WordWrap = False
                UnboundDataType = wwDefault
              end
            end
            object Panel23: TPanel
              Left = 154
              Top = 15
              Width = 587
              Height = 239
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label47: TLabel
                Left = 0
                Top = 0
                Width = 56
                Height = 13
                Align = alTop
                Caption = '  Instala'#231#227'o'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = 5460819
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = False
                ParentFont = False
              end
              object wwDBRichEdit2: TDBMemo
                Left = 0
                Top = 13
                Width = 587
                Height = 226
                Align = alClient
                Color = clScrollBar
                DataField = 'L_DESCR_INSTALACAO'
                DataSource = dmPP.dsProposta
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Equipamentos'
      ImageIndex = 2
      object Label37: TLabel
        Left = 0
        Top = 343
        Width = 753
        Height = 6
        AutoSize = False
      end
      object Panel7: TPanel
        Left = 0
        Top = 466
        Width = 751
        Height = 31
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object sbAdicionar: TSpeedButton
          Left = 616
          Top = 4
          Width = 136
          Height = 26
          Hint = 'Adiciona o Processo para a Mercadoria Selecionada'
          Caption = '&Adicionar Composi'#231#227'o'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            C6030000424DC603000000000000360000002800000010000000130000000100
            1800000000009003000000000000000000000000000000000000008000008000
            0080000080000080000080000080000080000080000080000080000080000080
            00008000008000008000008000A37875A37875A37875A37875A37875A37875A3
            7875A37875A37875A37875A37875A37875A378758A5B5A008000008000A57976
            E7BEB8F1BEB8EFBCB7EFBCB7EEBBB7EEBBB7EDBAB6ECB9B6ECB9B6EBB8B5EAB7
            B5E7B4968A5B5A008000008000B98B7EE5E3E1FFF4E9FFF3E8FFF0E2FFF0E2FF
            EFDFFFEDDBFFECD8FFE8D0FFE5CCFFE4C9FFD0C7926362008000008000BC8E7F
            E6E5E3FFF7EFFFF4E9FFF3E7FFF3E7FFEFDFFFEFDFFFECD8FFE9D3FFE8D0FFE5
            CCFFD0C7936665008000008000C09181E9E8E7FFF8F1FFF7EFFFF4E9FFF3E8FF
            F0E2FFEFDFFFEDDBFFECD8FFECD8FFE9D3FFD1C8956966008000008000C49581
            EBEAE9FFFAF7FFF8F1FFF7EFFFF4E9FFF3E7FFEFDFFFEFDFFFEDDBFFEDDBFFEC
            D8FFD1C8986B69008000008000C89983EDEDECFFFBF8FFFAF7FFF8F1FFF7EFFF
            F4E9FFF0E2FFEFDFFFEFDFFFEFDFFFEDDBFFD2CA9A6D6B008000008000CB9C85
            EFEFEFFFFEFEFFFBF8FFFAF7FFF8F1FFF7EFFFF3E7FFF0E2FFF0E2FFEFDFFFEF
            DFFFCFC89B6F6D008000008000CFA086F2F2F2FFFFFFFFFEFEFFFBF8FFFBF8FF
            F9F2FFF7EFFFF4E9FFF3E7FFF0E2FFEFDFFFC6C09D716F008000008000D3A388
            F3F3F3FFFFFFFFFFFFFFFEFEFFF8F1FFF7EFFFF7EFFFF4E9FFF4E9FFF3E7FFF0
            E2FFBDB79F7471008000008000D7A789F5F5F5FFFFFFFFFFFFFFFFFFFFFAF7FF
            F8F1FFF8F1FFF7EFFFE3D6FFBEBEFFAFAFFFA1A1A17572008000008000DAAA8A
            F8F8F8FFFFFFFFFFFFFFFFFFFFFAF7FFF8F1FFF8F1FFF7EFE7C0ADE6A79AE59E
            91E4988BA27674008000008000DEAD8CF5F5F5FFFFFFFFFFFFFFFFFFFFFEFEFF
            FBF8FFFBF8FFF9F2B28074B28074B28074B28074A37875008000008000E1B08D
            F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB28074FFB85CE1A3
            6ACD9A81E8D2C7008000008000E4B38EFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFB28074E4AD81D29F83EDDAD0008000008000008000E7B68F
            FFFFFFFEFEFEFDFDFDFDFDFDFBFBFBF8F8F8F7F7F7F5F5F5B28074D7A485EFDC
            D1008000008000008000008000EAB890DCA987DCA987DCA987DCA987DCA987DC
            A987DCA987DCA987B28074F1DED2008000008000008000008000008000008000
            0080000080000080000080000080000080000080000080000080000080000080
            00008000008000008000}
          ParentFont = False
          OnClick = sbAdicionarClick
        end
      end
      object Panel21: TPanel
        Left = 0
        Top = 0
        Width = 751
        Height = 466
        Align = alClient
        Constraints.MinWidth = 20
        TabOrder = 1
        object Splitter4: TSplitter
          Left = 1
          Top = 132
          Width = 749
          Height = 6
          Cursor = crVSplit
          Align = alTop
          Beveled = True
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 749
          Height = 131
          Align = alTop
          BevelOuter = bvNone
          Constraints.MinHeight = 50
          TabOrder = 0
          object Label39: TLabel
            Left = 0
            Top = 125
            Width = 749
            Height = 6
            Align = alBottom
            AutoSize = False
          end
          object Label42: TLabel
            Left = 675
            Top = 0
            Width = 6
            Height = 125
            Align = alRight
            AutoSize = False
          end
          object Label45: TLabel
            Left = 744
            Top = 0
            Width = 5
            Height = 125
            Align = alRight
            AutoSize = False
          end
          object tmbEdicaoLista1: TtmbEdicaoLista
            Left = 681
            Top = 0
            Width = 67
            Height = 120
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
            TtmbClientDataSet = dmPP.cdsPropEquipamento
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmPP.dsPropEquipamento
            TtmbFontDefaut = False
            TtmbDesativaInserir = True
            TtmbDireito = 'PropEquipamento'
          end
          object GroupBox14: TGroupBox
            Left = 0
            Top = 0
            Width = 675
            Height = 125
            Align = alClient
            Caption = 'Equipamentos'
            TabOrder = 1
            object DBGrid1: TDBGrid
              Left = 2
              Top = 15
              Width = 671
              Height = 108
              Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
              Align = alClient
              Color = clCream
              DataSource = dmPP.dsPropEquipamento
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
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
                  FieldName = 'ITEMID'
                  Title.Caption = 'ITEM ID'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 50
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MODELOEQUIPAMENTOID'
                  Title.Caption = 'MODELOEQUIPAMENTO ID'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = 3552822
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
                  Width = 205
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNITARIOREVENDA'
                  Title.Caption = 'VLR UNITARIO REVENDA'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTALREVENDA'
                  Title.Caption = 'VLRTOTAL REVENDA'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PORCDESCONTO'
                  Title.Caption = 'PORC DESCONTO'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRDESCONTO'
                  Title.Caption = 'VLR DESCONTO'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRLIQUIDOREVENDA'
                  Title.Caption = 'VLR LIQUIDORE VENDA'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNITARIOFOB'
                  Title.Caption = 'VLRUNITARIO FOB'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTALFOB'
                  Title.Caption = 'VLR TOTAL FOB'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNITARIONET'
                  Title.Caption = 'VLRUNITARIO NET'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTALNET'
                  Title.Caption = 'VLR TOTAL NET'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REVISAOID'
                  Title.Caption = 'REVISAO ID'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'L_GRUPOID'
                  Title.Caption = 'L_GRUPO ID'
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
        object Panel5: TPanel
          Left = 1
          Top = 138
          Width = 749
          Height = 327
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label40: TLabel
            Left = 0
            Top = 0
            Width = 749
            Height = 6
            Align = alTop
            AutoSize = False
          end
          object Label43: TLabel
            Left = 671
            Top = 6
            Width = 6
            Height = 315
            Align = alRight
            AutoSize = False
          end
          object Label44: TLabel
            Left = 0
            Top = 321
            Width = 749
            Height = 6
            Align = alBottom
            AutoSize = False
          end
          object Label46: TLabel
            Left = 744
            Top = 6
            Width = 5
            Height = 315
            Align = alRight
            AutoSize = False
          end
          object tmbEdicaoLista2: TtmbEdicaoLista
            Left = 677
            Top = 6
            Width = 67
            Height = 120
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
            TtmbClientDataSet = dmPP.cdsPropComposicao
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmPP.dsPropComposicao
            TtmbFontDefaut = False
            TtmbDesativaInserir = True
            TtmbDireito = 'PropComposicao'
          end
          object GroupBox15: TGroupBox
            Left = 0
            Top = 6
            Width = 671
            Height = 315
            Align = alClient
            Caption = 'Composi'#231#227'o'
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 2
              Top = 15
              Width = 667
              Height = 298
              Align = alClient
              Color = clCream
              DataSource = dmPP.dsPropComposicao
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = DBGrid2DblClick
              OnTitleClick = DBGrid2TitleClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'MODELOCOMPONENTEID'
                  Title.Caption = 'MODELO COMPONENTE ID'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = 3552822
                  Title.Font.Height = -11
                  Title.Font.Name = 'Tahoma'
                  Title.Font.Style = [fsBold]
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
                  FieldName = 'VLRUNITARIOREVENDA'
                  Title.Caption = 'VLR UNITARIO REVENDA'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTALREVENDA'
                  Title.Caption = 'VLR TOTAL REVENDA'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNITARIOFOB'
                  Title.Caption = 'VLR UNITARIO FOB'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTALFOB'
                  Title.Caption = 'VLR TOTAL FOB'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRUNITARIONET'
                  Title.Caption = 'VLR UNITARIO NET'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRTOTALNET'
                  Title.Caption = 'VLR TOTAL NET'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'L_GRUPOID'
                  Title.Caption = 'L_GRUPO ID'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'L_DESCR_GRUPO'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'L_DESCRPORTUGUES'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'L_DESCRINGLES'
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
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Opcionais'
      ImageIndex = 5
      DesignSize = (
        751
        497)
      object Label48: TLabel
        Left = 745
        Top = 0
        Width = 6
        Height = 497
        Align = alRight
        AutoSize = False
        Caption = '                            '
      end
      object Panel24: TPanel
        Left = 0
        Top = 0
        Width = 391
        Height = 497
        Align = alLeft
        TabOrder = 1
        object Panel26: TPanel
          Left = 347
          Top = 1
          Width = 43
          Height = 495
          Align = alRight
          BevelInner = bvLowered
          TabOrder = 0
          object sbUmUP: TSpeedButton
            Left = 8
            Top = 26
            Width = 29
            Height = 29
            Flat = True
            Glyph.Data = {
              76030000424D7603000000000000360000002800000011000000100000000100
              1800000000004003000000000000000000000000000000000000000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              8000008000008000008000008000000080000080000080000080000080000080
              000080000080B0D0B00000800000800000800000800000800000800000800000
              8000000080000080000080000080000080000080000080000080026B0371AA71
              0000800000800000800000800000800000800000800000008000008000008000
              00800000800000800000800000800D801907820C418D41F0F6F0000080000080
              0000800000800000800000008000008000008000008000008000008000008000
              00800D801910A81F098E11227E23D0E3D0000080000080000080000080000000
              80288D5113841F11831E0F811B0E811B0D80190B7D140D80191AB23210A81F0C
              9A15127813A0C6A0000080000080000080000000802287414DE48043DB763FD7
              7235CD6834CC672CC45727BF4E1FB73C1AB23210A81F0CA01502750371AA7100
              00800000800000008024894153EA854DE48043DB763FD77235CD6834CC672CC4
              5726BE4C1DB5391AB23210A81F0CA415027E0361A06100008000000080258A41
              5AF28C53EA854DE48043DB763FD77235CD6834CC672CC45726BE4C1DB5391AB2
              3210A41D03730690BD9000008000000080278C4130AE492EAC4728A64227A540
              21A03B1F9D3827B34E34CC672CC45726BE4C18A72F036F11B0D0B00000800000
              80000000800000800000800000800000800000800000800000801F9D3835CD68
              34CC671CA1372A8836D0E3D00000800000800000800000008000008000008000
              008000008000008000008000008021A03B3FD77217932E298641D0E3D0000080
              0000800000800000800000008000008000008000008000008000008000008000
              0080229D3811831E5AA971F0F6F0000080000080000080000080000080000000
              800000800000800000800000800000800000800000800F71118AC69F00008000
              0080000080000080000080000080000080000000800000800000800000800000
              80000080000080000080B0D0B000008000008000008000008000008000008000
              0080000080000000800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000}
            OnClick = sbUmUPClick
          end
          object sbRetUmUP: TSpeedButton
            Left = 8
            Top = 61
            Width = 29
            Height = 29
            Flat = True
            Glyph.Data = {
              76030000424D7603000000000000360000002800000011000000100000000100
              1800000000004003000000000000000000000000000000000000000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              8000008000008000008000008000000080000080000080000080000080000080
              000080000080B0D0B00000800000800000800000800000800000800000800000
              800000008000008000008000008000008000008000008071AA71026B03000080
              0000800000800000800000800000800000800000800000008000008000008000
              0080000080F0F6F0418D4107820C0D8019000080000080000080000080000080
              00008000008000008000000080000080000080000080D0E3D0227E23098E1110
              A81F0D8019000080000080000080000080000080000080000080000080000000
              80000080000080A0C6A01278130C9A1510A81F1AB2320D80190B7D140D80190E
              811B0F811B11831E13841F288D510000800000008000008071AA710275030CA0
              1510A81F1AB2321FB73C27BF4E2CC45734CC6735CD683FD77243DB764DE48022
              87410000800000008061A061027E030CA41510A81F1AB2321DB53926BE4C2CC4
              5734CC6735CD683FD77243DB764DE48053EA852489410000800000008090BD90
              03730610A41D1AB2321DB53926BE4C2CC45734CC6735CD683FD77243DB764DE4
              8053EA855AF28C258A4100008000000080000080B0D0B0036F1118A72F26BE4C
              2CC45734CC6727B34E1F9D3821A03B27A54028A6422EAC4730AE49278C410000
              8000000080000080000080D0E3D02A88361CA13734CC6735CD681F9D38000080
              0000800000800000800000800000800000800000800000008000008000008000
              0080D0E3D029864117932E3FD77221A03B000080000080000080000080000080
              00008000008000008000000080000080000080000080000080F0F6F05AA97111
              831E229D38000080000080000080000080000080000080000080000080000000
              800000800000800000800000800000800000808AC69F0F711100008000008000
              0080000080000080000080000080000080000000800000800000800000800000
              80000080000080000080B0D0B000008000008000008000008000008000008000
              0080000080000000800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000}
            OnClick = sbRetUmUPClick
          end
          object sbRetTodosUP: TSpeedButton
            Left = 8
            Top = 96
            Width = 29
            Height = 29
            Flat = True
            Glyph.Data = {
              B6040000424DB604000000000000360000002800000017000000100000000100
              1800000000008004000000000000000000000000000000000000000080000080
              0000800000800000800000800000800000800000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              0000000080000080000080000080000080000080000080000080B0D0B0000080
              000080000080000080000080B0D0B00000800000800000800000800000800000
              8000008000008000000000008000008000008000008000008000008000008071
              AA71026B0300008000008000008000008071AA71026B03000080000080000080
              0000800000800000800000800000800000000000800000800000800000800000
              80F0F6F0418D4107820C0D8019000080000080F0F6F0418D4107820C0D801900
              0080000080000080000080000080000080000080000080000000000080000080
              000080000080D0E3D0227E23098E1110A81F0D8019000080D0E3D0227E23098E
              1110A81F0D801900008000008000008000008000008000008000008000008000
              0000000080000080000080A0C6A01278130C9A1510A81F1AB2320D8019A0C6A0
              1278130C9A1510A81F1AB2320D80190B7D140D80190E811B0F811B11831E1384
              1F288D5100008000000000008000008071AA710275030CA01510A81F1AB2321F
              B73C71AA710275030CA01510A81F1AB2321FB73C27BF4E2CC45734CC6735CD68
              3FD77243DB764DE48022874100008000000000008061A061027E030CA41510A8
              1F1AB2321DB53961A061027E030CA41510A81F1AB2321DB53926BE4C2CC45734
              CC6735CD683FD77243DB764DE48053EA8524894100008000000000008090BD90
              03730610A41D1AB2321DB53926BE4C90BD9003730610A41D1AB2321DB53926BE
              4C2CC45734CC6735CD683FD77243DB764DE48053EA855AF28C258A4100008000
              0000000080000080B0D0B0036F1118A72F26BE4C2CC45734CC67B0D0B0036F11
              18A72F26BE4C2CC45734CC6727B34E1F9D3821A03B27A54028A6422EAC4730AE
              49278C41000080000000000080000080000080D0E3D02A88361CA13734CC6735
              CD681F9D38D0E3D02A88361CA13734CC6735CD681F9D38000080000080000080
              000080000080000080000080000080000000000080000080000080000080D0E3
              D029864117932E3FD77221A03B000080D0E3D029864117932E3FD77221A03B00
              0080000080000080000080000080000080000080000080000000000080000080
              000080000080000080F0F6F05AA97111831E229D38000080000080F0F6F05AA9
              7111831E229D3800008000008000008000008000008000008000008000008000
              00000000800000800000800000800000800000800000808AC69F0F7111000080
              0000800000800000808AC69F0F71110000800000800000800000800000800000
              8000008000008000000000008000008000008000008000008000008000008000
              0080B0D0B0000080000080000080000080000080B0D0B0000080000080000080
              0000800000800000800000800000800000000000800000800000800000800000
              8000008000008000008000008000008000008000008000008000008000008000
              0080000080000080000080000080000080000080000080000000}
            OnClick = sbRetTodosUPClick
          end
        end
        object TabControl4: TTabControl
          Left = 1
          Top = 1
          Width = 346
          Height = 495
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = 5592405
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Tabs.Strings = (
            'Opcionais cadastrados')
          TabIndex = 0
          object DBGrid7: TDBGrid
            Left = 4
            Top = 24
            Width = 338
            Height = 467
            Align = alClient
            Color = clCream
            DataSource = dsAux
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = 6447714
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDblClick = DBGrid7DblClick
            OnTitleClick = DBGrid7TitleClick
          end
        end
      end
      object Panel27: TPanel
        Left = 391
        Top = 0
        Width = 295
        Height = 330
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          295
          330)
        object Splitter6: TSplitter
          Left = 0
          Top = 156
          Width = 295
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object uu: TTabControl
          Left = 0
          Top = 16
          Width = 295
          Height = 140
          Align = alTop
          TabOrder = 0
          Tabs.Strings = (
            'Opcionais Selecionados')
          TabIndex = 0
          object DBGrid8: TDBGrid
            Left = 4
            Top = 24
            Width = 287
            Height = 112
            Align = alClient
            Color = clCream
            DataSource = dmPP.dsPropOpcional
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid8DblClick
            OnTitleClick = DBGrid8TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEMID'
                Title.Caption = 'ITEM ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOCOMPONENTEID'
                Title.Caption = 'MODELOCOMPONENTE ID'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 3552822
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 160
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOEQUIPAMENTOID'
                Title.Caption = 'MODELOEQUIPAMENTO ID'
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
                FieldName = 'VLRUNITARIOREVENDA'
                Title.Caption = 'VLR UNITARIO REVENDA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALREVENDA'
                Title.Caption = 'VLRTOTAL REVENDA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOFOB'
                Title.Caption = 'VLRUNITARIO FOB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALFOB'
                Title.Caption = 'VLR TOTAL FOB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIONET'
                Title.Caption = 'VLRUNITARIO NET'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALNET'
                Title.Caption = 'VLR TOTAL NET'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPOID'
                Title.Caption = 'L_GRUPO ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCR_GRUPO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRINGLES'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRPORTUGUES'
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
        object TabControl5: TTabControl
          Left = 1
          Top = 162
          Width = 293
          Height = 167
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          Tabs.Strings = (
            'Depend'#234'ncia')
          TabIndex = 0
          object DBGrid9: TDBGrid
            Left = 4
            Top = 24
            Width = 285
            Height = 139
            Align = alClient
            Color = clCream
            DataSource = dmPP.dsPropDependencia
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDblClick = DBGrid9DblClick
            OnTitleClick = DBGrid9TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'ITEMID'
                Title.Caption = 'ITEM ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELODEPENDENCIAID'
                Title.Caption = 'MODELODEPENDENCIA ID'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 3552822
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOCOMPONENTEID'
                Title.Caption = 'MODELOCOMPONENTE ID'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOEQUIPAMENTOID'
                Title.Caption = 'MODELOEQUIPAMENTO ID'
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
                FieldName = 'VLRUNITARIOREVENDA'
                Title.Caption = 'VLR UNITARIO REVENDA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALREVENDA'
                Title.Caption = 'VLR TOTAL REVENDA'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIOFOB'
                Title.Caption = 'VLR UNITARIO FOB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALFOB'
                Title.Caption = 'VLR TOTAL FOB'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRUNITARIONET'
                Title.Caption = 'VLR UNITARIO NET'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRTOTALNET'
                Title.Caption = 'VLR TOTAL NET'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPOID'
                Title.Caption = 'L_GRUPO ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCR_GRUPO'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRPORTUGUES'
                Title.Caption = 'L_DESCR PORTUGUES'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRINGLES'
                Title.Caption = 'L_DESCR INGLES'
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
        object PnEquipamento: TPanel
          Left = 0
          Top = 0
          Width = 295
          Height = 16
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = 6447714
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object tmbEdicaoLista3: TtmbEdicaoLista
        Left = 686
        Top = 1
        Width = 67
        Height = 120
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TtmbCriar = True
        TtmbClientDataSet = dmPP.cdsPropOpcional
        TtmbVertical = True
        TtmbTamMax = False
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'PropOpcional'
      end
      object tmbEdicaoLista4: TtmbEdicaoLista
        Left = 686
        Top = 322
        Width = 67
        Height = 120
        Anchors = [akRight, akBottom]
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
        TtmbClientDataSet = dmPP.cdsPropDependencia
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsDependencia
        TtmbFontDefaut = False
        TtmbDesativaInserir = True
        TtmbDireito = 'PropDependencia'
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Bonifica'#231#227'o'
      ImageIndex = 4
      object Label49: TLabel
        Left = 678
        Top = 0
        Width = 6
        Height = 497
        Align = alRight
        AutoSize = False
        Caption = '                            '
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 678
        Height = 497
        Align = alClient
        Color = clCream
        DataSource = dmPP.dsPropBonificacao
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid4DblClick
        OnTitleClick = DBGrid4TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Title.Caption = 'ITEM ID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 3552822
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BONIFICACAOID'
            Title.Caption = 'BONIFICA'#199#195'O ID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCR_BONIF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRBONIFICACAO'
            Title.Caption = 'VLR BONIFICA'#199#195'O'
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
      object tmbEdicaoLista5: TtmbEdicaoLista
        Left = 684
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmPP.cdsPropBonificacao
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPropBonificacao
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'PropBonificacao'
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Vendedores'
      ImageIndex = 5
      object Label50: TLabel
        Left = 678
        Top = 0
        Width = 6
        Height = 397
        Align = alRight
        AutoSize = False
        Caption = '                            '
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 678
        Height = 397
        Align = alClient
        Color = clCream
        DataSource = dmPP.dsPropVendedor
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid5DblClick
        OnTitleClick = DBGrid5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Title.Caption = 'ITEM ID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 3552822
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDORID'
            Title.Caption = 'VENDEDOR ID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FUNCAOVENDAID'
            Title.Caption = 'FUN'#199#195'O VENDA ID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_FUNCAOVENDA'
            Title.Caption = 'L_FUNCAO VENDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOME_FANTASIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NOME_VENDEDOR'
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
      object tmbEdicaoLista6: TtmbEdicaoLista
        Left = 684
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmPP.cdsPropVendedor
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPropVendedor
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'PropVendedor'
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'TRADE-IN'
      ImageIndex = 6
      object Label51: TLabel
        Left = 678
        Top = 0
        Width = 6
        Height = 497
        Align = alRight
        AutoSize = False
        Caption = '                            '
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 678
        Height = 497
        Align = alClient
        Color = clCream
        DataSource = dmPP.dsPropTradeIn
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid6DblClick
        OnTitleClick = DBGrid6TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEMID'
            Title.Caption = 'ITEM ID'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 3552822
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTRADEIN'
            Title.Caption = 'VLRTRADE IN'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
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
      object tmbEdicaoLista7: TtmbEdicaoLista
        Left = 684
        Top = 0
        Width = 67
        Height = 120
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
        TtmbClientDataSet = dmPP.cdsPropTradeIn
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsPropTradeIn
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'PropTradeIn'
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Totais da Proposta'
      ImageIndex = 6
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 751
        Height = 497
        Align = alClient
        Caption = 'Resumo'
        TabOrder = 0
        object Label58: TLabel
          Left = 8
          Top = 21
          Width = 122
          Height = 13
          Caption = 'Valor Total FOB de Venda'
          FocusControl = DBEdit41
        end
        object Label59: TLabel
          Left = 8
          Top = 46
          Width = 97
          Height = 13
          Caption = 'Valor Total Revenda'
          FocusControl = DBEdit42
        end
        object Label60: TLabel
          Left = 8
          Top = 71
          Width = 73
          Height = 13
          Caption = 'Valor Total NET'
          FocusControl = DBEdit43
        end
        object Label61: TLabel
          Left = 8
          Top = 97
          Width = 99
          Height = 13
          Caption = 'Valor Total Desconto'
          FocusControl = DBEdit44
        end
        object Label62: TLabel
          Left = 8
          Top = 122
          Width = 102
          Height = 13
          Caption = 'Valor Total TRADE-IN'
          FocusControl = DBEdit45
        end
        object Label64: TLabel
          Left = 8
          Top = 147
          Width = 106
          Height = 13
          Caption = 'Valor Liquido Proposta'
          FocusControl = DBEdit52
        end
        object DBEdit41: TDBEdit
          Left = 159
          Top = 20
          Width = 181
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRTOTALFOB'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
        end
        object DBEdit42: TDBEdit
          Left = 159
          Top = 45
          Width = 181
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRTOTALREVENDA'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
        end
        object DBEdit43: TDBEdit
          Left = 159
          Top = 70
          Width = 181
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRTOTALNET'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 2
        end
        object DBEdit44: TDBEdit
          Left = 159
          Top = 95
          Width = 181
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRTOTALDESCONTO'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit45: TDBEdit
          Left = 159
          Top = 120
          Width = 181
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRTOTALTRADEIN'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 4
        end
        object DBEdit52: TDBEdit
          Left = 159
          Top = 145
          Width = 181
          Height = 21
          Color = clInactiveBorder
          DataField = 'VLRLIQUIDOPROPOSTA'
          DataSource = dmPP.dsProposta
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Detalhes do Equipamento'
      ImageIndex = 7
      object cxGrid1: TcxGrid
        Left = 200
        Top = 1
        Width = 751
        Height = 264
        TabOrder = 0
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmPP.dsPropOpcional
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropComposicao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView1PROPOSTAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PROPOSTAID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1MODELOEQUIPAMENTOID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELOEQUIPAMENTOID'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1ITEMID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ITEMID'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1MODELOCOMPONENTEID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELOCOMPONENTEID'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L_DESCRPORTUGUES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L_DESCRINGLES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L_GRUPOID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_GRUPOID'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1L_DESCR_GRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1QUANTIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1VLRUNITARIOREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1VLRUNITARIOFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1VLRUNITARIONET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1VLRTOTALREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1VLRTOTALFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1VLRTOTALNET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1USUARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
        end
        object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropOpcional
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView2MODELOCOMPONENTEID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELOCOMPONENTEID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2L_DESCRPORTUGUES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2L_DESCRINGLES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2L_GRUPOID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_GRUPOID'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2L_DESCR_GRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2QUANTIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2VLRUNITARIOREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2VLRUNITARIOFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2VLRUNITARIONET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2VLRTOTALREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2VLRTOTALFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2VLRTOTALNET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView2USUARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGrid1DBBandedTableView3: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropDependencia
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGrid1DBBandedTableView3MODELODEPENDENCIAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELODEPENDENCIAID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3ITEMID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ITEMID'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3L_DESCRPORTUGUES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3L_DESCRINGLES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3L_GRUPOID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_GRUPOID'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3L_DESCR_GRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3QUANTIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3VLRUNITARIOREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3VLRUNITARIOFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3VLRUNITARIONET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3VLRTOTALREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3VLRTOTALFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3VLRTOTALNET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView3USUARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
        object cxGrid1DBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmPP.dsPropComposicao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsData.Editing = False
          OptionsSelection.HideSelection = True
          OptionsView.Indicator = True
          object cxGrid1DBTableView2MODELOCOMPONENTEID1: TcxGridDBColumn
            Caption = 'MODELO COMPONENTE ID'
            DataBinding.FieldName = 'MODELOCOMPONENTEID'
          end
          object cxGrid1DBTableView2QUANTIDADE1: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2VLRUNITARIOREVENDA1: TcxGridDBColumn
            Caption = 'VLR UNITARIO REVENDA'
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2VLRTOTALREVENDA1: TcxGridDBColumn
            Caption = 'VLR TOTAL REVENDA'
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2VLRUNITARIOFOB1: TcxGridDBColumn
            Caption = 'VLR UNITARIO FOB'
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2VLRTOTALFOB1: TcxGridDBColumn
            Caption = 'VLR TOTAL FOB'
            DataBinding.FieldName = 'VLRTOTALFOB'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2VLRUNITARIONET1: TcxGridDBColumn
            Caption = 'VLR UNITARIO NET'
            DataBinding.FieldName = 'VLRUNITARIONET'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2VLRTOTALNET1: TcxGridDBColumn
            Caption = 'VLR TOTAL NET'
            DataBinding.FieldName = 'VLRTOTALNET'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = False
            Width = 64
          end
          object cxGrid1DBTableView2L_GRUPOID1: TcxGridDBColumn
            Caption = 'L_GRUPO ID'
            DataBinding.FieldName = 'L_GRUPOID'
            Width = 64
          end
          object cxGrid1DBTableView2L_DESCR_GRUPO1: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Width = 64
          end
          object cxGrid1DBTableView2L_DESCRPORTUGUES1: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Width = 64
          end
          object cxGrid1DBTableView2L_DESCRINGLES1: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Width = 64
          end
          object cxGrid1DBTableView2USUARIO1: TcxGridDBColumn
            DataBinding.FieldName = 'USUARIO'
            Width = 64
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 193
        Height = 497
        Align = alLeft
        TabOrder = 1
        RootLevelOptions.DetailTabsPosition = dtpTop
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmPP.dsPropEquipamento
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGridDBTableView1MODELOEQUIPAMENTOID: TcxGridDBColumn
            DataBinding.FieldName = 'MODELOEQUIPAMENTOID'
            Width = 185
          end
          object cxGridDBTableView1L_GRUPOID: TcxGridDBColumn
            DataBinding.FieldName = 'L_GRUPOID'
          end
          object cxGridDBTableView1ITEMID: TcxGridDBColumn
            DataBinding.FieldName = 'ITEMID'
          end
          object cxGridDBTableView1L_DESCR_PORT: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCR_PORT'
            Width = 206
          end
          object cxGridDBTableView1QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE'
          end
          object cxGridDBTableView1VLRUNITARIOREVENDA: TcxGridDBColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
          end
          object cxGridDBTableView1VLRUNITARIOFOB: TcxGridDBColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
          end
          object cxGridDBTableView1VLRUNITARIONET: TcxGridDBColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
          end
          object cxGridDBTableView1VLRTOTALREVENDA: TcxGridDBColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
          end
          object cxGridDBTableView1VLRTOTALFOB: TcxGridDBColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
          end
          object cxGridDBTableView1VLRTOTALNET: TcxGridDBColumn
            DataBinding.FieldName = 'VLRTOTALNET'
          end
          object cxGridDBTableView1VLRLIQUIDOREVENDA: TcxGridDBColumn
            DataBinding.FieldName = 'VLRLIQUIDOREVENDA'
          end
          object cxGridDBTableView1VLRDESCONTO: TcxGridDBColumn
            DataBinding.FieldName = 'VLRDESCONTO'
          end
          object cxGridDBTableView1PORCDESCONTO: TcxGridDBColumn
            DataBinding.FieldName = 'PORCDESCONTO'
          end
          object cxGridDBTableView1OBSERVACAO: TcxGridDBColumn
            DataBinding.FieldName = 'OBSERVACAO'
          end
          object cxGridDBTableView1REVISAOID: TcxGridDBColumn
            DataBinding.FieldName = 'REVISAOID'
          end
          object cxGridDBTableView1L_DESCR_INGLES: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCR_INGLES'
          end
          object cxGridDBTableView1L_DESCRICAO_EQUIPAMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCRICAO_EQUIPAMENTO'
          end
          object cxGridDBTableView1USUARIO: TcxGridDBColumn
            DataBinding.FieldName = 'USUARIO'
          end
        end
        object cxGridDBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropComposicao
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGridDBBandedColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PROPOSTAID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELOEQUIPAMENTOID'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ITEMID'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELOCOMPONENTEID'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn5: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn7: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_GRUPOID'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn8: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn9: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn10: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn11: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn12: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn13: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn14: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn15: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn16: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView2: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropOpcional
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGridDBBandedColumn17: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELOCOMPONENTEID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn18: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn19: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn20: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_GRUPOID'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn21: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn22: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn23: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn24: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn25: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn26: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn27: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn28: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn29: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
        end
        object cxGridDBBandedTableView3: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropDependencia
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGridDBBandedColumn30: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELODEPENDENCIAID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn31: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ITEMID'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn32: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn33: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn34: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_GRUPOID'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn35: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn36: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn37: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn38: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn39: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn40: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn41: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn42: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn43: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 200
        Top = 272
        Width = 553
        Height = 200
        TabOrder = 2
        object cxGrid3DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dmPP.dsPropOpcional
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsSelection.HideSelection = True
          OptionsView.Indicator = True
          object cxGrid3DBTableView1MODELOCOMPONENTEID: TcxGridDBColumn
            DataBinding.FieldName = 'MODELOCOMPONENTEID'
          end
          object cxGrid3DBTableView1L_DESCRPORTUGUES: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
          end
          object cxGrid3DBTableView1L_DESCRINGLES: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCRINGLES'
          end
          object cxGrid3DBTableView1L_GRUPOID: TcxGridDBColumn
            DataBinding.FieldName = 'L_GRUPOID'
          end
          object cxGrid3DBTableView1L_DESCR_GRUPO: TcxGridDBColumn
            DataBinding.FieldName = 'L_DESCR_GRUPO'
          end
          object cxGrid3DBTableView1QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'QUANTIDADE'
          end
          object cxGrid3DBTableView1VLRUNITARIOREVENDA: TcxGridDBColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
          end
          object cxGrid3DBTableView1VLRUNITARIOFOB: TcxGridDBColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
          end
          object cxGrid3DBTableView1VLRUNITARIONET: TcxGridDBColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
          end
          object cxGrid3DBTableView1VLRTOTALREVENDA: TcxGridDBColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
          end
          object cxGrid3DBTableView1VLRTOTALFOB: TcxGridDBColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
          end
          object cxGrid3DBTableView1VLRTOTALNET: TcxGridDBColumn
            DataBinding.FieldName = 'VLRTOTALNET'
          end
          object cxGrid3DBTableView1USUARIO: TcxGridDBColumn
            DataBinding.FieldName = 'USUARIO'
          end
        end
        object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = dmPP.dsPropDependencia
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Bands = <
            item
            end>
          object cxGrid3DBBandedTableView1MODELODEPENDENCIAID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELODEPENDENCIAID'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1ITEMID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ITEMID'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1L_DESCRPORTUGUES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'L_DESCRPORTUGUES'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1QUANTIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QUANTIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1VLRUNITARIOREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1VLRUNITARIOFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIOFOB'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1VLRUNITARIONET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRUNITARIONET'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1VLRTOTALREVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALREVENDA'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1VLRTOTALFOB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALFOB'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1VLRTOTALNET: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLRTOTALNET'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGrid3DBBandedTableView1USUARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'USUARIO'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
          object cxGrid3Level2: TcxGridLevel
            GridView = cxGrid3DBBandedTableView1
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 554
    Width = 759
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 759
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
          Width = 537
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 64
        end>
      FixedSize = True
      TtmbCria = True
      TtmbClientDataSet = dmIT.cdsProcesso
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 586
    Width = 759
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
    Width = 759
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = tmbEdicaoTop1
        ImageIndex = -1
        MinHeight = 29
        Width = 759
      end>
    EdgeBorders = []
    object tmbEdicaoTop1: TtmbEdicaoTop
      Tag = 255
      Left = 9
      Top = 0
      Width = 746
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 746
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
    object Panel30: TPanel
      Left = 9
      Top = 0
      Width = 220
      Height = 27
      BevelOuter = bvNone
      Constraints.MaxWidth = 220
      TabOrder = 2
      object Label66: TLabel
        Left = 3
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Gerados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = 6447714
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 195
        Top = 3
        Width = 22
        Height = 22
        Flat = True
        Glyph.Data = {
          96040000424D9604000000000000360000002800000012000000140000000100
          1800000000006004000000000000000000000000000000000000D8E9ECD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC00000000000000000000000000000000
          0000000000000000000000000000000000000000D8E9ECD8E9EC000000000000
          0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000D8E9EC0000000000000000000000D8E9ECD8E9EC
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          00000000000000000000000000D8E9EC0000D8E9ECD8E9EC000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000808080C0C0C0C0C0C080808000000000
          0000D8E9ECD8E9EC0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000808080C0C0C0C0C0C0FFFF00808080FFFFFF000000D8E9ECD8E9EC
          0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0
          C0C0C0C0C0C0C0C0C0808080C0C0C0000000D8E9ECD8E9EC0000D8E9ECD8E9EC
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFF00C0C0C0C0C0
          C0808080C0C0C0000000D8E9ECD8E9EC0000D8E9ECD8E9EC000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000808080FFFF00FFFF00C0C0C0808080FFFFFF00
          0000D8E9ECD8E9EC0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000808080C0C0C0C0C0C0808080000000D8E9ECD8E9ECD8E9EC
          0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000000000D8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000D8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000D8E9ECD8
          E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000C0C0C0000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
          0000D8E9ECD8E9EC000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC
          000000000000000000000000000000000000000000000000000000D8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9EC0000E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2
          EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1E2EFF1
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      end
      object cbCartasGeradas: TComboBox
        Left = 66
        Top = 4
        Width = 127
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 746
      Height = 29
      Hint = 'Destino: S:\GSI\DOC..'
      ActionManager = actmngManutencao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      ParentShowHint = False
      ShowHint = True
      Spacing = 0
    end
  end
  object actmngManutencao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actImpressao
            Caption = '&Gerar Proposta'
            ImageIndex = 0
          end
          item
            Action = actConfig
            Caption = '&Conf. P'#225'gina'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 712
    Top = 20
    StyleName = 'XP Style'
    object actImpressao: TAction
      Category = 'Ferramentas'
      Caption = 'Gerar Proposta'
      Hint = 'Gerar proposta de venda'
      ImageIndex = 0
    end
    object actConfig: TAction
      Category = 'Ferramentas'
      Caption = 'Conf. P'#225'gina'
      ImageIndex = 1
      OnExecute = actConfigExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 660
    Top = 20
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000800000008000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080000000808080000000000080808000800000008000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008000000080000000808080008080800080000000FF0000008000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080008000000080000000FF0000008080800080000000FF00
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FF0000008080800080808000FF0000008000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FF0000008080800080000000FF00
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080000000800000008000
      0000800000008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF000000FF00
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FF00
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFE3FFFF00000000FF8081D700000000FEC1FFD700000000
      F881FFD700000000F00181D7000000000001FF17000000001201FF1700000000
      12018117000000007F81FF03000000001241FFFF000000001241800300000000
      7FF9FFFF000000001247FFFF000000001247F803000000000007FFFF00000000
      0007FFFF0000000000000000000000000000000000000000000000000000}
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cdsAuxField1'
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 566
    Top = 22
  end
  object dsAux: TDataSource
    DataSet = cdsAux
    Left = 607
    Top = 22
  end
end
