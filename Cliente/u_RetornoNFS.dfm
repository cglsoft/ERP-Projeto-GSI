object frmRetornoNFS: TfrmRetornoNFS
  Left = 704
  Top = 64
  ActiveControl = mktNota
  Caption = 'Retorno Nota Fiscal de Sa'#237'da'
  ClientHeight = 470
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 305
    Width = 680
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 680
    Height = 76
    Align = alTop
    Caption = 'Digite os dados para Pesquisa de Retorno de Nota Fiscal'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 12
      Width = 70
      Height = 13
      Caption = 'N'#186' Nota Sa'#237'da'
    end
    object Label3: TLabel
      Left = 97
      Top = 12
      Width = 80
      Height = 13
      Caption = 'Data de Emiss'#227'o'
    end
    object Label12: TLabel
      Left = 201
      Top = 12
      Width = 85
      Height = 13
      Caption = 'Ordem de Servi'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 305
      Top = 12
      Width = 92
      Height = 13
      Caption = 'C'#243'digo Destinat'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object mktNota: TMaskEdit
      Left = 8
      Top = 29
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object mktOS: TMaskEdit
      Left = 200
      Top = 29
      Width = 97
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnRetornoParcial: TBitBtn
      Left = 544
      Top = 13
      Width = 113
      Height = 25
      Hint = 'Retornar Nota Fiscal de Sa'#237'das e seus itens parcialmente'
      Caption = 'Retorno &Parcial'
      TabOrder = 4
      OnClick = btnRetornoParcialClick
      Glyph.Data = {
        DE000000424DDE0000000000000076000000280000000D0000000D0000000100
        0400000000006800000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7000777777077777700077777700777770007777770607777000770000066077
        7000770666666607700077066666666070007706666666077000770000066077
        7000777777060777700077777700777770007777770777777000777777777777
        7000}
    end
    object btnPesquisa: TBitBtn
      Left = 407
      Top = 13
      Width = 114
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
      OnClick = btnPesquisaClick
      Glyph.Data = {
        DE030000424DDE03000000000000360000002800000011000000120000000100
        180000000000A803000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF7375738C71739C9A9CFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFF4AA2E75269B5AD868C949694FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF94CFFF4A
        AEFF526DB5AD828CA5A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF94D7FF4AB2FF526DB5A58284CE
        CBCEFFFFFFF7F3F7F7F3F7FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FFFFFFFF7B757384797B5A8AB542B6FF63719C4A4D4A846963AD8A7BC6A2945A
        494A524D4A847973847973949294FFFFFF00FFFFFFD6BEADD6BEADD6BAADCEB2
        A5ADCBE7BDB6B5EFB694FFFFCEFFFFD6FFFFDEFFFFF7AD827B847163DEC7B573
        5D52FFFFFF00FFFFFFBD5900DEF7FFD6E7EFD6E7EFD6EBEFD6AA9CDEDBB5DED3
        ADDEDBC6DEDFD6DEDFDEF7F3E7635152DEEFF7735D52FFFFFF00FFFFFFBD5900
        DEF7FFD6E7EFD6E7EFCEDBE7F7D7B5FFE3ADFFF7C6FFFFDEFFFFF7FFFFF7FFFF
        E7AD8E7BC6DFE7735D52FFFFFF00FFFFFFBD5900E7F7FFB5BEBDB5BEBDADB2B5
        CEC3ADCEBA9CCEC7A5D6D7B5D6D7BDDEDFC6DEE3BDB59284CEE7EF735D52FFFF
        FF00FFFFFFBD5900E7F7FFCEDFE7CEDFDECEDFE7DEC3A5CECBBDCEBAA5CEC7A5
        CECBADD6CFADEFF3C68C6D6BE7FFFF735D52FFFFFF00FFFFFFBD5900DEF7FFEF
        FFFFEFFFFFEFFFFFDECFCEFFFBF7FFFFFFFFEFBDFFE7ADFFFFCEE7B294C6CFD6
        E7FBFF735D52FFFFFF00FFFFFFBD5900E7F7FFC6CFD6C6CFCEC6CFD6C6CFD6BD
        BABDBDA294DECBA5E7CBADC69A94BDC7CED6DFDEEFFFFF7B6152FFFFFF00FFFF
        FFBD5900E7F7FFBDCBCEBDCBCEBDCBCEBDCBCEBDCBCEC6CFD6C6D3D6C6D3D6CE
        DBDECEDBDECEDBDEEFFFFF7B6152FFFFFF00FFFFFFBD5900E7F7FFEFFBFFEFFB
        FFEFFBFFEFFBFFEFFBF7EFF7F7EFF7F7EFF7F7E7F7F7E7F7F7E7F7F7EFFBFF7B
        6152FFFFFF00FFFFFFBD5900BD5900BD5900BD5D00BD5900BD5D00BD5D00BD59
        00BD5D00BD5D00D68229C66500B55D0884655A7B6952FFFFFF00FFFFFFE78E29
        DE9239E79231E78E29E79231E78E29E79229E79231E78E29E78A21E78A21E78A
        21E78E29EF8E29E7E7E7FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
    end
    object mktCodDestin: TMaskEdit
      Left = 304
      Top = 29
      Width = 97
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btnFechar: TBitBtn
      Left = 544
      Top = 42
      Width = 113
      Height = 25
      Hint = 'Retornar Nota Fiscal de Sa'#237'das e seus itens parcialmente'
      Caption = 'Fechar'
      TabOrder = 6
      OnClick = btnFecharClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF007B00
        00007B3900007B3900007B3900007B3900007B3900007B3900007B3900000000
        0000FF00FF007B0000007B0000007B0000007B000000FF00FF007B000000FF00
        0000FF390000FF7B0000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B
        00009C9C0000BD000000FF000000FF000000FF0000007B0000007B000000FF00
        0000FF000000FF390000FF7B0000FF7B0000FF7B0000FF7B0000FF7B00007B7B
        0000BDBD000063630000BD000000FF000000FF0000007B000000FF00FF007B00
        00007B0000007B0000007B3900007B390000FFBD0000FFBD0000FFBD00007B7B
        0000BDBD000084840000636300007B0000007B000000FF00FF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000FFFF0000FFFF00007B7B
        0000BDBD0000848400008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000000000004242420042424200424242007B7B
        0000BDBD0000848400008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0021210000000000008484840084848400848484007B7B
        0000BDBD0000848400008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF005A5A0000636300006363630084848400848484007B7B
        00009C9C0000212121008484000042424200FFFFFF00FFFFFF00000000000000
        000000000000000000007B7B0000DEDE00006363000063636300848484007B7B
        00009C9C0000393939008484000042424200FFFFFF00FFFFFF005A5A0000BDBD
        0000BDBD0000BDBD0000DEDE0000FFFF0000DEDE000063630000636363007B7B
        0000BDBD0000848400008484000042424200FFFFFF00FFFFFF007B7B0000FFFF
        3900FFFF7B00FFFF7B00FFFF7B00FFFFBD00FFFF39007B7B0000636363007B7B
        0000BDBD0000848400008484000042424200FFFFFF00FFFFFF00000000000000
        000000000000000000007B7B0000FFFF39007B7B000063636300848484007B7B
        0000BDBD0000848400008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF007B7B00007B7B00006363630084848400848484007B7B
        3900BDBD0000848400008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0021210000000000008484840084848400848484006363
        6300BDBD7B009C9C00008484000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000008484840084848400848484008484
        840063636300BDBD7B009C9C000042424200FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000000004242420042424200424242004242
        420042424200212121007B7B390021212100FFFFFF00FFFFFF00}
    end
    object wwdtpcktDtEmissao: TwwDBDateTimePicker
      Left = 96
      Top = 29
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 76
    Width = 680
    Height = 229
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Itens Dispon'#237'veis para Retorno'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 672
        Height = 201
        Align = alClient
        DataSource = dsRetornoNFS
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
            Title.Caption = 'ItemID'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMPRESAID'
            Title.Caption = 'Empresa ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTOID'
            Title.Caption = 'Produto ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAOPRODUTO'
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RETORNO'
            Title.Caption = 'Status Retorno'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDRETORNA'
            Title.Caption = 'Qtd. Retornada'
            Width = 99
            Visible = True
          end>
      end
    end
  end
  object PageControl2: TPageControl
    Left = 0
    Top = 308
    Width = 680
    Height = 162
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = 'Detalhes do Retorno'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 672
        Height = 134
        Align = alClient
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
        object Label4: TLabel
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
        object Label10: TLabel
          Left = 8
          Top = 47
          Width = 56
          Height = 13
          Caption = 'Destinat'#225'rio'
        end
        object Label49: TLabel
          Left = 363
          Top = 65
          Width = 14
          Height = 13
          Caption = 'UF'
          FocusControl = DBEdit14
        end
        object Label48: TLabel
          Left = 8
          Top = 65
          Width = 33
          Height = 13
          Caption = 'Cidade'
          FocusControl = DBEdit13
        end
        object Label11: TLabel
          Left = 7
          Top = 91
          Width = 67
          Height = 13
          Caption = 'Nat.Opera'#231#227'o'
        end
        object Label24: TLabel
          Left = 77
          Top = 91
          Width = 40
          Height = 13
          Caption = 'C.F.O.P.'
          FocusControl = DBEdit12
        end
        object Label5: TLabel
          Left = 192
          Top = 91
          Width = 102
          Height = 13
          Caption = 'Descri'#231#227'o do Usu'#225'rio'
          FocusControl = DBEdit12
        end
        object DBEdit1: TDBEdit
          Left = 77
          Top = 16
          Width = 77
          Height = 21
          DataField = 'NFSID'
          DataSource = dsRetornoNFS
          ReadOnly = True
          TabOrder = 0
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
          Color = clScrollBar
          DataField = 'DATAPEDIDO'
          DataSource = dsRetornoNFS
          Date = 38154.000000000000000000
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 1
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
          Color = clScrollBar
          DataField = 'DATAEMISSAOID'
          DataSource = dsRetornoNFS
          Date = 38154.000000000000000000
          Epoch = 1950
          ReadOnly = True
          ShowButton = True
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 373
          Top = 16
          Width = 78
          Height = 21
          Color = clScrollBar
          DataField = 'PDSID'
          DataSource = dsRetornoNFS
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 16
          Width = 66
          Height = 21
          Hint = 'N'#186' da Empresa'
          TabStop = False
          Color = clScrollBar
          DataField = 'EMPRESAID'
          DataSource = dsRetornoNFS
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 270
          Top = 16
          Width = 98
          Height = 21
          Hint = 'N'#186' da Ordem de Servi'#231'o'
          TabStop = False
          Color = clScrollBar
          DataField = 'OSID'
          DataSource = dsRetornoNFS
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit53: TDBEdit
          Left = 559
          Top = 16
          Width = 92
          Height = 21
          Color = clScrollBar
          DataField = 'REQUISITANTE'
          DataSource = dsRetornoNFS
          TabOrder = 6
        end
        object wwDBComboDlg3: TwwDBComboDlg
          Left = 77
          Top = 43
          Width = 77
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: N'#186' Destinat'#225'rio '
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'ENTIDADEID'
          DataSource = dsRetornoNFS
          ReadOnly = True
          TabOrder = 7
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit9: TDBEdit
          Left = 160
          Top = 43
          Width = 393
          Height = 20
          Hint = 'Dados do Destinat'#225'rio: Descri'#231#227'o do Destinat'#225'rio'
          TabStop = False
          AutoSize = False
          Color = clInactiveBorder
          DataField = 'NOME'
          DataSource = dsRetornoNFS
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit14: TDBEdit
          Left = 380
          Top = 65
          Width = 29
          Height = 21
          Hint = 'Unidade federativa'
          CharCase = ecUpperCase
          DataField = 'SIGLAUFID'
          DataSource = dsRetornoNFS
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 77
          Top = 65
          Width = 265
          Height = 21
          Hint = 'Dados do Destinat'#225'rio: Cidade'
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dsRetornoNFS
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 10
        end
        object wwDBComboDlg2: TwwDBComboDlg
          Left = 6
          Top = 105
          Width = 59
          Height = 20
          Hint = 'Nat. da Opera'#231#227'o'
          ShowButton = True
          Style = csDropDown
          AutoSize = False
          DataField = 'NATUREZAOPID'
          DataSource = dsRetornoNFS
          ReadOnly = True
          TabOrder = 11
          WordWrap = False
          UnboundDataType = wwDefault
        end
        object DBEdit12: TDBEdit
          Left = 77
          Top = 106
          Width = 86
          Height = 21
          Hint = 'CFOP'
          TabStop = False
          Color = clScrollBar
          DataField = 'CFOP'
          DataSource = dsRetornoNFS
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit30: TDBEdit
          Left = 192
          Top = 106
          Width = 457
          Height = 21
          Hint = 'Descri'#231#227'o do CFOP'
          TabStop = False
          Color = clScrollBar
          DataField = 'DESCRICAOOPERACAOUSUARIO'
          DataSource = dsRetornoNFS
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
    end
  end
  object dsRetornoNFS: TDataSource
    AutoEdit = False
    DataSet = cdsRetornoNFS
    Left = 436
    Top = 49
  end
  object cdsRetornoNFS: TClientDataSet
    Aggregates = <>
    PacketRecords = 20
    Params = <>
    Left = 492
    Top = 49
  end
end
