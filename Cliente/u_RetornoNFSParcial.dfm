object frmRetornoNFSParcial: TfrmRetornoNFSParcial
  Left = 173
  Top = 195
  Caption = 'Retorno Parcial NFS'
  ClientHeight = 221
  ClientWidth = 549
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 549
    Height = 221
    Align = alClient
    Caption = '&Dados do Item da NFS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 130
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 83
      Top = 130
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 170
      Width = 59
      Height = 13
      Caption = 'Qtd Enviada'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 187
      Top = 170
      Width = 63
      Height = 13
      Caption = 'Valor Unit'#225'rio'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 318
      Top = 170
      Width = 51
      Height = 13
      Caption = 'Valor Total'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Nr. Nota'
      FocusControl = DBEdit6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 88
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Dt. Emiss'#227'o'
      FocusControl = DBEdit7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 207
      Top = 16
      Width = 95
      Height = 13
      Caption = 'Qtd. pe'#231'as Boas'
    end
    object Label9: TLabel
      Left = 83
      Top = 170
      Width = 81
      Height = 13
      Caption = 'Qtd j'#225' Retornada'
      FocusControl = DBEdit8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 207
      Top = 64
      Width = 163
      Height = 13
      Caption = 'Qtd. pe'#231'as Ruim  (Empenho)'
    end
    object Label11: TLabel
      Left = 207
      Top = 40
      Width = 126
      Height = 13
      Caption = 'Qtd. pe'#231'as Revisadas'
    end
    object Label12: TLabel
      Left = 207
      Top = 91
      Width = 168
      Height = 13
      Caption = 'Qtd. pe'#231'as em Demonstra'#231#227'o'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 146
      Width = 64
      Height = 21
      DataField = 'PRODUTOID'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 83
      Top = 146
      Width = 364
      Height = 21
      DataField = 'DESCRICAOPRODUTO'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 186
      Width = 64
      Height = 21
      DataField = 'QUANTIDADE'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 187
      Top = 186
      Width = 64
      Height = 21
      DataField = 'VLRPRECOUNITARIO'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 318
      Top = 186
      Width = 129
      Height = 21
      DataField = 'VLRPRECOTOTAL'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 32
      Width = 64
      Height = 21
      DataField = 'NFSID'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 32
      Width = 64
      Height = 21
      DataField = 'DATAEMISSAOID'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object mktBoas: TMaskEdit
      Left = 379
      Top = 16
      Width = 73
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object btnFechar: TBitBtn
      Left = 456
      Top = 43
      Width = 87
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = btnFecharClick
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
    object btnRetornar: TBitBtn
      Left = 456
      Top = 16
      Width = 88
      Height = 24
      Hint = 'Retornar a pe'#231'a para o saldo f'#237'sico, pois a pe'#231'a n'#227'o foi trocada'
      Caption = 'Retornar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnRetornarClick
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
    object DBEdit8: TDBEdit
      Left = 83
      Top = 186
      Width = 64
      Height = 21
      DataField = 'QTDRETORNA'
      DataSource = frmRetornoNFS.dsRetornoNFS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object mktEmpenho: TMaskEdit
      Left = 379
      Top = 64
      Width = 73
      Height = 21
      TabOrder = 11
      Text = '0'
    end
    object mktRevisadas: TMaskEdit
      Left = 379
      Top = 40
      Width = 73
      Height = 21
      TabOrder = 12
      Text = '0'
    end
    object ckbxDocQuarent: TCheckBox
      Left = 207
      Top = 118
      Width = 233
      Height = 25
      Caption = 'Documento de Entrada(Doc/Carta) (Quarentena)'
      TabOrder = 13
      WordWrap = True
    end
    object mktDemo: TMaskEdit
      Left = 379
      Top = 91
      Width = 73
      Height = 21
      TabOrder = 14
      Text = '0'
    end
  end
end
