object frmProcesso: TfrmProcesso
  Left = 635
  Top = 73
  Caption = 'Pedido de Importa'#231#227'o'
  ClientHeight = 506
  ClientWidth = 733
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 105
    Width = 733
    Height = 348
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados do Processo'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 725
        Height = 105
        Align = alTop
        Caption = ' Dados do Pedido '
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 67
          Width = 47
          Height = 13
          Caption = 'Cliente ID'
        end
        object Label7: TLabel
          Left = 8
          Top = 41
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit7
        end
        object Label28: TLabel
          Left = 8
          Top = 19
          Width = 68
          Height = 13
          Caption = 'Importador ID'
        end
        object DBEdit6: TDBEdit
          Left = 184
          Top = 63
          Width = 401
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_NOMECLIENTE'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 104
          Top = 39
          Width = 481
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_ENDERECOIMPORTADOR'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 2
        end
        object GroupBox3: TGroupBox
          Left = 588
          Top = 10
          Width = 133
          Height = 91
          Caption = ' Libera'#231#227'o '
          Color = clBtnFace
          ParentColor = False
          TabOrder = 3
          object Label17: TLabel
            Left = 9
            Top = 54
            Width = 72
            Height = 13
            Caption = 'Data Libera'#231#227'o'
            FocusControl = DBEdit22
          end
          object DBCheckBox2: TDBCheckBox
            Left = 8
            Top = 16
            Width = 117
            Height = 17
            Caption = 'Libera'#231#227'o da Chefia'
            DataField = 'LIBERACHEFIA'
            DataSource = dmIT.dsProcesso
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBEdit21: TDBEdit
            Left = 8
            Top = 32
            Width = 117
            Height = 20
            TabStop = False
            AutoSize = False
            Color = clInactiveBorder
            DataField = 'NOMELIBERANTE'
            DataSource = dmIT.dsProcesso
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 8
            Top = 66
            Width = 117
            Height = 20
            TabStop = False
            AutoSize = False
            Color = clInactiveBorder
            DataField = 'DATALIBERACAO'
            DataSource = dmIT.dsProcesso
            ReadOnly = True
            TabOrder = 2
          end
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 104
          Top = 63
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg2CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CLIENTEID'
          DataSource = dmIT.dsProcesso
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwDBComboDlg12: TwwDBComboDlg
          Left = 104
          Top = 15
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg12CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'IMPORTADORID'
          DataSource = dmIT.dsProcesso
          TabOrder = 4
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit16: TDBEdit
          Left = 184
          Top = 15
          Width = 401
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_NOMEIMPORTADOR'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 5
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 105
        Width = 725
        Height = 215
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'Follow-Up'
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 717
            Height = 187
            Align = alClient
            Caption = ' Dados do Follow-Up '
            TabOrder = 0
            object Label10: TLabel
              Left = 8
              Top = 20
              Width = 55
              Height = 13
              Caption = 'Fornecedor'
            end
            object Label18: TLabel
              Left = 8
              Top = 44
              Width = 87
              Height = 13
              Caption = 'Termo Pagamento'
            end
            object Label16: TLabel
              Left = 8
              Top = 75
              Width = 29
              Height = 13
              Caption = 'Jap'#227'o'
              FocusControl = DBEdit25
            end
            object Label19: TLabel
              Left = 188
              Top = 68
              Width = 87
              Height = 13
              Caption = 'Dt. Prev. Embarq.'
            end
            object Label20: TLabel
              Left = 188
              Top = 89
              Width = 70
              Height = 13
              Caption = 'Local Chegada'
            end
            object Label25: TLabel
              Left = 8
              Top = 63
              Width = 71
              Height = 13
              Caption = 'Num. Processo'
              FocusControl = DBEdit25
            end
            object Label26: TLabel
              Left = 188
              Top = 112
              Width = 68
              Height = 13
              Caption = 'VIA Embarque'
            end
            object Label1: TLabel
              Left = 8
              Top = 94
              Width = 92
              Height = 13
              Caption = 'Num Ref. Conserto'
              FocusControl = DBEdit1
            end
            object Label27: TLabel
              Left = 188
              Top = 133
              Width = 51
              Height = 26
              Caption = 'Embarque Marca'#231#227'o'
              FocusControl = DBEdit14
              WordWrap = True
            end
            object Label30: TLabel
              Left = 188
              Top = 158
              Width = 52
              Height = 26
              Caption = 'Local de Fabrica'#231#227'o'
              FocusControl = DBEdit24
              WordWrap = True
            end
            object DBEdit23: TDBEdit
              Left = 184
              Top = 16
              Width = 401
              Height = 20
              TabStop = False
              AutoSize = False
              Color = clInactiveBorder
              DataField = 'L_NOMEFORNECEDOR'
              DataSource = dmIT.dsProcesso
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit25: TDBEdit
              Left = 104
              Top = 64
              Width = 77
              Height = 20
              AutoSize = False
              DataField = 'NUMPROCESSOJAPAO'
              DataSource = dmIT.dsProcesso
              TabOrder = 4
            end
            object wwDBDateTimePicker2: TwwDBDateTimePicker
              Left = 284
              Top = 64
              Width = 89
              Height = 20
              AutoSize = False
              CalendarAttributes.Font.Charset = DEFAULT_CHARSET
              CalendarAttributes.Font.Color = clWindowText
              CalendarAttributes.Font.Height = -11
              CalendarAttributes.Font.Name = 'MS Sans Serif'
              CalendarAttributes.Font.Style = []
              DataField = 'DATAPREVISAO'
              DataSource = dmIT.dsProcesso
              Epoch = 1950
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ShowButton = True
              TabOrder = 5
            end
            object DBEdit26: TDBEdit
              Left = 184
              Top = 40
              Width = 401
              Height = 20
              TabStop = False
              AutoSize = False
              Color = clInactiveBorder
              DataField = 'L_DESCRICAOTERMOPAGTO'
              DataSource = dmIT.dsProcesso
              ReadOnly = True
              TabOrder = 3
            end
            object DBCheckBox3: TDBCheckBox
              Left = 596
              Top = 18
              Width = 113
              Height = 17
              Caption = 'Cobertura Cambial'
              DataField = 'COBERTURACAMBIAL'
              DataSource = dmIT.dsProcesso
              TabOrder = 11
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object wwDBComboDlg3: TwwDBComboDlg
              Left = 104
              Top = 16
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg3CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'FORNECEDORID'
              DataSource = dmIT.dsProcesso
              TabOrder = 0
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object wwDBComboDlg4: TwwDBComboDlg
              Left = 104
              Top = 40
              Width = 77
              Height = 20
              OnCustomDlg = wwDBComboDlg4CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'TERMOPAGTOID'
              DataSource = dmIT.dsProcesso
              TabOrder = 2
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBCheckBox4: TDBCheckBox
              Left = 596
              Top = 42
              Width = 113
              Height = 17
              Caption = 'Agrupa Ncm'
              DataField = 'AGRUPANCM'
              DataSource = dmIT.dsProcesso
              TabOrder = 12
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object DBEdit1: TDBEdit
              Left = 104
              Top = 94
              Width = 77
              Height = 20
              AutoSize = False
              DataField = 'NUMREFERCONSERTO'
              DataSource = dmIT.dsProcesso
              TabOrder = 6
            end
            object wwDBComboDlg10: TwwDBComboDlg
              Left = 284
              Top = 87
              Width = 65
              Height = 20
              OnCustomDlg = wwDBComboDlg10CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'LOCALCHEGADAID'
              DataSource = dmIT.dsProcesso
              TabOrder = 7
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit10: TDBEdit
              Left = 350
              Top = 87
              Width = 290
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAOLOCALCHEGADA'
              DataSource = dmIT.dsProcesso
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
            object DBEdit12: TDBEdit
              Left = 350
              Top = 111
              Width = 290
              Height = 21
              TabStop = False
              Color = clScrollBar
              DataField = 'L_DESCRICAOVIAEMBARQUE'
              DataSource = dmIT.dsProcesso
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object wwDBComboDlg11: TwwDBComboDlg
              Left = 284
              Top = 111
              Width = 65
              Height = 20
              OnCustomDlg = wwDBComboDlg11CustomDlg
              ShowButton = True
              Style = csDropDown
              AutoSize = False
              DataField = 'VIAEMBARQUEID'
              DataSource = dmIT.dsProcesso
              TabOrder = 9
              WordWrap = False
              UnboundDataType = wwDefault
            end
            object DBEdit14: TDBEdit
              Left = 284
              Top = 138
              Width = 356
              Height = 20
              TabStop = False
              AutoSize = False
              DataField = 'EMBARQUEMARCACAO'
              DataSource = dmIT.dsProcesso
              TabOrder = 13
            end
            object DBEdit24: TDBEdit
              Left = 284
              Top = 163
              Width = 356
              Height = 20
              TabStop = False
              AutoSize = False
              DataField = 'LOCALFABRICACAO'
              DataSource = dmIT.dsProcesso
              TabOrder = 14
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Observa'#231'ao'
          ImageIndex = 1
          object Label9: TLabel
            Left = 1
            Top = 3
            Width = 96
            Height = 13
            Caption = 'Observa'#231#245'es Gerais'
          end
          object Label31: TLabel
            Left = 1
            Top = 75
            Width = 90
            Height = 13
            Caption = 'Observa'#231#227'o de PO'
          end
          object DBMemo1: TDBMemo
            Left = 1
            Top = 22
            Width = 714
            Height = 51
            DataField = 'OBSERVACAO'
            DataSource = dmIT.dsProcesso
            TabOrder = 0
          end
          object DBMemo2: TDBMemo
            Left = 1
            Top = 88
            Width = 711
            Height = 98
            DataField = 'OBSERVACAOPO'
            DataSource = dmIT.dsProcesso
            TabOrder = 1
          end
        end
      end
    end
    object tbsTmbj: TTabSheet
      Caption = 'TMBJ'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 725
        Height = 320
        Align = alClient
        Caption = ' Dados do TMBJ '
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 18
          Width = 86
          Height = 13
          Caption = 'Contato no Jap'#227'o'
        end
        object Label5: TLabel
          Left = 8
          Top = 42
          Width = 70
          Height = 13
          Caption = 'Tipo Categoria'
        end
        object Label11: TLabel
          Left = 8
          Top = 66
          Width = 78
          Height = 13
          Caption = 'Raz'#227'o Exig'#234'ncia'
        end
        object Label13: TLabel
          Left = 8
          Top = 90
          Width = 53
          Height = 13
          Caption = 'Frequ'#234'ncia'
        end
        object Label12: TLabel
          Left = 8
          Top = 114
          Width = 84
          Height = 13
          Caption = 'C'#243'digo Embarque'
          FocusControl = DBEdit17
        end
        object Label14: TLabel
          Left = 192
          Top = 114
          Width = 63
          Height = 13
          Caption = 'Num. Agente'
          FocusControl = DBEdit18
        end
        object Label15: TLabel
          Left = 364
          Top = 114
          Width = 58
          Height = 13
          Caption = 'Pa'#237's Destino'
          FocusControl = DBEdit19
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 104
          Top = 134
          Width = 449
          Height = 37
          Caption = ' Tipo de Servi'#231'o '
          Columns = 3
          DataField = 'TIPOSERVICO'
          DataSource = dmIT.dsProcesso
          Items.Strings = (
            'Parts Request'
            'Repair Order'
            'None')
          ParentBackground = True
          TabOrder = 11
          Values.Strings = (
            'A'
            'B'
            'C')
        end
        object DBEdit9: TDBEdit
          Left = 184
          Top = 14
          Width = 369
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_DESTINATARIOJAPAO'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 1
        end
        object DBRadioGroup3: TDBRadioGroup
          Left = 104
          Top = 174
          Width = 449
          Height = 37
          Caption = ' Tipo de Requisi'#231#227'o '
          Columns = 3
          DataField = 'TIPOREQUISICAO'
          DataSource = dmIT.dsProcesso
          Items.Strings = (
            'Repair'
            'Replacement'
            'Credit')
          ParentBackground = True
          TabOrder = 12
          Values.Strings = (
            'A'
            'B'
            'C')
        end
        object DBEdit11: TDBEdit
          Left = 184
          Top = 38
          Width = 369
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_DESCRICAOTIPOCATEGORIA'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 184
          Top = 62
          Width = 369
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_DESCRICAORAZAOEXIGENCIA'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 184
          Top = 86
          Width = 369
          Height = 20
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'L_DESCRICAOFREQUENCIA'
          DataSource = dmIT.dsProcesso
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit17: TDBEdit
          Left = 104
          Top = 110
          Width = 77
          Height = 20
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'NUMREMESSA'
          DataSource = dmIT.dsProcesso
          TabOrder = 8
        end
        object DBEdit18: TDBEdit
          Left = 260
          Top = 110
          Width = 97
          Height = 20
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'NUMAGENTE'
          DataSource = dmIT.dsProcesso
          TabOrder = 9
        end
        object DBEdit19: TDBEdit
          Left = 428
          Top = 110
          Width = 125
          Height = 20
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'PAISDESTINO'
          DataSource = dmIT.dsProcesso
          TabOrder = 10
        end
        object DBCheckBox1: TDBCheckBox
          Left = 560
          Top = 16
          Width = 77
          Height = 17
          Caption = 'Uso M'#233'dico'
          DataField = 'USOMEDICO'
          DataSource = dmIT.dsProcesso
          TabOrder = 13
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object GroupBox5: TGroupBox
          Left = 560
          Top = 33
          Width = 157
          Height = 178
          Caption = ' Perguntas '
          TabOrder = 14
          object DBRadioGroup4: TDBRadioGroup
            Left = 4
            Top = 15
            Width = 149
            Height = 32
            Caption = ' 1'#170' '
            Columns = 2
            DataField = 'PERGUNTA1'
            DataSource = dmIT.dsProcesso
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            TabOrder = 0
            Values.Strings = (
              '1'
              '0')
          end
          object DBRadioGroup5: TDBRadioGroup
            Left = 4
            Top = 47
            Width = 149
            Height = 32
            Caption = ' 2'#170' '
            Columns = 2
            DataField = 'PERGUNTA2'
            DataSource = dmIT.dsProcesso
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            TabOrder = 1
            Values.Strings = (
              '1'
              '0')
          end
          object DBRadioGroup6: TDBRadioGroup
            Left = 4
            Top = 79
            Width = 149
            Height = 32
            Caption = ' 3'#170' '
            Columns = 2
            DataField = 'PERGUNTA3'
            DataSource = dmIT.dsProcesso
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            TabOrder = 2
            Values.Strings = (
              '1'
              '0')
          end
          object DBRadioGroup7: TDBRadioGroup
            Left = 4
            Top = 111
            Width = 149
            Height = 32
            Caption = ' 4'#170' '
            Columns = 2
            DataField = 'PERGUNTA4'
            DataSource = dmIT.dsProcesso
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            TabOrder = 3
            Values.Strings = (
              '1'
              '0')
          end
          object DBRadioGroup8: TDBRadioGroup
            Left = 4
            Top = 143
            Width = 149
            Height = 32
            Caption = ' 5'#170' '
            Columns = 2
            DataField = 'PERGUNTA5'
            DataSource = dmIT.dsProcesso
            Items.Strings = (
              'Sim'
              'N'#227'o')
            ParentBackground = True
            TabOrder = 4
            Values.Strings = (
              '1'
              '0')
          end
        end
        object wwDBComboDlg5: TwwDBComboDlg
          Left = 104
          Top = 14
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg5CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CONTATOJAPAOID'
          DataSource = dmIT.dsProcesso
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwDBComboDlg6: TwwDBComboDlg
          Left = 104
          Top = 38
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg6CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'TIPOCATEGORIAID'
          DataSource = dmIT.dsProcesso
          TabOrder = 2
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwDBComboDlg7: TwwDBComboDlg
          Left = 104
          Top = 62
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg7CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'RAZAOEXIGENCIAID'
          DataSource = dmIT.dsProcesso
          TabOrder = 4
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object wwDBComboDlg8: TwwDBComboDlg
          Left = 104
          Top = 86
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg8CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'FREQUENCIAID'
          DataSource = dmIT.dsProcesso
          TabOrder = 6
          WordWrap = False
          UnboundDataType = wwDefault
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens do Processo'
      ImageIndex = 2
      object tmbEdicaoLista1: TtmbEdicaoLista
        Left = 658
        Top = 0
        Width = 67
        Height = 320
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
        TtmbClientDataSet = dmIT.cdsProcessoItem
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmIT.dsProcessoItem
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'ProcessoItem'
        object BitBtn1: TBitBtn
          Left = 0
          Top = 120
          Width = 118
          Height = 57
          Action = actCadastrarProduto
          Caption = 'Cadastrar Produto'
          TabOrder = 0
          WordWrap = True
          Glyph.Data = {
            F6040000424DF604000000000000360000002800000010000000130000000100
            200000000000C004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00A57B7300A57B7300A57B7300A57B7300A57B7300A57B
            7300A57B7300A57B7300A57B7300A57B7300A57B73008C5A5A00FF00FF00FF00
            FF00FF00FF00FF00FF00A57B7300E7BDBD00F7BDBD00EFBDB500EFBDB500EFBD
            B500EFBDB500EFBDB500EFBDB500EFBDB500E7B594008C5A5A00FF00FF00FF00
            FF00FF00FF00FF00FF00C6948400EFEFE700FFFFF700FFF7EF00FFF7EF00FFF7
            EF00FFF7E700FFEFDE00FFEFDE00FFEFDE00FFD6CE00946B6300FF00FF00FF00
            FF00FF00FF00FF00FF00C6948400EFEFEF00FFFFF700FFFFF700FFF7EF00FFF7
            EF00FFF7E700FFEFDE00FFEFDE00FFEFDE00FFD6CE009C6B6B00A57B7300A57B
            7300A57B7300A57B7300CE9C8400EFEFEF00187B1800529C5A00FFFFF700FFF7
            EF00FFF7EF00FFF7E700FFEFDE00FFEFDE00FFD6CE009C6B6B00A57B7300E7BD
            BD00F7BDBD00EFBDB500CE9C8400EFEFEF00187B180029B54A00529C5A00FFFF
            F700FFF7EF00FFF7E700FFF7E700FFF7E700FFCECE009C6B6B00BD8C7B00E7E7
            E700FFF7EF00739C7300187B1800187B1800187B180031CE630029B54A00529C
            5A00FFFFF700FFF7EF00FFF7EF00FFF7E700FFC6C6009C736B00C6948400EFEF
            E700529452000894100029C64A0029C64A0031CE6B0042DE73004AE77B004ADE
            7B0031843100FFF7EF00FFF7EF00FFF7EF00FFBDB5009C737300C69484008CB5
            8C000894180029C64A00088418000884180039CE63004AE7840052EF8400218C
            2100FFFFF700FFE7D600FFBDBD00FFADAD00FFA5A500A5737300CE9C8400218C
            290018A5290008841800DEAD8C00FFFFFF00187B180042CE6B00428C3100FFFF
            F700FFFFF700E7C6AD00E7A59C00E79C9400E79C8C00A5737300CE9C84001094
            210042944A00FFFFFF00DEAD8C00F7F7F7004294420084B56300FFFFFF00FFFF
            FF00FFFFFF00B5847300B5847300B5847300B5847300A57B7300CEA584000884
            1800FFFFFF00FFFFFF00E7B58C00FFFFFF008C9C7B00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00B5847300FFBD5A00E7A56B00CE9C8400EFD6C600D6A58C00187B
            1800FFFFFF00FFFFFF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00B5847300E7AD8400D69C8400EFDED600FF00FF00D6A58C0084A5
            5200ADCE9C00FFFFFF00E7B58C00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00B5847300D6A58400EFDED600FF00FF00FF00FF00DEAD8C00FFFF
            FF00BDBD8C00FFFFFF00EFBD9400DEAD8400DEAD8400DEAD8400DEAD8400DEAD
            8400DEAD8400B5847300F7DED600FF00FF00FF00FF00FF00FF00E7B58C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5847300FFBD5A00E7A5
            6B00CE9C8400EFD6C600FF00FF00FF00FF00FF00FF00FF00FF00E7B58C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5847300E7AD8400D69C
            8400EFDED600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00E7B58C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5847300D6A58400EFDE
            D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EFBD9400DEAD
            8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B5847300F7DED600FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
      object dbgrdPadraoPesquisa: TDBGrid
        Left = 0
        Top = 0
        Width = 658
        Height = 320
        Align = alClient
        Color = clCream
        Ctl3D = True
        DataSource = dmIT.dsProcessoItem
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
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEMID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REGANVISA'
            Width = 157
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARTNUMBERID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PARTNUMBERFABID'
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOINGLES'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOPORTUGUES'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPOID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDPEDIDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDLIBERADA'
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
            FieldName = 'DATACONVERSAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRYEN'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPREVISAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAEMBARQUE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACHEGADA'
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
            FieldName = 'NUMCONHECEMBARQUE'
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
            FieldName = 'MODELOID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDOORIGINAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINSTALEQUIP'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAFALHAEQUIP'
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
            FieldName = 'DECLARACAOID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DIID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_NFEID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DATAEMISSAONFEID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DATAENTRADANFEID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRIORIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TSBREFID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEUNIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RETORNAPECADEF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATADEVOLUCAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAPREVRETORNO'
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
            FieldName = 'L_SIGLA'
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 29
    Width = 733
    Height = 76
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label6: TLabel
      Left = 400
      Top = 2
      Width = 69
      Height = 13
      Caption = 'Data Processo'
    end
    object Label2: TLabel
      Left = 12
      Top = 2
      Width = 66
      Height = 13
      Caption = 'Tipo Processo'
    end
    object Label21: TLabel
      Left = 315
      Top = 2
      Width = 58
      Height = 13
      Caption = 'N'#186' Processo'
      FocusControl = DBEdit2
    end
    object Label22: TLabel
      Left = 92
      Top = 2
      Width = 115
      Height = 13
      Caption = 'Descri'#231#227'o Tipo Processo'
    end
    object Label4: TLabel
      Left = 639
      Top = 2
      Width = 74
      Height = 13
      Caption = 'N'#186' Proc. Antigo'
      FocusControl = DBEdit4
    end
    object Label24: TLabel
      Left = 12
      Top = 35
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label23: TLabel
      Left = 400
      Top = 37
      Width = 60
      Height = 13
      Caption = 'Requisitante'
      FocusControl = DBEdit5
    end
    object Label29: TLabel
      Left = 499
      Top = 2
      Width = 38
      Height = 13
      Caption = 'Revis'#227'o'
      FocusControl = DBEdit20
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 534
      Top = 37
      Width = 139
      Height = 38
      Caption = ' Status '
      Color = clBtnFace
      Columns = 2
      DataField = 'STATUS'
      DataSource = dmIT.dsProcesso
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Aberto'
        'Liberado'
        'Rejeitado')
      ParentBackground = True
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Values.Strings = (
        'A'
        'L'
        'R')
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 400
      Top = 18
      Width = 93
      Height = 20
      AutoSize = False
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Color = clInactiveBorder
      DataField = 'DATAPROCESSOID'
      DataSource = dmIT.dsProcesso
      Date = 37179.000000000000000000
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ShowButton = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 92
      Top = 18
      Width = 217
      Height = 20
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'L_SIGLAPROCESSO'
      DataSource = dmIT.dsProcesso
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnChange = DBEdit3Change
    end
    object DBEdit2: TDBEdit
      Left = 315
      Top = 18
      Width = 77
      Height = 20
      TabStop = False
      AutoSize = False
      DataField = 'PROCESSOID'
      DataSource = dmIT.dsProcesso
      TabOrder = 2
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 12
      Top = 18
      Width = 77
      Height = 20
      OnCustomDlg = wwDBComboDlg1CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'TIPOPROCESSOID'
      DataSource = dmIT.dsProcesso
      TabOrder = 0
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit4: TDBEdit
      Left = 638
      Top = 18
      Width = 89
      Height = 20
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'PROCESSOANTIGOID'
      DataSource = dmIT.dsProcesso
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 92
      Top = 48
      Width = 297
      Height = 21
      TabStop = False
      Color = clInactiveBorder
      DataField = 'L_NOMEFANTASIA'
      DataSource = dmIT.dsProcesso
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 400
      Top = 49
      Width = 113
      Height = 20
      TabStop = False
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'USUARIO'
      DataSource = dmIT.dsProcesso
      ReadOnly = True
      TabOrder = 7
    end
    object wwDBComboDlg9: TwwDBComboDlg
      Left = 12
      Top = 48
      Width = 77
      Height = 20
      OnCustomDlg = wwDBComboDlg9CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      DataField = 'EMPRESAID'
      DataSource = dmIT.dsProcesso
      TabOrder = 8
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit20: TDBEdit
      Left = 499
      Top = 18
      Width = 133
      Height = 20
      TabStop = False
      AutoSize = False
      DataField = 'REVISAO'
      DataSource = dmIT.dsProcesso
      TabOrder = 9
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 733
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 547
      end
      item
        Break = False
        Control = tmbEdicaoTop2
        ImageIndex = -1
        MinHeight = 29
        Width = 184
      end>
    EdgeBorders = []
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 534
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
      Left = 558
      Top = 0
      Width = 171
      Height = 29
      BandBorderStyle = bsNone
      Bands = <
        item
          ImageIndex = -1
          MinHeight = 28
          Width = 171
        end>
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      FixedOrder = True
      TtmbCria = True
      TtmbFormulario = Owner
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 487
    Width = 733
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 453
    Width = 733
    Height = 34
    Align = alBottom
    AutoSize = True
    TabOrder = 4
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 1
      Top = 1
      Width = 731
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
          Width = 509
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
                Caption = 'E&xportar TMBJ'
                ImageIndex = 22
              end>
            Caption = '&Ferramentas'
          end>
      end
      item
        Items = <
          item
            Action = actImpressao
            Caption = '&Impress'#227'o Processo'
            ImageIndex = 21
          end
          item
            Action = actExportar
            Caption = '&Exportar TMBJ'
            ImageIndex = 22
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actImpressao
            Caption = '&Impress'#227'o Processo'
            ImageIndex = 0
          end
          item
            Action = actExportar
            Caption = '&Exportar TMBJ'
            ImageIndex = 1
          end
          item
            Action = actCadastrarProduto
            Caption = '&Cadastrar Produto'
            ImageIndex = 1
          end
          item
            Action = actCopiarProcesso
            Caption = 'C&opiar processo'
            ImageIndex = 2
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 456
    Top = 132
    StyleName = 'XP Style'
    object actImpressao: TAction
      Category = 'Ferramentas'
      Caption = 'Impress'#227'o Processo'
      ImageIndex = 0
      OnExecute = actImpressaoExecute
    end
    object actExportar: TAction
      Category = 'Ferramentas'
      Caption = 'Exportar TMBJ'
      ImageIndex = 1
      OnExecute = actExportarExecute
    end
    object actCadastrarProduto: TAction
      Category = 'Ferramentas'
      Caption = 'Cadastrar Produto'
      ImageIndex = 1
      OnExecute = actCadastrarProdutoExecute
    end
    object actCopiarProcesso: TAction
      Category = 'Ferramentas'
      Caption = 'Copiar processo'
      ImageIndex = 2
      OnExecute = actCopiarProcessoExecute
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 404
    Top = 132
    Bitmap = {
      494C010103000400040010001300FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001300000001002000000000000013
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
      DE00FFEFDE00FFEFDE00FFD6CE00946B63000000000000000000000000008484
      8400848484008484840084848400848484008484840084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00F7F7
      F700EFEFEF00D6D6D600ADADAD00ADADAD004A4A4A00424242005A5A5A008484
      840094949400B5B5B500DEDEDE00BDBDBD000000000000000000000000000000
      0000C6948400EFEFEF00FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEF
      DE00FFEFDE00FFEFDE00FFD6CE009C6B6B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00F7F7F700EFEF
      EF00EFEFEF00D6D6D600A5A5A500ADADAD00B5B5B500A5A5A5008C8C8C006363
      630084848400949494009C9C9C00BDBDBD00A57B7300A57B7300A57B7300A57B
      7300CE9C8400EFEFEF00187B1800529C5A00FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFEFDE00FFEFDE00FFD6CE009C6B6B00000000000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000848484008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500FFFFFF00DEDEDE009C9C
      9C009C9C9C00C6C6C6009C9C9C008C8C8C00848484008C8C8C00A5A5A500BDBD
      BD00BDBDBD00C6C6C600C6C6C600C6C6C600A57B7300E7BDBD00F7BDBD00EFBD
      B500CE9C8400EFEFEF00187B180029B54A00529C5A00FFFFF700FFF7EF00FFF7
      E700FFF7E700FFF7E700FFCECE009C6B6B000000000000000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A500F7F7F7009C9C9C00D6D6
      D600DEDEDE00D6D6D600CECECE00BDBDBD00A5A5A5009C9C9C008C8C8C008C8C
      8C00A5A5A500BDBDBD0084BD9400C6C6C600BD8C7B00E7E7E700FFF7EF00739C
      7300187B1800187B1800187B180031CE630029B54A00529C5A00FFFFF700FFF7
      EF00FFF7EF00FFF7E700FFC6C6009C736B000000000000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C008C8C8C00DEDEDE00DEDE
      DE00D6D6D600EFEFEF00E7E7E700E7E7E700DEDEDE00CECECE00BDBDBD00ADAD
      AD009C9C9C008484840094949400C6C6C600C6948400EFEFE700529452000894
      100029C64A0029C64A0031CE6B0042DE73004AE77B004ADE7B0031843100FFF7
      EF00FFF7EF00FFF7EF00FFBDB5009C7373000000000000000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0000000000840000008400
      000084000000FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00E7E7E700D6D6D600CECE
      CE00DEDEDE00C6C6C600F7F7F700EFEFEF00CECECE00BDBDBD00BDBDBD00BDBD
      BD00D6D6D600E7E7E700D6D6D600CECECE00C69484008CB58C000894180029C6
      4A00088418000884180039CE63004AE7840052EF8400218C2100FFFFF700FFE7
      D600FFBDBD00FFADAD00FFA5A500A5737300000000000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600CECECE00DEDE
      DE00CECECE00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00CECE
      CE00BDBDBD00BDBDBD00CECECE0000000000CE9C8400218C290018A529000884
      1800DEAD8C00FFFFFF00187B180042CE6B00428C3100FFFFF700FFFFF700E7C6
      AD00E7A59C00E79C9400E79C8C00A57373000000000000000000FFFFFF008400
      000084000000840000008400000084000000FFFFFF0000000000840000008400
      000084000000FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D6D600BDBDBD00C6C6
      C600D6D6D600CECECE00E7E7E700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
      E700E7E7E700D6D6D600CECECE0000000000CE9C84001094210042944A00FFFF
      FF00DEAD8C00F7F7F7004294420084B56300FFFFFF00FFFFFF00FFFFFF00B584
      7300B5847300B5847300B5847300A57B73000000000000000000FFFFFF008400
      000084000000FFFFFF0000000000000000000000000000000000840000008484
      840084848400FFFFFF0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD00FFFF
      F700FFF7E700D6D6D600C6C6C600C6C6C600C6C6C600BDBDBD00BDADAD00B5B5
      B500CECECE00000000000000000000000000CEA5840008841800FFFFFF00FFFF
      FF00E7B58C00FFFFFF008C9C7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300FFBD5A00E7A56B00CE9C8400EFD6C600000000000000000000FFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00C694
      8400FFD6AD00FFD6AD00FFDEB500FFE7BD00F7E7D600EFE7D600C6ADAD000000
      000000000000000000000000000000000000D6A58C00187B1800FFFFFF00FFFF
      FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300E7AD8400D69C8400EFDED600000000000000000000000000FFFFFF008400
      000084000000FFFFFF00FFFFFF0000FFFF000000000000000000848484000000
      000000FF00000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7DEDE00DEAD
      9400FFDEB500FFDEB500FFDEB500FFDEB500FFDEB500F7D6AD00BD9494000000
      000000000000000000000000000000000000D6A58C0084A55200ADCE9C00FFFF
      FF00E7B58C00FFFFF700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300D6A58400EFDED60000000000000000000000000000000000FFFFFF00FFFF
      FF0000FFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6A5A500FFE7
      CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00BD949400D6C6C6000000
      000000000000000000000000000000000000DEAD8C00FFFFFF00BDBD8C00FFFF
      FF00EFBD9400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300F7DED6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00840000008484840000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C9400FFEF
      DE00FFEFDE00FFEFDE00FFEFDE00FFEFDE00F7DECE00BD949400000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300FFBD5A00E7A56B00CE9C8400EFD6
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF0000FFFF00000000000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEC6BD00FFF7
      E700FFF7E700FFF7E700FFF7E700FFF7E700CEB5AD00BD9C9C00000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300E7AD8400D69C8400EFDED6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD9C9C0000000000000000000000
      000000000000000000000000000000000000E7B58C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00B5847300D6A58400EFDED600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7EFEF00BD949400BD949400BD94
      9400BD949400BD949400BD949400BD9494000000000000000000000000000000
      000000000000000000000000000000000000EFBD9400DEAD8400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400B5847300F7DED60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFFF000FFFF0000F80FF000FFFF0000
      C001F000E03F0000C000F000C03F000080000000C003000000000000C0010000
      00000000C001000000000000C001000000000000C001000080010000C0010000
      80010000C0010000C0070000C0010000C01F0001C0010000C01F0003C0010000
      C01F0007C0010000C03F000FFC010000C03F001FFC030000807F003FFFE30000
      00FF007FFFFF000000000000000000000000000000000000000000000000}
  end
end
