object frmPrecoTransferencia: TfrmPrecoTransferencia
  Left = 191
  Top = 110
  Caption = 'Pre'#231'o de Transfer'#234'ncia'
  ClientHeight = 549
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object CoolBar1: TCoolBar
    Left = 0
    Top = 0
    Width = 767
    Height = 30
    AutoSize = True
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 26
        Width = 763
      end>
    object ActionToolBar1: TActionToolBar
      Left = 9
      Top = 0
      Width = 750
      Height = 26
      ActionManager = actmngPadrao
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      Spacing = 0
    end
  end
  object fcstbarStatus: TfcStatusBar
    Left = 0
    Top = 529
    Width = 767
    Height = 20
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 1
        Name = 'UserName'
        Style = psHint
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '100'
      end>
    SimplePanel = False
    SizeGrip = False
    StatusBarText.CapsLock = 'Caps'
    StatusBarText.Overwrite = 'Overwrite'
    StatusBarText.NumLock = 'Num'
    StatusBarText.ScrollLock = 'Scroll'
  end
  object pgctrlPrecoTransf: TPageControl
    Left = 0
    Top = 30
    Width = 767
    Height = 499
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 2
    OnChange = pgctrlPrecoTransfChange
    object TabSheet1: TTabSheet
      Caption = 'Par'#226'metros'
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 759
        Height = 471
        Align = alClient
        Caption = 'Parametro de processamento'
        TabOrder = 0
        object Label6: TLabel
          Left = 9
          Top = 20
          Width = 234
          Height = 13
          Caption = 'Intervalo de an'#225'lise  ( ANO BASE DE C'#193'LCULO )'
        end
        object Label7: TLabel
          Left = 9
          Top = 36
          Width = 27
          Height = 13
          Caption = 'Inicial'
        end
        object Label9: TLabel
          Left = 113
          Top = 36
          Width = 22
          Height = 13
          Caption = 'Final'
        end
        object Label10: TLabel
          Left = 392
          Top = 8
          Width = 108
          Height = 13
          Caption = 'Log de processamento'
        end
        object wwdtpcktDtIni: TwwDBDateTimePicker
          Left = 8
          Top = 53
          Width = 97
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 0
          UnboundDataType = wwDTEdtDate
        end
        object wwdtpcktDtFim: TwwDBDateTimePicker
          Left = 112
          Top = 53
          Width = 97
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
          UnboundDataType = wwDTEdtDate
        end
        object mmLog: TMemo
          Left = 392
          Top = 24
          Width = 337
          Height = 425
          TabOrder = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ficha Estoque'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 0
        Top = 129
        Width = 759
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 132
        Width = 759
        Height = 339
        Align = alClient
        Color = clCream
        DataSource = dmEF.dsKdxTransf
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAOCORRENCIA'
            Title.Caption = 'Data'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODOCUMENTO'
            Title.Caption = 'Doc.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMDOCUMENTO'
            Title.Caption = 'N'#186
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_CFOP'
            Title.Caption = 'CFOP'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOESTOQUE'
            Title.Caption = 'Tipo'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_QUANTIDADEENTRADA'
            Title.Caption = 'Qtd'
            Title.Color = 10352561
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_VLRUNITENTRADA'
            Title.Caption = 'Vlr. Unit'#225'rio'
            Title.Color = 10352561
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_VLRTOTALENTRADA'
            Title.Caption = 'Vlr.Total'
            Title.Color = 10352561
            Visible = True
          end
          item
            Expanded = False
            Width = 2
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_QUANTIDADESAIDA'
            Title.Caption = 'Qtd.'
            Title.Color = 9540095
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_VLRUNITSAIDA'
            Title.Caption = 'Vlr. Unit.'
            Title.Color = 9540095
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'C_VLRTOTALSAIDA'
            Title.Caption = 'Vlr. Total'
            Title.Color = 9540095
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            Width = 2
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADESALDO'
            Title.Caption = 'Saldo'
            Title.Color = 8911090
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOMEDIO'
            Title.Caption = 'Custo Medio Unit.'
            Title.Color = 8911090
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOMEDIOTOTAL'
            Title.Caption = 'Custo Total'
            Title.Color = 8911090
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NATUREZAOPID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OSID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOMEDIOANTERIOR'
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
            FieldName = 'QUANTIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOUNITARIO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOTOTAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAOCORRENCIA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODOCUMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOOPERACAO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIID'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'L_DESCRICAOOPERACAOUSUARIO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRCUSTOMEDIOTOTAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEMINIMO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEFISICO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEPEDENTRADA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEPEDSAIDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEDETERCEIRO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEEMTERCEIRO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEEMPENHO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEVALE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUEESTORNO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KARDEXID'
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 759
        Height = 129
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 55
          Width = 79
          Height = 13
          Caption = 'Descr. em Ingl'#234's'
          FocusControl = DBEdit2
        end
        object Label1: TLabel
          Left = 8
          Top = 9
          Width = 51
          Height = 13
          Caption = 'Produto ID'
        end
        object Label2: TLabel
          Left = 187
          Top = 9
          Width = 55
          Height = 13
          Caption = 'Empresa ID'
        end
        object Shape2: TShape
          Left = 435
          Top = 94
          Width = 20
          Height = 11
          Brush.Color = 10352561
        end
        object Shape3: TShape
          Left = 508
          Top = 94
          Width = 20
          Height = 11
          Brush.Color = 9540095
        end
        object Shape1: TShape
          Left = 581
          Top = 94
          Width = 20
          Height = 11
          Brush.Color = 8911090
        end
        object Label5: TLabel
          Left = 458
          Top = 93
          Width = 42
          Height = 13
          Caption = 'Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 536
          Top = 93
          Width = 34
          Height = 13
          Caption = 'Sa'#237'das'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 606
          Top = 93
          Width = 27
          Height = 13
          Caption = 'Saldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 36
          Width = 99
          Height = 13
          Caption = 'Descr. em Portugu'#234's'
        end
        object Label4: TLabel
          Left = 8
          Top = 79
          Width = 59
          Height = 13
          Caption = 'Part Number'
          FocusControl = DBEdit10
        end
        object DBEdit2: TDBEdit
          Left = 111
          Top = 56
          Width = 421
          Height = 21
          Color = clInactiveBorder
          DataField = 'DESCRICAOINGLES'
          DataSource = dmEF.dsProduto
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 111
          Top = 33
          Width = 421
          Height = 21
          Hint = 'Funcion'#225'rio'
          CharCase = ecUpperCase
          Color = clScrollBar
          DataField = 'DESCRICAOPORTUGUES'
          DataSource = dmEF.dsProduto
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        object mktProduto: TMaskEdit
          Left = 111
          Top = 9
          Width = 69
          Height = 21
          TabOrder = 1
          OnKeyPress = mktProdutoKeyPress
        end
        object cmbEmpresa: TComboBox
          Left = 247
          Top = 9
          Width = 285
          Height = 21
          ItemHeight = 13
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 111
          Top = 79
          Width = 180
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          DataField = 'PARTNUMBERID'
          DataSource = dmEF.dsProduto
          ReadOnly = True
          TabOrder = 4
        end
        object tmbEdtLstKardex: TtmbEdicaoLista
          Left = 692
          Top = 2
          Width = 65
          Height = 125
          Align = alRight
          AutoSize = True
          Caption = ' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TtmbCriar = True
          TtmbClientDataSet = dmEF.cdsKdxTransf
          TtmbVertical = False
          TtmbTamMax = True
          TtmbDataSource = dmEF.dsKdxTransf
          TtmbFontDefaut = False
          TtmbDesativaInserir = False
          TtmbDireito = 'Kardex Transf Itens'
          ExplicitLeft = 690
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ficha'
      ImageIndex = 3
      object GroupBox2: TGroupBox
        Left = 2
        Top = 32
        Width = 761
        Height = 449
        Caption = 'Parametros'
        TabOrder = 0
        object Label11: TLabel
          Left = 9
          Top = 36
          Width = 27
          Height = 13
          Caption = 'Inicial'
        end
        object Label12: TLabel
          Left = 9
          Top = 20
          Width = 234
          Height = 13
          Caption = 'Intervalo de an'#225'lise  ( ANO BASE DE C'#193'LCULO )'
        end
        object Label15: TLabel
          Left = 113
          Top = 36
          Width = 22
          Height = 13
          Caption = 'Final'
        end
        object wwdtpcktDtIni2: TwwDBDateTimePicker
          Left = 8
          Top = 53
          Width = 97
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 0
          UnboundDataType = wwDTEdtDate
        end
        object wwdtpcktDtFim2: TwwDBDateTimePicker
          Left = 112
          Top = 53
          Width = 97
          Height = 21
          CalendarAttributes.Font.Charset = DEFAULT_CHARSET
          CalendarAttributes.Font.Color = clWindowText
          CalendarAttributes.Font.Height = -11
          CalendarAttributes.Font.Name = 'MS Sans Serif'
          CalendarAttributes.Font.Style = []
          Epoch = 1950
          ShowButton = True
          TabOrder = 1
          UnboundDataType = wwDTEdtDate
        end
        object BitBtn1: TBitBtn
          Left = 272
          Top = 216
          Width = 297
          Height = 25
          Action = actPrecoTransf
          Caption = 'Pre'#231'o Transfer'#234'ncia'
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF0084848400FFFFFF00FFFFFF00FF00FF00FFFF
            FF00FFFFFF00FF00FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF008484840084848400FFFFFF00FF00FF008484
            8400FFFFFF00FF00FF0084848400FFFFFF0000000000FF00FF00FF00FF000000
            00008484840084848400848484008484840084848400FF00FF00FF00FF008484
            8400FF00FF00FF00FF0084848400FF00FF0000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00848484000000000000000000FF00FF008484
            8400FFFFFF00FF00FF0084848400FFFFFF0000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF008484840000000000FFFF000000000000FFFF
            FF00FFFFFF00FF00FF0084848400FFFFFF0000000000FF00FF00FF00FF000000
            000084848400848484008484840084848400FF00FF0000000000FFFF00000000
            0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF000000
            000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
            000000000000FF00FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF000000
            0000FFFF000000000000FFFFFF00FFFFFF0000000000FF00FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FFFF
            FF0000000000FFFF000000000000FFFFFF0000000000FF00FF0000000000FFFF
            FF00FF00FF00BD00BD00BD00BD00BD00BD00FF00FF0000000000FF00FF00FFFF
            FF00FFFFFF0000000000FFFF00000000000000000000FF00FF0000000000FFFF
            FF00FF00FF00BD00BD00FF00FF00FF00FF00FF00FF0000000000BD000000BD00
            0000BD000000BD00000000000000FFFF000000000000FF00FF0000000000FFFF
            FF00FF00FF00BD00BD00FF00FF00FF00FF00FF00FF0000000000000000000000
            000000000000000000000000000000000000FFFF000000000000FF00FF000000
            0000FFFFFF00FFFFFF00FFFFFF00FF00FF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
            FF0000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object BitBtn2: TBitBtn
          Left = 272
          Top = 24
          Width = 297
          Height = 25
          Caption = 'Remetentes de Insumos / Mercadorias (CNPJ - CPF)'
          TabOrder = 3
          OnClick = BitBtn2Click
        end
        object rgrpEmpresa: TRadioGroup
          Left = 8
          Top = 81
          Width = 217
          Height = 88
          Caption = ' Processar Empresas '
          ItemIndex = 0
          Items.Strings = (
            'Empresa 1 '
            'Empresa 12'
            'Empresa 15'
            'Todas')
          TabOrder = 4
        end
        object BitBtn3: TBitBtn
          Left = 272
          Top = 312
          Width = 297
          Height = 25
          Caption = 'Anal'#237'tico de Entradas Fornecedores'
          Enabled = False
          TabOrder = 5
          Visible = False
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 272
          Top = 119
          Width = 297
          Height = 25
          Caption = 'Sa'#237'das de Produtos/Mercadorias/Insumos'
          TabOrder = 6
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 272
          Top = 88
          Width = 297
          Height = 25
          Caption = 'Destinat'#225'rios e Sa'#237'das de Produtos/Mercadorias/Insumos'
          TabOrder = 7
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 272
          Top = 344
          Width = 297
          Height = 25
          Caption = 'Ficha 21 Anal'#237'tico por Importa'#231#245'es'
          Enabled = False
          TabOrder = 8
          Visible = False
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 272
          Top = 376
          Width = 297
          Height = 25
          Caption = 'Ficha 21'
          Enabled = False
          TabOrder = 9
          Visible = False
          OnClick = BitBtn7Click
        end
        object BitBtn8: TBitBtn
          Left = 272
          Top = 248
          Width = 297
          Height = 25
          Caption = 'Importa'#231#227'o Contratantes'
          TabOrder = 10
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 272
          Top = 56
          Width = 297
          Height = 25
          Caption = 'Entradas de Insumos / Mercadorias (Class. Fiscal)'
          TabOrder = 11
          OnClick = BitBtn9Click
        end
        object BitBtn10: TBitBtn
          Left = 272
          Top = 280
          Width = 297
          Height = 25
          Caption = 'Opera'#231#245'es com Exterior (Sa'#237'das Divisas)'
          TabOrder = 12
          OnClick = BitBtn10Click
        end
        object rgpComparacao: TRadioGroup
          Left = 8
          Top = 173
          Width = 216
          Height = 113
          Caption = ' Tipo de Compara'#231#227'o '
          ItemIndex = 2
          Items.Strings = (
            'Pre'#231'o Transf Opera'#231#245'es com Ajuste'
            'Pre'#231'o Transf Opera'#231#245'es sem ajuste'
            'Todos')
          TabOrder = 13
        end
        object BitBtn11: TBitBtn
          Left = 272
          Top = 152
          Width = 297
          Height = 25
          Caption = 'Entradas e Cr'#233'ditos'
          TabOrder = 14
          OnClick = BitBtn11Click
        end
        object BitBtn12: TBitBtn
          Left = 272
          Top = 184
          Width = 297
          Height = 25
          Caption = 'Sa'#237'das e D'#233'bitos'
          TabOrder = 15
          OnClick = BitBtn12Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pre'#231'o Transfer'#234'ncia Confer'#234'ncia'
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 759
        Height = 471
        Align = alClient
        Color = clCream
        DataSource = dsRelDIPJ
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object actmngPadrao: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = actNovoKDX
            ImageIndex = 0
          end
          item
            Action = actAtualizarCustos
            ImageIndex = 1
          end
          item
            Action = actExcel
            ImageIndex = 3
          end
          item
            Action = Action1
            ImageIndex = 4
          end
          item
            Action = actReprocessarKdx
            ImageIndex = 4
          end
          item
            Action = actFechar
            ImageIndex = 5
          end>
        ActionBar = ActionToolBar1
      end>
    Images = imglstPadrao
    Left = 592
    Top = 64
    StyleName = 'XP Style'
    object actNovoKDX: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Novo Kardex Transf'
      Hint = 'Gerar o novo kardex para o pre'#231'o de transfer'#234'ncia'
      ImageIndex = 0
      OnExecute = actNovoKDXExecute
    end
    object actAtualizarCustos: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Atualizar Custos'
      Hint = 
        'Atualizar os custos de entrada conforme os crit'#233'rios do pre'#231'o de' +
        ' transfer'#234'ncia'
      ImageIndex = 1
      OnExecute = actAtualizarCustosExecute
    end
    object actPrecoTransf: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Pre'#231'o Transfer'#234'ncia'
      Hint = 'Apura'#231#227'o do pre'#231'o de transfer'#234'ncia'
      ImageIndex = 2
      OnExecute = actPrecoTransfExecute
    end
    object actExcel: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Analisar Excel'
      Hint = 'Analisar relat'#243'rio de sa'#237'das de transfer'#234'ncia no MSExcel'
      ImageIndex = 3
      OnExecute = actExcelExecute
    end
    object Action1: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Atualiza Prod Similar'
      ImageIndex = 4
      OnExecute = Action1Execute
    end
    object actReprocessarKdx: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Reprocessar'
      Hint = 'Reprocessar Kardex Transfer'#234'ncia'
      ImageIndex = 4
      OnExecute = actReprocessarKdxExecute
    end
    object actFechar: TAction
      Category = 'Pre'#231'o Transfer'#234'ncia'
      Caption = 'Fechar'
      Hint = 'Fechar o m'#243'dulo'
      ImageIndex = 5
      OnExecute = actFecharExecute
    end
  end
  object imglstPadrao: TImageList
    Left = 681
    Top = 65
    Bitmap = {
      494C010106000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00ADADAD00ADADAD0052520000EFEF0000ADAD
      AD00ADADAD00BDBDBD00BDBDBD00BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00A5A5A500A5A5A50052520000EFEF00008484
      0000A5A5A500A5A5A500A5A5A500A5A5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A50094949400949494009494940052520000EFEF00008484
      0000848400005252000084848400848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000084000000840000008400000084000000840000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008484840052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFFFF000084
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000005A5A5A005A5A5A005A5A5A0052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF000084
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00005252000084848400ADADAD00ADADAD00BDBDBD0052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000840000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00005252000084840000A5A5A500ADADAD00ADADAD0052520000EFEF00005A5A
      5A00848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000840000FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000084848400848484008484
      840052520000EFEF000084840000A5A5A500ADADAD0052520000EFEF0000BDBD
      BD00848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000840000FFFFFF00FFFFFF000084000000840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000005252000084840000848400008484
      000084840000FFFF0000EFEF000084840000A5A5A50052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000084000000840000008400000084000000840000FFFF
      FF00FFFFFF00FFFFFF00000000000000000052520000FFFF0000FFFFCE00FFFF
      CE00FFFFCE00FFFFCE00FFFFCE00EFEF00005252000052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000052520000525200005252
      000052520000FFFFCE00FFFF0000525200009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052520000EFEF0000525200008C8C8C009494940052520000EFEF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00005252000052520000848484008C8C8C008C8C8C0094949400FFFF00008484
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400848484008C8C8C008C8C8C0094949400FFFF
      0000848400005A5A5A00ADADAD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008484840084848400848484008C8C8C008C8C8C009494
      9400FFFF00005A5A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300A57B7300A57B
      7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B7300A57B
      7300A57B7300A57B73008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A57B7300E7BDBD00F7BD
      BD00EFBDB500EFBDB500EFBDB500EFBDB500EFBDB500EFBDB500EFBDB500EFBD
      B500EFB5B500E7B594008C5A5A00000000000000000000000000000000000000
      0000000000000000000000000000848484008484840084848400848484008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C7B00E7E7E700FFF7
      EF00848484008484840084848400848484008484840084848400848484008484
      840084848400FFD6C60094636300000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      8400848484008484840000000000000000000000000000000000000000000000
      00000000000084848400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6948400EFEFE7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFD600FFD6CE00946B6300000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      8400848484008484840000000000000000000000000000000000000000000000
      0000000000008484840084848400FFFFFF000000000084848400FFFFFF000000
      000084848400FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDBD
      0000BDBD0000BDBD0000000000000000000000000000C6948400EFEFEF00FFFF
      F700FFFFF700FFF7EF00FFF7EF00FFF7E700FFEFDE00FFEFDE00FFEFDE00FFEF
      DE00FFEFDE00FFD6CE009C6B6B00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000848484008484
      8400848484008484840084848400000000000000000084848400000000000000
      0000848484000000000000000000000000000000000000000000848484008484
      84008484840084848400848484008484840000000000FFFF0000000000000000
      00000000000000000000000000000000000000000000CE9C8400EFEFEF00FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      840084848400FFD6CE009C6B6B00000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000008484840000000000000000000000000084848400FFFFFF000000
      000084848400FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF000000000000848484000000000000000000CE9C8400EFEFEF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEFDE00FFCECE009C6B6B00000000000000000000000000000000000000
      00000000000000000000848484000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000008484840000000000FFFF000000000000FFFFFF00FFFFFF000000
      000084848400FFFFFF000000000000000000000000000000000000000000C6C6
      C600C6C6C600C6C6C60084848400FFFF000000000000FFFF0000FFFF0000FFFF
      00000000000000000000848484000000000000000000CEA58400F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFF7EF00FFF7E700FFF7
      E700FFEFDE00FFC6C6009C736B00000000000000000000000000000000000000
      00000000000000000000000000000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000848484008484
      840084848400848484000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6C6C60084848400FFFF000000000000FFFF0000FFFF0000FFFF00000000
      0000C6C6C600C6C6C600000000000000000000000000D6A58C00F7F7F700FFFF
      FF00848484008484840084848400848484008484840084848400848484008484
      840084848400FFBDB5009C737300000000000000000000000000000000000000
      0000000000000000000000FFFF000000000000BDBD0000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFF0000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000FFFF000000000000FFFF0000FFFF0000FFFF0000000000000000
      00000000000000000000000000000000000000000000D6A58C00F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7E700FFBDB5009C737300000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFF00000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFF000000000000FFFF0000FFFF0000FFFF000000000000848484000000
      00000000000000000000000000000000000000000000DEAD8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFF700FFF7EF00FFF7EF00FFF7
      E700FFF7E700FFA5A500A57373000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000BDBD000000
      0000848484008484840000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      000000000000FFFF0000FFFF0000FFFF000000000000C6C6C600000000008484
      84000000000000000000000000000000000000000000DEAD8C00F7F7F700FFFF
      FF00848484008484840084848400FFFFFF00FFFFFF00FFFFF700FFFFF700E7C6
      AD00E7A59C00E79C9400A5737300000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF00000000000000000000BDBD000000
      00008484840084848400000000000000000000000000FFFFFF0000000000BD00
      BD00BD00BD00BD00BD00000000000000000000000000FFFFFF00FFFFFF000000
      0000FFFF00000000000000000000000000000000000000000000FFFF00000000
      0000FFFF0000FFFF0000FFFF000000000000C6C6C600C6C6C600C6C6C6000000
      00008484840000000000000000000000000000000000E7B58C00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300B5847300B5847300A57B7300000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000BDBD0000BDBD000000
      00008484840000000000000000000000000000000000FFFFFF0000000000BD00
      BD0000000000000000000000000000000000BD000000BD000000BD000000BD00
      000000000000FFFF0000000000000000000000000000FFFF000000000000FFFF
      0000FFFF0000FFFF0000000000000000000000000000C6C6C600C6C6C600C6C6
      C6000000000084848400000000000000000000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B584
      7300FFBD5A00E7A56B00EFD6C600000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000008484
      84000000000000000000000000000000000000000000FFFFFF0000000000BD00
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000C6C6C600C6C6
      C600C6C6C60000000000000000000000000000000000E7B58C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7F700B584
      7300E7AD8400D69C840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFBD9400DEAD8400DEAD
      8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400B584
      7300F7DED6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C001000100000000C001000000000000
      C001000000000000C001000000000000C001FC0100000000C001FC0100000000
      C001F00100000000C001F00100000000C001800100000000C001000100000000
      C001000100000000C001800100000000C001F00100000000C003F00100000000
      C007FC0100000000C00FFC03000000008001FFFFFFFFFFFF8001FE0F8001FFFF
      8001F803B891FFC18001F803B89180018001F00381B580018001F003B8918000
      8001FC03B811C0008001FC03823DE0008001F8038011F0008001F003BC81E00F
      8001C0037E81C0078001C003228180038001F0072E0101018001F80F2E000381
      8003FC3F85FC07C18007FFFFC3FFFFFF00000000000000000000000000000000
      000000000000}
  end
  object cdsDIPJ: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 604
    Top = 6
  end
  object dsDIPJ: TDataSource
    DataSet = cdsDIPJ
    Left = 644
    Top = 6
  end
  object dsRelDIPJ: TDataSource
    DataSet = cdsRelDIPJ
    Left = 678
    Top = 102
  end
  object cdsRelDIPJTmp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsRelDIPJTmpNewRecord
    Left = 622
    Top = 134
    Data = {
      EF0100009619E0BD02000000180000000E000000000003000000EF0112444553
      43524943414F504F525455475545530100490000000100055749445448020002
      004600054E434D494401004900000001000557494454480200020008000C464F
      524E454345444F52494412000500000001000557494454480200020020000E4E
      4F4D45464F524E454345444F5201004900000001000557494454480200020046
      0009554E4944414445494401004900000001000557494454480200020002000A
      5155414E54494441444512001200000001000557494454480200020020000A50
      455243454E5455414C12001200000001000557494454480200020020000B564C
      52544F54414C464F4212001200000001000557494454480200020020000C564C
      524143554D554C41444F12001200000001000557494454480200020020000956
      4C52414A5553544512001200000001000557494454480200020020000E564C52
      505245434F5452414E5346120012000000010005574944544802000200200011
      564C52505245434F50524154494341444F120012000000010005574944544802
      000200200010564C52554E495450524154494341444F12001200000001000557
      4944544802000200200012564C52554E4954505245434F5452414E5346120012
      00000001000557494454480200020020000000}
    object cdsRelDIPJTmpDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 70
    end
    object cdsRelDIPJTmpNCMID: TStringField
      FieldName = 'NCMID'
      Size = 8
    end
    object cdsRelDIPJTmpFORNECEDORID: TBCDField
      FieldName = 'FORNECEDORID'
      Size = 0
    end
    object cdsRelDIPJTmpNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 70
    end
    object cdsRelDIPJTmpUNIDADEID: TStringField
      FieldName = 'UNIDADEID'
      Size = 2
    end
    object cdsRelDIPJTmpQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Size = 0
    end
    object cdsRelDIPJTmpPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      Size = 0
    end
    object cdsRelDIPJTmpVLRTOTALFOB: TFMTBCDField
      FieldName = 'VLRTOTALFOB'
      Size = 0
    end
    object cdsRelDIPJTmpVLRACUMULADO: TFMTBCDField
      FieldName = 'VLRACUMULADO'
      Size = 0
    end
    object cdsRelDIPJTmpVLRAJUSTE: TFMTBCDField
      FieldName = 'VLRAJUSTE'
      Size = 0
    end
    object cdsRelDIPJTmpVLRPRECOTRANSF: TFMTBCDField
      FieldName = 'VLRPRECOTRANSF'
      Size = 0
    end
    object cdsRelDIPJTmpVLRPRECOPRATICADO: TFMTBCDField
      FieldName = 'VLRPRECOPRATICADO'
      Size = 0
    end
    object cdsRelDIPJTmpVLRUNITPRATICADO: TFMTBCDField
      FieldName = 'VLRUNITPRATICADO'
      Size = 0
    end
    object cdsRelDIPJTmpVLRUNITPRECOTRANSF: TFMTBCDField
      FieldName = 'VLRUNITPRECOTRANSF'
      Size = 0
    end
  end
  object cdsRelDIPJ: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'INDEXID'
        DataType = ftInteger
      end
      item
        Name = 'NCMID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DESCRICAOPORTUGUES'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'FORNECEDORID'
        DataType = ftInteger
      end
      item
        Name = 'NOMEFORNECEDOR'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'UNIDADEID'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftInteger
      end
      item
        Name = 'PERCENTUAL'
        DataType = ftCurrency
      end
      item
        Name = 'VLRTOTALFOB'
        DataType = ftCurrency
      end
      item
        Name = 'VLRACUMULADO'
        DataType = ftCurrency
      end
      item
        Name = 'VLRAJUSTE'
        DataType = ftCurrency
      end
      item
        Name = 'VLRPRECOTRANSF'
        DataType = ftCurrency
      end
      item
        Name = 'VLRPRECOPRATICADO'
        DataType = ftCurrency
      end
      item
        Name = 'VLRUNITPRATICADO'
        DataType = ftCurrency
      end
      item
        Name = 'VLRUNITPRECOTRANSF'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnNewRecord = cdsRelDIPJNewRecord
    Left = 678
    Top = 142
    Data = {
      270200009619E0BD01000000180000000F000000000003000000270207494E44
      455849440400010000000000054E434D49440100490000000100055749445448
      0200020014001244455343524943414F504F5254554755455301004900000001
      000557494454480200020046000C464F524E454345444F524944040001000000
      00000E4E4F4D45464F524E454345444F52010049000000010005574944544802
      000200460009554E494441444549440100490000000100055749445448020002
      0002000A5155414E54494441444504000100000000000A50455243454E545541
      4C080004000000010007535542545950450200490006004D6F6E6579000B564C
      52544F54414C464F42080004000000010007535542545950450200490006004D
      6F6E6579000C564C524143554D554C41444F0800040000000100075355425459
      50450200490006004D6F6E65790009564C52414A555354450800040000000100
      07535542545950450200490006004D6F6E6579000E564C52505245434F545241
      4E5346080004000000010007535542545950450200490006004D6F6E65790011
      564C52505245434F50524154494341444F080004000000010007535542545950
      450200490006004D6F6E65790010564C52554E495450524154494341444F0800
      04000000010007535542545950450200490006004D6F6E65790012564C52554E
      4954505245434F5452414E534608000400000001000753554254595045020049
      0006004D6F6E6579000000}
    object cdsRelDIPJINDEXID: TIntegerField
      FieldName = 'INDEXID'
    end
    object cdsRelDIPJDESCRICAOPORTUGUES: TStringField
      FieldName = 'DESCRICAOPORTUGUES'
      Size = 70
    end
    object cdsRelDIPJFORNECEDORID: TIntegerField
      FieldName = 'FORNECEDORID'
    end
    object cdsRelDIPJNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Size = 70
    end
    object cdsRelDIPJUNIDADEID: TStringField
      FieldName = 'UNIDADEID'
      Size = 2
    end
    object cdsRelDIPJQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsRelDIPJPERCENTUAL: TCurrencyField
      FieldName = 'PERCENTUAL'
    end
    object cdsRelDIPJVLRTOTALFOB: TCurrencyField
      FieldName = 'VLRTOTALFOB'
    end
    object cdsRelDIPJVLRACUMULADO: TCurrencyField
      FieldName = 'VLRACUMULADO'
    end
    object cdsRelDIPJVLRAJUSTE: TCurrencyField
      FieldName = 'VLRAJUSTE'
    end
    object cdsRelDIPJVLRPRECOTRANSF: TCurrencyField
      FieldName = 'VLRPRECOTRANSF'
    end
    object cdsRelDIPJVLRPRECOPRATICADO: TCurrencyField
      FieldName = 'VLRPRECOPRATICADO'
    end
    object cdsRelDIPJVLRUNITPRATICADO: TCurrencyField
      FieldName = 'VLRUNITPRATICADO'
    end
    object cdsRelDIPJVLRUNITPRECOTRANSF: TCurrencyField
      FieldName = 'VLRUNITPRECOTRANSF'
    end
    object cdsRelDIPJNCMID: TStringField
      FieldName = 'NCMID'
    end
  end
end
