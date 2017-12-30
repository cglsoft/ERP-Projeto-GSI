object frmPagtoComissao: TfrmPagtoComissao
  Left = 244
  Top = 121
  ActiveControl = DBEdit10
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Pagamento de Comiss'#227'o'
  ClientHeight = 528
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 305
    Height = 528
    Align = alLeft
    Caption = ' Pagamento de Comiss'#227'o '
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 92
      Height = 13
      Caption = 'Nome do Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 144
      Width = 56
      Height = 13
      Caption = 'Vlr. FOB U$'
      FocusControl = DBEdit2
    end
    object Label2: TLabel
      Left = 8
      Top = 184
      Width = 66
      Height = 13
      Caption = 'Vlr. Venda R$'
      FocusControl = DBEdit3
    end
    object Label3: TLabel
      Left = 160
      Top = 96
      Width = 48
      Height = 13
      Caption = 'Vlr. Interv.'
      FocusControl = DBEdit7
    end
    object Label6: TLabel
      Left = 160
      Top = 136
      Width = 31
      Height = 13
      Caption = 'Vlr. IPI'
      FocusControl = DBEdit8
    end
    object Label7: TLabel
      Left = 160
      Top = 176
      Width = 90
      Height = 13
      Caption = 'Vlr. Base Comiss'#227'o'
      FocusControl = DBEdit9
    end
    object Label8: TLabel
      Left = 160
      Top = 256
      Width = 62
      Height = 13
      Caption = '(%) Comiss'#227'o'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 160
      Top = 296
      Width = 88
      Height = 13
      Caption = 'Vlr. BrutoComiss'#227'o'
      FocusControl = DBEdit13
    end
    object Label13: TLabel
      Left = 8
      Top = 56
      Width = 100
      Height = 13
      Caption = 'Fun'#231#227'o do Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 160
      Top = 336
      Width = 36
      Height = 13
      Caption = 'IRRF %'
      FocusControl = DBEdit13
    end
    object Label15: TLabel
      Left = 160
      Top = 374
      Width = 54
      Height = 13
      Caption = 'Vlr. L'#237'quido'
      FocusControl = DBEdit16
    end
    object Label16: TLabel
      Left = 160
      Top = 216
      Width = 114
      Height = 13
      Caption = 'Vlr. Base Comiss'#227'o US$'
      FocusControl = DBEdit9
    end
    object Label5: TLabel
      Left = 8
      Top = 96
      Width = 34
      Height = 13
      Caption = 'Filial ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 8
      Top = 319
      Width = 134
      Height = 16
      Caption = 'D'#243'lar Fiscal Di'#225'rio'
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 8
      Top = 274
      Width = 134
      Height = 17
      Caption = 'Data Conv. Vlr. FOB'
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 333
      Width = 133
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'L_DOLAROFICIALC'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 291
      Width = 134
      Height = 21
      DataField = 'DATACONVFOB'
      DataSource = dmPP.dsBasePagto
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 32
      Width = 285
      Height = 21
      Color = clScrollBar
      DataField = 'L_NOME'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 160
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'L_VLRFOB'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 200
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'L_VLRVENDA'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 160
      Top = 112
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'L_VLRINTERVENIENCIA'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit8: TDBEdit
      Left = 160
      Top = 152
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'L_VLRIPI'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 160
      Top = 312
      Width = 134
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'VLRCOMISSAO'
      DataSource = dmPP.dsBasePagto
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit10: TDBEdit
      Left = 160
      Top = 272
      Width = 134
      Height = 21
      DataField = 'PORCVENDA'
      DataSource = dmPP.dsBasePagto
      TabOrder = 5
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 248
      Width = 134
      Height = 21
      DataField = 'DATAPAGTOCOM'
      DataSource = dmPP.dsBasePagto
      TabOrder = 2
    end
    object Panel3: TPanel
      Left = 8
      Top = 231
      Width = 134
      Height = 17
      Caption = 'Data Pagto Comiss'#227'o'
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object DBEdit13: TDBEdit
      Left = 160
      Top = 192
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'VLRBASECOMISSAO'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 13
    end
    object grbDsr: TGroupBox
      Left = 8
      Top = 360
      Width = 129
      Height = 89
      Caption = ' Informativo DSR '
      TabOrder = 14
      object Label12: TLabel
        Left = 8
        Top = 16
        Width = 85
        Height = 13
        Caption = 'Qtd de Domingos '
      end
      object lblTituloFeriado: TLabel
        Left = 8
        Top = 40
        Width = 63
        Height = 13
        Caption = 'Qtd Feriados:'
      end
      object lblFeriado: TLabel
        Left = 104
        Top = 40
        Width = 11
        Height = 16
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDomigo: TLabel
        Left = 104
        Top = 16
        Width = 11
        Height = 16
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 104
        Top = 64
        Width = 11
        Height = 16
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 64
        Width = 70
        Height = 13
        Caption = 'Total  Feriados'
      end
    end
    object DBEdit14: TDBEdit
      Left = 67
      Top = 72
      Width = 226
      Height = 21
      Color = clScrollBar
      DataField = 'L_CLASSEVENDEDOR'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 16
    end
    object DBEdit15: TDBEdit
      Left = 8
      Top = 72
      Width = 55
      Height = 21
      Color = clScrollBar
      DataField = 'CLASSEVENDEDORID'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 17
    end
    object edtIrrf: TEdit
      Left = 160
      Top = 352
      Width = 133
      Height = 21
      Color = clScrollBar
      ReadOnly = True
      TabOrder = 18
      Text = '1,5'
    end
    object DBEdit16: TDBEdit
      Left = 160
      Top = 390
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'VALOR_LIQUIDO'
      ReadOnly = True
      TabOrder = 19
    end
    object pnRh: TPanel
      Left = 156
      Top = 416
      Width = 141
      Height = 105
      BevelInner = bvLowered
      TabOrder = 15
      object Label10: TLabel
        Left = 4
        Top = 58
        Width = 54
        Height = 13
        Caption = 'Vlr. L'#237'quido'
      end
      object Label9: TLabel
        Left = 4
        Top = 18
        Width = 41
        Height = 13
        Caption = 'Vlr. DSR'
      end
      object DBEdit12: TDBEdit
        Left = 3
        Top = 74
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'VLRLIQUIDO'
        DataSource = dmPP.dsBasePagto
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 3
        Top = 34
        Width = 134
        Height = 21
        Color = clScrollBar
        DataField = 'VLRDSR'
        DataSource = dmPP.dsBasePagto
        ReadOnly = True
        TabOrder = 1
      end
    end
    object DBEdit17: TDBEdit
      Left = 160
      Top = 232
      Width = 134
      Height = 21
      Color = clScrollBar
      DataField = 'VLRBASECOMISSAOUS'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 20
    end
    object DBEdit18: TDBEdit
      Left = 8
      Top = 112
      Width = 55
      Height = 21
      Color = clScrollBar
      DataField = 'L_FILIALID'
      DataSource = dmPP.dsBasePagto
      ReadOnly = True
      TabOrder = 21
    end
  end
  object Panel5: TPanel
    Left = 305
    Top = 0
    Width = 148
    Height = 528
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object BitBtn5: TBitBtn
      Left = 8
      Top = 42
      Width = 118
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = BitBtn5Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000000000000000000000000000000000003F00007F0000
        7F3F007F3F007F3F007F3F007F3F007F3F007F3F000000003F00007F00007F00
        007F00007F00003F00007F0000FF0000FF3F00FF7F00FF7F00FF7F00FF7F00FF
        7F00FF7F007F7F009F9F00BF0000FF0000FF0000FF00007F00007F0000FF0000
        FF0000FF3F00FF7F00FF7F00FF7F00FF7F00FF7F007F7F00BFBF00606000BF00
        00FF0000FF00007F00003F00007F00007F00007F00007F3F007F3F00FFBF00FF
        BF00FFBF007F7F00BFBF008080006060007F00007F00003F0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF007F7F00BFBF008080008080
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000040404040
        40404040407F7F00BFBF00808000808000404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF2020000000008080808080808080807F7F00BFBF008080008080
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F0060600060606080
        80808080807F7F009F9F00202020808000404040FFFFFFFFFFFF000000000000
        0000000000007F7F00DFDF006060006060608080807F7F009F9F003F3F3F8080
        00404040FFFFFFFFFFFF5F5F00BFBF00BFBF00BFBF00DFDF00FFFF00DFDF0060
        60006060607F7F00BFBF00808000808000404040FFFFFFFFFFFF7F7F00FFFF3F
        FFFF7FFFFF7FFFFF7FFFFFBFFFFF3F7F7F006060607F7F00BFBF008080008080
        00404040FFFFFFFFFFFF0000000000000000000000007F7F00FFFF3F7F7F0060
        60608080807F7F00BFBF00808000808000404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7F7F007F7F006060608080808080807F7F3FBFBF008080008080
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF20200000000080808080
        8080808080606060BFBF7F9F9F00808000404040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000808080808080808080808080606060BFBF7F9F9F
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000040404040
        40404040404040404040402020207F7F3F202020FFFFFFFFFFFF}
    end
    object chkbxRepresentante: TCheckBox
      Left = 8
      Top = 68
      Width = 137
      Height = 33
      Caption = 'Representante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = chkbxRepresentanteClick
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 8
      Width = 118
      Height = 25
      Caption = 'Calcular Comiss'#227'o'
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD0000DDDD777777777777DDDD0000DDD00000000000007DDD0000DD0F
        EFEFEFEFEFEF07DD0000DD0E00000E00000E07DD0000DD0F88880F88880F07DD
        0000DD0EFEFEFEFEFEFE07DD0000DD0F00E00F00E00F07DD0000DD0E80F80E80
        F80E07DD0000DD0FEFEFEFEFEFEF07DD0000DD0E00F00E00F00E07DD0000DD0F
        80E80F80E80F07DD0000DD0EFEFEFEFEFEFE07DD0000DD0F00000000000F07DD
        0000DD0E08181881880E07DD0000DD0F08818818180F07DD0000DD0E00000000
        000E07DD0000DD0FEFEFEFEFEFEF0DDD0000DDD0000000000000DDDD0000DDDD
        DDDDDDDDDDDDDDDD0000}
    end
  end
end
