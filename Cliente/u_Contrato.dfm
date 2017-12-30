object frmContrato: TfrmContrato
  Left = 85
  Top = 116
  Caption = 'Contrato de Manuten'#231#227'o'
  ClientHeight = 496
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 476
    Width = 813
    Height = 20
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
    Top = 104
    Width = 813
    Height = 340
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Dados B'#225'sicos'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 805
        Height = 312
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 12
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 357
          Top = 13
          Width = 21
          Height = 13
          Caption = 'Cnpj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 74
          Top = 12
          Width = 63
          Height = 13
          Caption = 'Raz'#227'o Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 463
          Top = 12
          Width = 95
          Height = 13
          Caption = 'Contato do Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 592
          Top = 11
          Width = 42
          Height = 13
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit6: TDBEdit
          Left = 356
          Top = 26
          Width = 105
          Height = 21
          Color = clScrollBar
          DataField = 'L_CNPJ'
          DataSource = dmCM.dsContrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 464
          Top = 26
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = dmCM.dsContrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 591
          Top = 26
          Width = 87
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_TELEFONE'
          DataSource = dmCM.dsContrato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object wwDBComboDlg8: TwwDBComboDlg
          Left = 8
          Top = 26
          Width = 62
          Height = 21
          OnCustomDlg = wwDBComboDlg8CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          CharCase = ecUpperCase
          DataField = 'CLIENTEID'
          DataSource = dmCM.dsContrato
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit38: TDBEdit
          Left = 73
          Top = 26
          Width = 280
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'L_NOME_CLIENTE'
          DataSource = dmCM.dsContrato
          ReadOnly = True
          TabOrder = 1
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 143
          Width = 414
          Height = 156
          Caption = 'Endere'#231'o do Cliente'
          TabOrder = 6
          object Label1: TLabel
            Left = 5
            Top = 16
            Width = 35
            Height = 13
            Caption = 'CEP ID'
          end
          object Label3: TLabel
            Left = 246
            Top = 15
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
            FocusControl = DBEdit2
          end
          object Label11: TLabel
            Left = 5
            Top = 40
            Width = 64
            Height = 13
            Caption = 'Complemento'
            FocusControl = DBEdit9
          end
          object Label10: TLabel
            Left = 5
            Top = 64
            Width = 46
            Height = 13
            Caption = 'Endere'#231'o'
          end
          object Label20: TLabel
            Left = 5
            Top = 133
            Width = 27
            Height = 13
            Caption = 'Bairro'
            FocusControl = DBEdit18
          end
          object Label21: TLabel
            Left = 5
            Top = 110
            Width = 33
            Height = 13
            Caption = 'Cidade'
            FocusControl = DBEdit19
          end
          object Label22: TLabel
            Left = 337
            Top = 107
            Width = 14
            Height = 13
            Caption = 'UF'
            FocusControl = DBEdit20
          end
          object DBEdit2: TDBEdit
            Left = 291
            Top = 13
            Width = 103
            Height = 21
            CharCase = ecUpperCase
            Color = clInactiveBorder
            DataField = 'L_NUMERO'
            DataSource = dmCM.dsContrato
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 73
            Top = 38
            Width = 321
            Height = 21
            CharCase = ecUpperCase
            Color = clInactiveBorder
            DataField = 'L_COMPLEMENTO'
            DataSource = dmCM.dsContrato
            TabOrder = 2
          end
          object DBEdit18: TDBEdit
            Left = 73
            Top = 129
            Width = 322
            Height = 21
            CharCase = ecUpperCase
            Color = clInactiveBorder
            DataField = 'L_BAIRRO'
            DataSource = dmCM.dsContrato
            TabOrder = 6
          end
          object DBEdit19: TDBEdit
            Left = 73
            Top = 104
            Width = 260
            Height = 21
            CharCase = ecUpperCase
            Color = clInactiveBorder
            DataField = 'L_CIDADE'
            DataSource = dmCM.dsContrato
            TabOrder = 4
          end
          object DBEdit20: TDBEdit
            Left = 354
            Top = 103
            Width = 40
            Height = 21
            CharCase = ecUpperCase
            Color = clInactiveBorder
            DataField = 'L_SIGLAUFID'
            DataSource = dmCM.dsContrato
            TabOrder = 5
          end
          object DBMemo3: TDBMemo
            Left = 73
            Top = 62
            Width = 321
            Height = 38
            Color = clInactiveBorder
            DataField = 'L_ENDERECO'
            DataSource = dmCM.dsContrato
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 72
            Top = 14
            Width = 121
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_CEPID'
            DataSource = dmCM.dsContrato
            TabOrder = 0
          end
        end
        object GroupBox4: TGroupBox
          Left = 3
          Top = 50
          Width = 414
          Height = 94
          Caption = ' Opera'#231#227'o '
          TabOrder = 5
          object Label15: TLabel
            Left = 5
            Top = 11
            Width = 108
            Height = 13
            Caption = 'Natureza de Opera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 206
            Top = 11
            Width = 49
            Height = 13
            Caption = 'C.F.O.P.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 70
            Top = 51
            Width = 66
            Height = 13
            Caption = 'Transportador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 7
            Top = 51
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 259
            Top = 11
            Width = 52
            Height = 17
            DataField = 'L_CFOP'
            DataSource = dmCM.dsContrato
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBComboDlg4: TwwDBComboDlg
            Left = 5
            Top = 26
            Width = 62
            Height = 20
            OnCustomDlg = wwDBComboDlg4CustomDlg
            ShowButton = True
            Style = csDropDown
            AutoSize = False
            Color = clWhite
            DataField = 'NATUREZAOPID'
            DataSource = dmCM.dsContrato
            TabOrder = 0
            WordWrap = False
            UnboundDataType = wwDefault
          end
          object wwDBComboDlg3: TwwDBComboDlg
            Left = 5
            Top = 66
            Width = 62
            Height = 20
            OnCustomDlg = wwDBComboDlg3CustomDlg
            ShowButton = True
            Style = csDropDown
            AutoSize = False
            DataField = 'TRANSPORTADORID'
            DataSource = dmCM.dsContrato
            TabOrder = 2
            WordWrap = False
            UnboundDataType = wwDefault
          end
          object DBEdit1: TDBEdit
            Left = 69
            Top = 67
            Width = 322
            Height = 20
            TabStop = False
            AutoSize = False
            Color = clInactiveBorder
            DataField = 'L_NOME_TRANSPORTADORA'
            DataSource = dmCM.dsContrato
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 69
            Top = 26
            Width = 323
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_DESCRICAOOPERACAOUSUARIO'
            DataSource = dmCM.dsContrato
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 427
          Top = 52
          Width = 281
          Height = 248
          Caption = ' Informa'#231#245'es do Contrato Atual '
          TabOrder = 7
          object Label4: TLabel
            Left = 17
            Top = 19
            Width = 31
            Height = 13
            Caption = 'Ano Id'
            FocusControl = DBEdit7
          end
          object Label5: TLabel
            Left = 17
            Top = 61
            Width = 53
            Height = 13
            Caption = 'Data In'#237'cio'
            FocusControl = DBEdit10
          end
          object Label7: TLabel
            Left = 143
            Top = 63
            Width = 48
            Height = 13
            Caption = 'Data Final'
            FocusControl = DBEdit11
          end
          object Label23: TLabel
            Left = 17
            Top = 187
            Width = 95
            Height = 13
            Caption = 'Vlr. Contrato Mensal'
            FocusControl = DBEdit14
          end
          object Label26: TLabel
            Left = 143
            Top = 107
            Width = 85
            Height = 13
            Caption = 'Vlr. Total Contrato'
            FocusControl = DBEdit15
          end
          object Label27: TLabel
            Left = 17
            Top = 105
            Width = 59
            Height = 13
            Caption = 'Qtd. Parcela'
            FocusControl = DBEdit16
          end
          object Label29: TLabel
            Left = 17
            Top = 146
            Width = 54
            Height = 13
            Caption = 'Pagamento'
            FocusControl = DBEdit17
          end
          object DBEdit7: TDBEdit
            Left = 17
            Top = 34
            Width = 106
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_ANO'
            DataSource = dmCM.dsContrato
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 143
            Top = 80
            Width = 120
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_DATAINICIOCONTRATO'
            DataSource = dmCM.dsContrato
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 17
            Top = 78
            Width = 120
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_DATAFIMCONTRATO'
            DataSource = dmCM.dsContrato
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 17
            Top = 202
            Width = 137
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_VLRCONTRATOMENSAL'
            DataSource = dmCM.dsContrato
            TabOrder = 3
          end
          object DBEdit15: TDBEdit
            Left = 143
            Top = 121
            Width = 119
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_VLRTOTALCONTRATO'
            DataSource = dmCM.dsContrato
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 17
            Top = 121
            Width = 121
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_QTDPARCELA'
            DataSource = dmCM.dsContrato
            TabOrder = 5
          end
          object DBEdit17: TDBEdit
            Left = 17
            Top = 160
            Width = 241
            Height = 21
            Color = clInactiveBorder
            DataField = 'L_PAGAMENTO'
            DataSource = dmCM.dsContrato
            TabOrder = 6
          end
          object DBCheckBox1: TDBCheckBox
            Left = 127
            Top = 35
            Width = 147
            Height = 17
            Caption = 'Per'#237'odo Conclu'#237'do'
            Color = clBtnFace
            DataField = 'L_PERIODOCONCLUIDO'
            DataSource = dmCM.dsContrato
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ano Contratual'
      ImageIndex = 5
      object Splitter1: TSplitter
        Left = 0
        Top = 161
        Width = 805
        Height = 3
        Cursor = crVSplit
        Align = alTop
        ExplicitTop = 128
        ExplicitWidth = 715
      end
      object PageControl3: TPageControl
        Left = 0
        Top = 164
        Width = 805
        Height = 148
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        object TabSheet2: TTabSheet
          Caption = 'Aparelhos'
          object tmbEdtListAparelho: TtmbEdicaoLista
            Left = 730
            Top = 0
            Width = 67
            Height = 120
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
            TtmbClientDataSet = dmCM.cdsContratoApar
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmCM.dsContratoApar
            TtmbFontDefaut = False
            TtmbDesativaInserir = False
            TtmbDireito = 'ContratoApar'
          end
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 730
            Height = 120
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmCM.dsContratoApar
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
                FieldName = 'ANOID'
                Width = 38
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERIEID'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELOID'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPOCONTRATOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRTIPOCONTRATO'
                Width = 124
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRMENSAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCONTRATO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CORRETIVAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOCORRETIVA'
                Width = 227
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PREVENTIVAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOPREVENTIVA'
                Width = 236
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HORASESPERA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDPREVENTIVAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDPREVENTIVASUTIL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BLOQUEARPREVENTIVAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDCORRETIVAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDCORRETIVASUTIL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BLOQUEARCORRETIVAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDPECAS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDPECASUTIL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TERMOCONTRATOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAOTERMOCONTRATO'
                Width = 266
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPRCONDCONTR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 730
            Height = 120
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmCM.dsContratoServ
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
                FieldName = 'ANOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEMID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SERVICOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_DESCRICAORESUMIDA'
                Width = 139
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRSERVICO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GRUPOID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_SIGLAGRUPO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'L_GRUPO'
                Width = 151
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HISTORICO'
                Width = 161
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
          object tmbEdtListServico: TtmbEdicaoLista
            Left = 730
            Top = 0
            Width = 67
            Height = 120
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
            TtmbClientDataSet = dmCM.cdsContratoServ
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmCM.dsContratoServ
            TtmbFontDefaut = False
            TtmbDesativaInserir = False
            TtmbDireito = 'ContratoServ'
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Parcelas'
          ImageIndex = 2
          object DBGrid3: TDBGrid
            Left = 0
            Top = 0
            Width = 730
            Height = 120
            Align = alClient
            Color = clCream
            Ctl3D = True
            DataSource = dmCM.dsContratoParc
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
            OnDrawColumnCell = DBGrid3DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'ANOID'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PARCELAID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODOINICIAL'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERIODOFINAL'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAVENCIMENTO'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MESVENCIMENTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAPAGAMENTO'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VLRCONTRATO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PDSID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NFSID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATAEMISSAOID'
                Width = 105
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'GERADA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'USUARIO'
                Visible = True
              end>
          end
          object tmbEdtListParcela: TtmbEdicaoLista
            Left = 730
            Top = 0
            Width = 67
            Height = 120
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
            TtmbClientDataSet = dmCM.cdsContratoParc
            TtmbVertical = True
            TtmbTamMax = False
            TtmbDataSource = dmCM.dsContratoParc
            TtmbFontDefaut = False
            TtmbDesativaInserir = False
            TtmbDireito = 'ContratoParc'
          end
        end
      end
      object TabControl1: TTabControl
        Left = 0
        Top = 0
        Width = 805
        Height = 161
        Align = alTop
        TabOrder = 1
        object tmbEdtListPrincipal: TtmbEdicaoLista
          Left = 734
          Top = 6
          Width = 67
          Height = 151
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
          TtmbClientDataSet = dmCM.cdsContratoAno
          TtmbVertical = True
          TtmbTamMax = False
          TtmbDataSource = dmCM.dsContratoAno
          TtmbFontDefaut = False
          TtmbDesativaInserir = False
          TtmbDireito = 'ContratoAno'
        end
        object dbgrdHoras: TDBGrid
          Left = 4
          Top = 6
          Width = 730
          Height = 151
          Align = alClient
          Color = clCream
          Ctl3D = True
          DataSource = dmCM.dsContratoAno
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
              FieldName = 'ANOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INDCONTRATOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRICAOINDICE'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAINICIOCONTRATO'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAFIMCONTRATO'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRCONTRATOMENSAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLRTOTALCONTRATO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDPARCELA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PAGAMENTO'
              Width = 243
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERIODOCONCLUIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Aditivos'
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 805
        Height = 312
        Align = alClient
        TabOrder = 0
        object DBGrid4: TDBGrid
          Left = 1
          Top = 1
          Width = 803
          Height = 310
          Align = alClient
          Color = clCream
          Ctl3D = True
          DataSource = dmCM.dsContratoAditivo
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
              FieldName = 'EMPRESAID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONTRATOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADITIVOID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAADITIVO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Observa'#231#245'es'
      ImageIndex = 3
      object Label13: TLabel
        Left = 6
        Top = 0
        Width = 109
        Height = 13
        Caption = 'Observa'#231#227'o do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 5
        Top = 167
        Width = 119
        Height = 13
        Caption = 'Observa'#231#227'o do Contrato'
      end
      object wwDBComboDlg1: TwwDBComboDlg
        Left = 5
        Top = 15
        Width = 62
        Height = 21
        OnCustomDlg = wwDBComboDlg1CustomDlg
        ShowButton = True
        Style = csDropDown
        DataField = 'OBSERVACAOID'
        DataSource = dmCM.dsContrato
        TabOrder = 0
        WordWrap = False
        UnboundDataType = wwDefault
      end
      object DBMemo2: TDBMemo
        Left = 4
        Top = 39
        Width = 701
        Height = 129
        Color = clWhite
        DataField = 'OBSPDS'
        DataSource = dmCM.dsContrato
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 5
        Top = 181
        Width = 700
        Height = 122
        DataField = 'OBSCLIENTE'
        DataSource = dmCM.dsContrato
        ScrollBars = ssVertical
        TabOrder = 2
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 29
    Width = 813
    Height = 75
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label9: TLabel
      Left = 8
      Top = 4
      Width = 53
      Height = 13
      Caption = 'ContratoId'
    end
    object Label24: TLabel
      Left = 86
      Top = 5
      Width = 64
      Height = 13
      Caption = 'Data emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 165
      Top = 4
      Width = 20
      Height = 13
      Caption = 'Filial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 475
      Top = 4
      Width = 85
      Height = 13
      Caption = 'Contrato  Doc. ID'
    end
    object Label30: TLabel
      Left = 9
      Top = 36
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 17
      Width = 73
      Height = 21
      Color = clInactiveBorder
      DataField = 'CONTRATOID'
      DataSource = dmCM.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit22: TDBEdit
      Left = 84
      Top = 17
      Width = 77
      Height = 21
      DataField = 'DATAEMISSAO'
      DataSource = dmCM.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit23: TDBEdit
      Left = 475
      Top = 17
      Width = 86
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'CONTRATOANTIGOID'
      DataSource = dmCM.dsContrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 229
      Top = 17
      Width = 236
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clScrollBar
      DataField = 'L_FILIAL'
      DataSource = dmCM.dsContrato
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object wwDBComboDlg5: TwwDBComboDlg
      Left = 164
      Top = 17
      Width = 62
      Height = 21
      OnCustomDlg = wwDBComboDlg5CustomDlg
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      CharCase = ecUpperCase
      DataField = 'FILIALID'
      DataSource = dmCM.dsContrato
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwCheckBox1: TwwCheckBox
      Left = 581
      Top = 2
      Width = 168
      Height = 20
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Caption = 'Contrato Cancelado'
      DataField = 'CANCELADO'
      DataSource = dmCM.dsContrato
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object wwCheckBox2: TwwCheckBox
      Left = 581
      Top = 17
      Width = 168
      Height = 20
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Caption = 'Pr'#233'-Contrato'
      DataField = 'PRECONTRATO'
      DataSource = dmCM.dsContrato
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object wwDBComboDlg9: TwwDBComboDlg
      Left = 8
      Top = 49
      Width = 73
      Height = 20
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      Color = clInactiveBorder
      DataField = 'EMPRESAID'
      DataSource = dmCM.dsContrato
      Enabled = False
      TabOrder = 7
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object wwCheckBox3: TwwCheckBox
      Left = 581
      Top = 32
      Width = 168
      Height = 20
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Caption = 'Suspenso Faturamento'
      DataField = 'SUSPFATURAMENTO'
      DataSource = dmCM.dsContrato
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object wwCheckBox4: TwwCheckBox
      Left = 581
      Top = 49
      Width = 168
      Height = 20
      DisableThemes = False
      AlwaysTransparent = False
      ValueChecked = '1'
      ValueUnchecked = '0'
      DisplayValueChecked = '1'
      DisplayValueUnchecked = '0'
      NullAndBlankState = cbUnchecked
      Caption = 'Bloq. Financeiro'
      DataField = 'L_STATUSFINANCEIRO'
      DataSource = dmCM.dsContrato
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 813
    Height = 29
    AutoSize = True
    Bands = <
      item
        Control = ActionMainMenuBar1
        ImageIndex = -1
        Width = 809
      end>
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 9
      Top = 0
      Width = 796
      Height = 25
      UseSystemFont = False
      ActionManager = actmngContrato
      Caption = 'ActionMainMenuBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Spacing = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 444
    Width = 813
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 4
    object tmbEdicaoBottom2: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 813
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
          Width = 566
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 89
        end>
      TtmbCria = True
      TtmbClientDataSet = dmCM.cdsContrato
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object actmngContrato: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actContrato
                Caption = '&Criar/Exibir Contrato'
                ImageIndex = 0
              end
              item
                Action = actAditivo
                Caption = 'C&riar Carta Aditivo'
                ImageIndex = 1
              end
              item
                Action = actAnoContratual
                Caption = '&Novo Ano Contratual'
                ImageIndex = 9
              end
              item
                Action = actNfsEmitidas
                Caption = '&Verificar Nfs Emitidas'
                ImageIndex = 5
              end
              item
                Action = actAtualIndContrato
                Caption = '&Atual. Indice Contrato'
                ImageIndex = 6
              end
              item
                Action = Action1
                Caption = 'A&brir Contrato Cancelado'
                ImageIndex = 10
              end>
            Caption = '&Contrato'
            ImageIndex = 0
          end
          item
            Action = actParcelas
            Caption = 'G&erar Parcelas'
            ImageIndex = 3
          end
          item
            Action = actPedido
            Caption = '&Gerar Pedido'
            ImageIndex = 4
          end
          item
            Action = actAnoContratual
            Caption = '&Novo Ano Contratual'
            ImageIndex = 9
          end
          item
            Items = <
              item
                Action = actControle
                Caption = '&Controle do Contrato'
                ImageIndex = 8
              end
              item
                Action = actValores
                Caption = '&Valores do Contrato'
                ImageIndex = 8
              end>
            Caption = '&Impress'#227'o'
            ImageIndex = 8
          end
          item
            Action = actNfsEmitidas
            Caption = '&Verificar Nfs Emitidas'
            ImageIndex = 5
          end
          item
            Action = actAtualIndContrato
            Caption = '&Atual. Indice Contrato'
            ImageIndex = 6
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Images = ImageList1
    Left = 384
    Top = 88
    StyleName = 'XP Style'
    object actContrato: TAction
      Category = 'Contrato'
      Caption = 'Criar/Exibir Contrato'
      ImageIndex = 0
      OnExecute = actContratoExecute
    end
    object actAditivo: TAction
      Category = 'Contrato'
      Caption = 'Criar Carta Aditivo'
      GroupIndex = 1
      ImageIndex = 1
      OnExecute = actAditivoExecute
    end
    object actPedido: TAction
      Category = 'Contrato'
      Caption = 'Gerar Pedido'
      ImageIndex = 4
      OnExecute = actPedidoExecute
    end
    object actParcelas: TAction
      Category = 'Contrato'
      Caption = 'Gerar Parcelas'
      ImageIndex = 3
      OnExecute = actParcelasExecute
    end
    object actAnoContratual: TAction
      Category = 'Contrato'
      Caption = 'Novo Ano Contratual'
      ImageIndex = 9
      OnExecute = actAnoContratualExecute
    end
    object actNfsEmitidas: TAction
      Category = 'Contrato'
      Caption = 'Verificar Nfs Emitidas'
      ImageIndex = 5
      OnExecute = actNfsEmitidasExecute
    end
    object actAtualIndContrato: TAction
      Category = 'Contrato'
      Caption = 'Atual. Indice Contrato'
      Hint = 'Atualizar indices do contrato'
      ImageIndex = 6
    end
    object actControle: TAction
      Category = 'Impress'#227'o'
      Caption = 'Controle do Contrato'
      ImageIndex = 8
    end
    object actValores: TAction
      Category = 'Impress'#227'o'
      Caption = 'Valores do Contrato'
      ImageIndex = 8
    end
    object Action1: TAction
      Category = 'Contrato'
      Caption = 'Abrir Contrato Cancelado'
      ImageIndex = 10
      OnExecute = Action1Execute
    end
  end
  object ImageList1: TImageList
    Left = 320
    Top = 88
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B6B
      6B00ADA5A500A59C9C006B6B6B006B6B6B006B6B6B00E7E7E7006B6B6B006B6B
      6B006B6B6B00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B00DEDE
      DE00A59C9C00A59C9C00A59C9C0031313100313131006B6B6B00C6BDBD00E7E7
      E700BDB5B5006B6B6B006B6B6B006B6B6B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B00D6D6D600CECE
      C600948C8C00948C8C00948C8C00393139000808080000000000080808000000
      00007B6B6B00BDBDBD006B6B6B0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF007B0000007B00
      0000FFFFFF007B000000FFFFFF00000000007B7B7B0000000000000000000000
      0000000000007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B00CECEC600CECEC600948C
      8C00DED6D600CECECE00BDBDBD00ADADAD00A59C9C00948C8C005A5A5A000000
      000008080800080808006B6B6B007B6B6B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00000000007B7B7B0000000000000000000000
      00007B7B7B00000000007B7B7B007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B6B6B00CECEC600948C8C00F7EF
      EF00FFF7EF00FFF7EF00E7E7E700E7DEDE00E7DEDE00D6CECE00BDBDBD00ADAD
      AD00948C8C00525252007B6B6B007B6B6B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6B006B6B6B00EFEF
      E700ADADAD007B6B6B00948C8C009C94940094948C009C9494009C9494009C9C
      9C00BDBDBD00D6CECE00C6C6C6006B6B6B00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF007B0000007B00
      00007B0000007B000000FFFFFF00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B6B
      6B00B5847B00A57B73008C736B007B6B6B00636363007B6B6B00948C8C00ADA5
      A500CECECE00C6C6C6006B6B6B0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B0000000000000000007B7B
      7B000000000000000000000000007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD847B00FFDEB500FFD6A500EFCEAD00B5847B00B5847B00BD847B008473
      6B006B6B6B006B6B6B000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD847B00FFDEBD00FFD6AD00F7D6A500F7D6A500F7D6A500BD847B000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B0000007B00
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B584
      7B00FFE7CE00FFE7C600FFDEB500FFD6A500F7D6A500BD847B00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD847B00FFF7
      EF00FFF7EF00FFEFD600FFE7CE00FFDEBD00EFCEA500BD847B00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD847B00BD84
      7B00BD847B00FFEFE700FFE7CE00FFE7C600BD847B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD847B00BD847B00BD847B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF0000000000007B00007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000000000007B0000007B0000007B00007B7B
      7B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B0000000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00007B0000007B000000FF0000007B0000007B
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B000000FFFFFF00007B0000007B0000007B0000FFFFFF0000FF0000007B
      0000007B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B000000FFFFFF00FFFFFF00007B000000FF0000FFFFFF000000000000FF
      0000007B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF007B7B
      7B00FFFFFF007B7B7B007B7B7B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF007B0000007B000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B0000000000007B00007B7B7B0000000000000000000000000000000000FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000000000FFFF
      FF007B000000FFFFFF007B000000FFFFFF00FFFFFF00FFFFFF00000000007B7B
      7B000000000000FF0000007B00007B7B7B000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000007B0000000000000000000000FFFFFF007B7B
      7B007B7B7B00FFFFFF007B7B7B0000000000FFFFFF007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF000000000000000000FFFF
      FF007B000000FFFFFF007B000000FFFFFF00FFFFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000FF0000007B000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF007B0000007B000000FFFFFF00FFFFFF00BDBDBD00BDBDBD00000000000000
      00000000000000FFFF000000000000FF00000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      000000000000000000007B7B7B00FFFFFF007B7B7B007B7B7B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF007B7B7B007B7B7B007B7B7B007B7B7B00FFFFFF007B7B7B007B7B7B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B0000007B0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007B000000000000007B000000000000007B000000000000007B0000000000
      00007B00000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000007B0000007B0000007B00000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000000000000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000007B00
      00007B0000007B00000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000000000007B00000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B00000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007B00000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000000000000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B0000000000FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000007B00000000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B0000007B0000000000000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF00000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B000000000000007B00000000000000FFFFFF007B7B7B000000
      000000000000FFFFFF007B7B7B00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000007B00000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF00000000000000000000000000FFFFFF007B7B7B007B7B
      7B007B7B7B00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000007B00000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000007B0000007B000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFC00780070000E007C00780070000C000C007800300008001C00780010000
      0000C007807000000000C007807800008000C00780680000E001C00780480000
      F003C00780830000F01FC00781870000E03FC00F838F0000C03FC01F87DF0000
      C07FC03FFFFF0000F8FFFFFFFFFF0000FFFFFFFFFEFBFFFF000FFF1F7E9FFFFF
      000FFE3F800FEEEF000FC07FC007F6DF000FBCFFC007FFFF000F6000C007C303
      000F4000C009A9A9000F4000800840C4008E400040041FFA11448000C01A4304
      0AB8C000C03FA9A9057CC000C03FC0C3FAFCC000C01FFFFFFDF8C00080CFFB6F
      FE04C0007DFFF777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00018000FFFF001F
      00018000F557001800018000F7FF001912018000E3F7FFFA12018000F7FFFFFE
      12018000FFF7101E12018000C0C01FF9120180000000101F03F180000000FFF8
      200180000101FFF9000180000101001A11F180000101005E040180000101005E
      00018000010100590001FFFF0101001F00000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    Left = 660
    Top = 96
  end
  object Extenso1: TExtenso
    Moeda = 'Real'
    PluralMoeda = 'Reais'
    Fracao = 'centavo'
    PluralFracao = 'centavos'
    Numero = '0,00'
    Extenso = 'Real '
    Left = 480
    Top = 88
  end
end
