object frmAcompPed: TfrmAcompPed
  Left = 140
  Top = 14
  Caption = 'Acompanhamento de Pedidos'
  ClientHeight = 611
  ClientWidth = 785
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
  object TLabel
    Left = 56
    Top = 408
    Width = 3
    Height = 13
  end
  object TLabel
    Left = 56
    Top = 400
    Width = 3
    Height = 13
  end
  object pgctrlDI: TPageControl
    Left = 0
    Top = 113
    Width = 785
    Height = 446
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados do Pedido'
      object grpbxDadosCliente: TGroupBox
        Left = 0
        Top = 0
        Width = 777
        Height = 73
        Align = alTop
        Caption = 'Endere'#231'o da Origem de Venda ( COMISS'#195'O )'
        TabOrder = 0
        object Label19: TLabel
          Left = 398
          Top = 41
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit19
        end
        object Label20: TLabel
          Left = 726
          Top = 38
          Width = 13
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit20
        end
        object Label23: TLabel
          Left = 5
          Top = 20
          Width = 47
          Height = 13
          Caption = 'Cliente ID'
          FocusControl = DBEdit13
        end
        object DBEdit19: TDBEdit
          Left = 437
          Top = 38
          Width = 265
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_CIDADEORIG'
          DataSource = dmPP.dsAcompPed
          TabOrder = 1
        end
        object DBEdit20: TDBEdit
          Left = 742
          Top = 38
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'L_SIGLAUFORIGID'
          DataSource = dmPP.dsAcompPed
          TabOrder = 2
        end
        object wwDBComboDlg6: TwwDBComboDlg
          Left = 78
          Top = 17
          Width = 70
          Height = 20
          OnCustomDlg = wwDBComboDlg6CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'CLIENTEID'
          DataSource = dmPP.dsAcompPed
          TabOrder = 0
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit13: TDBEdit
          Left = 154
          Top = 14
          Width = 618
          Height = 21
          TabStop = False
          DataField = 'NOMECLIENTE'
          DataSource = dmPP.dsAcompPed
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 154
          Top = 38
          Width = 238
          Height = 21
          Color = clScrollBar
          DataField = 'L_CPFCNPJ'
          DataSource = dmPP.dsAcompPed
          Enabled = False
          TabOrder = 4
        end
      end
      object grpbxResumoRev: TGroupBox
        Left = 473
        Top = 73
        Width = 304
        Height = 345
        Align = alClient
        Caption = '&Resumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitTop = 113
        ExplicitHeight = 305
        object Label9: TLabel
          Left = 6
          Top = 13
          Width = 91
          Height = 13
          Caption = 'Data Env. Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 6
          Top = 37
          Width = 89
          Height = 13
          Caption = 'Data Ret. Contrato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 6
          Top = 93
          Width = 103
          Height = 13
          Caption = 'Data Entr. Opera'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 6
          Top = 119
          Width = 85
          Height = 13
          Caption = 'Data Faturamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 6
          Top = 143
          Width = 91
          Height = 13
          Caption = 'Data Prev. Entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 6
          Top = 166
          Width = 83
          Height = 13
          Caption = 'Vlr.Total Geral'
          FocusControl = DBEdit7
        end
        object wwDBDateTimePicker7: TwwDBDateTimePicker
          Left = 114
          Top = 10
          Width = 93
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAENVCONTRATO'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 0
        end
        object wwDBDateTimePicker8: TwwDBDateTimePicker
          Left = 114
          Top = 34
          Width = 93
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATARETCONTRATO'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 1
        end
        object DBCheckBox2: TDBCheckBox
          Left = 135
          Top = 61
          Width = 98
          Height = 17
          Caption = 'Contrato OK'
          DataField = 'CONTRATOOK'
          DataSource = dmPP.dsAcompPed
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 6
          Top = 56
          Width = 123
          Height = 31
          Caption = 'Tipo Receb. Pedido'
          Columns = 2
          DataField = 'TIPODOCRETORNO'
          DataSource = dmPP.dsAcompPed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Fax'
            'Original')
          ParentBackground = True
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            'F'
            'O')
        end
        object wwDBDateTimePicker9: TwwDBDateTimePicker
          Left = 114
          Top = 93
          Width = 93
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAENTREGA'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 4
        end
        object wwDBDateTimePicker10: TwwDBDateTimePicker
          Left = 114
          Top = 119
          Width = 93
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAFATURAMENTO'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 5
        end
        object wwDBDateTimePicker11: TwwDBDateTimePicker
          Left = 114
          Top = 143
          Width = 93
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAENTREGA'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ShowButton = True
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 114
          Top = 166
          Width = 151
          Height = 21
          DataField = 'VLRTOTAL'
          DataSource = dmPP.dsAcompPed
          TabOrder = 7
        end
      end
      object grpbxCondPagtoRev: TGroupBox
        Left = 0
        Top = 73
        Width = 473
        Height = 345
        Align = alLeft
        Caption = 'Dados financeiro'
        TabOrder = 2
        ExplicitTop = 113
        ExplicitHeight = 305
        object Label25: TLabel
          Left = 3
          Top = 238
          Width = 33
          Height = 13
          Caption = 'PDS ID'
          FocusControl = DBEdit14
        end
        object Label31: TLabel
          Left = 164
          Top = 233
          Width = 56
          Height = 13
          Caption = 'Dt. Emiss'#227'o'
        end
        object Label41: TLabel
          Left = 3
          Top = 53
          Width = 65
          Height = 13
          Caption = 'Mot. Susp. Id'
          FocusControl = DBEdit26
        end
        object Label52: TLabel
          Left = 3
          Top = 262
          Width = 33
          Height = 13
          Caption = 'NFS ID'
          FocusControl = DBEdit35
        end
        object Label53: TLabel
          Left = 164
          Top = 257
          Width = 56
          Height = 13
          Caption = 'Dt. Emiss'#227'o'
        end
        object Label1: TLabel
          Left = 3
          Top = 13
          Width = 83
          Height = 13
          Caption = 'Data Entreg. Fin.'
        end
        object Label2: TLabel
          Left = 99
          Top = 13
          Width = 84
          Height = 13
          Caption = 'Data Retorn. Fin.'
        end
        object Label3: TLabel
          Left = 3
          Top = 82
          Width = 65
          Height = 13
          Caption = 'Mot. Susp. Id'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 3
          Top = 101
          Width = 74
          Height = 13
          Caption = 'Hist. Financeiro'
          FocusControl = DBEdit2
        end
        object DBEdit14: TDBEdit
          Left = 82
          Top = 233
          Width = 75
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_PDSID'
          DataSource = dmPP.dsAcompPed
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object wwDBDateTimePicker1: TwwDBDateTimePicker
          Left = 228
          Top = 230
          Width = 87
          Height = 21
          TabStop = False
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Color = clScrollBar
          DataField = 'L_DATAPEDIDOPDSID'
          DataSource = dmPP.dsAcompPed
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
        object DBEdit26: TDBEdit
          Left = 166
          Top = 49
          Width = 302
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRMOTIVORECUSA'
          DataSource = dmPP.dsAcompPed
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object wwDBComboDlg8: TwwDBComboDlg
          Left = 84
          Top = 50
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg8CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'MOTIVORECUSAID'
          DataSource = dmPP.dsAcompPed
          TabOrder = 3
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit35: TDBEdit
          Left = 82
          Top = 257
          Width = 75
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_NFSID'
          DataSource = dmPP.dsAcompPed
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
          Left = 228
          Top = 257
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
          DataSource = dmPP.dsAcompPed
          Epoch = 1950
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ShowButton = True
          TabOrder = 5
        end
        object wwDBDateTimePicker5: TwwDBDateTimePicker
          Left = 3
          Top = 26
          Width = 89
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATAENTREGAFIN'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          ShowButton = True
          TabOrder = 6
        end
        object wwDBDateTimePicker6: TwwDBDateTimePicker
          Left = 98
          Top = 26
          Width = 89
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          DataField = 'DATARETORNOFIN'
          DataSource = dmPP.dsAcompPed
          Date = 37208.000000000000000000
          Epoch = 1950
          ShowButton = True
          TabOrder = 7
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 84
          Top = 79
          Width = 77
          Height = 20
          OnCustomDlg = wwDBComboDlg2CustomDlg
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'MOTIVORECUSA2ID'
          DataSource = dmPP.dsAcompPed
          TabOrder = 8
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit2: TDBEdit
          Left = 166
          Top = 78
          Width = 302
          Height = 21
          TabStop = False
          Color = clScrollBar
          DataField = 'L_DESCRMOTIVORECUSA2'
          DataSource = dmPP.dsAcompPed
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBMemo2: TDBMemo
          Left = 3
          Top = 116
          Width = 464
          Height = 110
          DataField = 'HISTFINANCEIRO'
          DataSource = dmPP.dsAcompPed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
      end
    end
    object tbshtAparelhoRev: TTabSheet
      Caption = 'Documentos Pendentes'
      ImageIndex = 2
      object tmbedtlstDocPend: TtmbEdicaoLista
        Left = 710
        Top = 0
        Width = 67
        Height = 418
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
        TtmbClientDataSet = dmPP.cdsAcompPedDocPend
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsAcompPedDocPend
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Acomp. Doc. Pendente'
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 710
        Height = 418
        Align = alClient
        Caption = 'Itens Doc. Pendente'
        TabOrder = 1
        object Label4: TLabel
          Left = 3
          Top = 263
          Width = 98
          Height = 13
          Caption = 'Descri'#231#227'o Financeiro'
        end
        object dbgrdDocPend: TDBGrid
          Left = 2
          Top = 15
          Width = 706
          Height = 242
          Align = alTop
          Color = clCream
          Ctl3D = True
          DataSource = dmPP.dsAcompPedDocPend
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
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAREGISTRO'
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCPENDENTEID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'L_DESCRDOCPENDENTE'
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 176
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAULTATUAL'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RESOLVIDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATARESOLUCAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIORESOLUCAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
        object DBEdit3: TDBEdit
          Left = 4
          Top = 282
          Width = 702
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = dmPP.dsAcompPedDocPend
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vendedores'
      ImageIndex = 2
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 710
        Height = 418
        Align = alClient
        Caption = 'Itens de Bonifica'#231#227'o '
        TabOrder = 0
        ExplicitWidth = 712
        ExplicitHeight = 397
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 706
          Height = 401
          Hint = #39'Duplo Clique'#39' para melhor visualiza'#231#227'o'
          Align = alClient
          Color = clCream
          DataSource = dmPP.dsAcompPedVend
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
              FieldName = 'USUARIO'
              Visible = True
            end>
        end
      end
      object tmbedtlstVend: TtmbEdicaoLista
        Left = 710
        Top = 0
        Width = 67
        Height = 418
        Align = alRight
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TtmbCriar = True
        TtmbClientDataSet = dmPP.cdsAcompPedVend
        TtmbVertical = True
        TtmbTamMax = False
        TtmbDataSource = dmPP.dsAcompPedVend
        TtmbFontDefaut = False
        TtmbDesativaInserir = False
        TtmbDireito = 'Vendedor'
        ExplicitLeft = 712
      end
    end
    object tbshtObsGerais: TTabSheet
      Caption = 'Observa'#231#245'es Gerais'
      ImageIndex = 5
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 777
        Height = 305
        Align = alTop
        DataField = 'OBSERVA'#199#195'O'
        DataSource = dmPP.dsAcompPed
        TabOrder = 0
      end
    end
  end
  object fcStatusBar1: TfcStatusBar
    Left = 0
    Top = 591
    Width = 785
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
    Width = 785
    Height = 80
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label14: TLabel
      Left = 7
      Top = 35
      Width = 69
      Height = 13
      Caption = 'Ped. Venda ID'
    end
    object Label16: TLabel
      Left = 117
      Top = 2
      Width = 77
      Height = 13
      Caption = 'Data Assinatura'
    end
    object Label6: TLabel
      Left = 6
      Top = 2
      Width = 94
      Height = 13
      Caption = 'N'#186'Ped.Vendedor ID'
    end
    object Label7: TLabel
      Left = 434
      Top = 1
      Width = 96
      Height = 13
      Caption = 'Origem da Venda ID'
    end
    object Label8: TLabel
      Left = 434
      Top = 36
      Width = 67
      Height = 13
      Caption = 'Tipo Venda ID'
    end
    object Label54: TLabel
      Left = 116
      Top = 35
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label51: TLabel
      Left = 212
      Top = 2
      Width = 95
      Height = 13
      Caption = 'Data Receb. Pedido'
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 48
      Width = 103
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_PEDVENDID'
      DataSource = dmPP.dsAcompPed
      ReadOnly = True
      TabOrder = 4
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 116
      Top = 15
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATAASSINATURA'
      DataSource = dmPP.dsAcompPed
      Date = 37208.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object DBEdit61: TDBEdit
      Left = 6
      Top = 15
      Width = 106
      Height = 21
      DataField = 'NUMPEDVENDEDORID'
      DataSource = dmPP.dsAcompPed
      TabOrder = 1
    end
    object wwDBComboDlg1: TwwDBComboDlg
      Left = 434
      Top = 14
      Width = 65
      Height = 20
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      Color = clScrollBar
      DataField = 'L_ORIGEMVENDAID'
      DataSource = dmPP.dsAcompPed
      Enabled = False
      TabOrder = 2
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit6: TDBEdit
      Left = 504
      Top = 17
      Width = 273
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DESCRORIGEMVENDA'
      DataSource = dmPP.dsAcompPed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object wwDBComboDlg3: TwwDBComboDlg
      Left = 434
      Top = 48
      Width = 66
      Height = 20
      ShowButton = True
      Style = csDropDown
      AutoSize = False
      Color = clScrollBar
      DataField = 'L_TIPOVENDAID'
      DataSource = dmPP.dsAcompPed
      Enabled = False
      TabOrder = 3
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object DBEdit8: TDBEdit
      Left = 504
      Top = 49
      Width = 272
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DESCRTIPOVENDA'
      DataSource = dmPP.dsAcompPed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit36: TDBEdit
      Left = 116
      Top = 48
      Width = 106
      Height = 21
      Color = clScrollBar
      DataField = 'USUARIO'
      DataSource = dmPP.dsAcompPed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object wwDBDateTimePicker4: TwwDBDateTimePicker
      Left = 211
      Top = 15
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DATARECEBPEDIDO'
      DataSource = dmPP.dsAcompPed
      Date = 37208.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 8
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 308
      Top = 5
      Width = 122
      Height = 31
      Caption = 'Tipo Receb. Pedido'
      Columns = 2
      DataField = 'TIPORECEBPEDIDO'
      DataSource = dmPP.dsAcompPed
      Items.Strings = (
        'Fax'
        'Original')
      ParentBackground = True
      TabOrder = 9
      Values.Strings = (
        'F'
        'O')
    end
    object DBCheckBox1: TDBCheckBox
      Left = 238
      Top = 57
      Width = 97
      Height = 17
      Caption = 'Doc. Pendente'
      DataField = 'DOCPENDENTE'
      DataSource = dmPP.dsAcompPed
      TabOrder = 10
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 559
    Width = 785
    Height = 32
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 3
    object tmbEdicaoBottom1: TtmbEdicaoBottom
      Left = 0
      Top = 0
      Width = 785
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
          Width = 549
        end
        item
          Break = False
          ImageIndex = -1
          MinHeight = 26
          Width = 78
        end>
      TtmbCria = True
      TtmbClientDataSet = dmPP.cdsAcompPed
      TtmbFormulario = Owner
      TtmbCloseComando = True
    end
  end
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 785
    Height = 33
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 29
        Width = 781
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 768
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
            Action = actVisualPedVenda
          end>
      end
      item
      end
      item
        Items = <
          item
            Action = actVisualPedVenda
            ImageIndex = 0
          end
          item
            Action = actVisualNF
            ImageIndex = 0
          end
          item
            Action = actImpressao
            Caption = '&Impress'#227'o'
            ImageIndex = 1
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 496
    Top = 72
    StyleName = 'XP Style'
    object actVisualPedVenda: TAction
      Caption = 'Visualizar Pedido de Venda'
      Hint = 'Visualizar Pedido de Venda'
      ImageIndex = 0
      OnExecute = actVisualPedVendaExecute
    end
    object actVisualNF: TAction
      Caption = 'Visualizar Nota Fiscal'
      Hint = 'Visualizar Nota Fiscal'
      ImageIndex = 0
      OnExecute = actVisualNFExecute
    end
    object actImpressao: TAction
      Caption = 'Impress'#227'o'
      Hint = 'Impress'#227'o do Pedido'
      ImageIndex = 1
    end
  end
  object ImageList1: TImageList
    Height = 19
    Left = 584
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
      0000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400C6C6C6008484840084848400C6C6C60084848400C6C6C600000000008484
      8400000000008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF00000084000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00C6C6
      C600FFFFFF00C6C6C600C6C6C60000FF000000FF000000FF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000000000000000FF00FFFFFF000000840000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF00FFFFFF000000FF000000FF000000FF00C6C6C6000000
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008484
      8400000000008484840084848400000000000000840000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C6008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848484000000
      0000FFFF000084848400FFFFFF008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000C6C6C600FFFF
      FF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000C6C6
      C60000000000C6C6C60084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000000000008484840000000000FFFFFF000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      FF00FFFF000084848400FFFF00000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000084848400FFFF
      FF00FFFFFF008484840000000000848484000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000008484
      8400FFFF0000848484008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008400000084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000130000000100010000000000980000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFF00F00000000FFFFE00700000000FFCFC003000000000001C00300000000
      0001C003000000000001C003000000000831C001000000001001C00100000000
      2A79E003000000000101F003000000000279F00F000000000001F80F00000000
      21F1F807000000000001FC07000000000001FFFF000000000001FFFF00000000
      0001FFFF0000000000000000000000000000000000000000000000000000}
  end
end
