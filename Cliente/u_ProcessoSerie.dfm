object frmProcessoSerie: TfrmProcessoSerie
  Left = 103
  Top = 125
  Width = 658
  Height = 375
  Caption = 'Informe a s'#233'rie do Aparelho'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 69
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 62
      Height = 13
      Caption = 'C'#243'd. Produto'
    end
    object Label2: TLabel
      Left = 80
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label3: TLabel
      Left = 380
      Top = 8
      Width = 59
      Height = 13
      Caption = 'Part Number'
    end
    object Label4: TLabel
      Left = 508
      Top = 8
      Width = 20
      Height = 13
      Caption = 'Qtd.'
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 502
      Height = 16
      Caption = 
        '*** A quantidade de s'#233'ries dever'#225' ser igual a quantidade do Prod' +
        'uto. ***'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtCod: TDBEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 21
      Color = clScrollBar
      DataField = 'PRODUTOID'
      DataSource = dmIT.dsProcessoItem
      ReadOnly = True
      TabOrder = 0
    end
    object edtDescr: TDBEdit
      Left = 80
      Top = 24
      Width = 291
      Height = 21
      Color = clScrollBar
      DataField = 'DESCRICAOPORTUGUES'
      DataSource = dmIT.dsProcessoItem
      MaxLength = 50
      ReadOnly = True
      TabOrder = 1
    end
    object edtPart: TDBEdit
      Left = 380
      Top = 24
      Width = 121
      Height = 21
      Color = clScrollBar
      DataField = 'PARTNUMBERID'
      DataSource = dmIT.dsProcessoItem
      ReadOnly = True
      TabOrder = 2
    end
    object edtQtd: TDBEdit
      Left = 508
      Top = 24
      Width = 37
      Height = 21
      Color = clScrollBar
      DataField = 'QTDLIBERADA'
      DataSource = dmIT.dsProcessoItem
      ReadOnly = True
      TabOrder = 3
    end
    object BitBtn1: TBitBtn
      Left = 560
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = BitBtn1Click
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
  end
  object grdSerie: TDBGrid
    Left = 0
    Top = 69
    Width = 285
    Height = 272
    Align = alLeft
    DataSource = dmIT.dsProcessoItemSerie
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIEID'
        Title.Caption = 'S'#233'rie'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 285
    Top = 69
    Width = 365
    Height = 272
    Align = alClient
    Caption = ' Composi'#231#227'o '
    TabOrder = 2
    object mmComposicao: TDBMemo
      Left = 2
      Top = 15
      Width = 361
      Height = 255
      Align = alClient
      Color = clScrollBar
      DataField = 'COMPOSICAO'
      DataSource = dmIT.dsProcessoItemSerie
      ReadOnly = True
      TabOrder = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 168
    object mnuInserirItem: TMenuItem
      Caption = 'Inserir Item'
      Hint = 'Inserir item de s'#233'rie do processo'
      OnClick = mnuInserirItemClick
    end
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      OnClick = Gravar1Click
    end
    object mnuExcluirItem: TMenuItem
      Caption = 'Excluir item'
      Hint = 'Excluir item de s'#233'rie do processo'
      OnClick = mnuExcluirItemClick
    end
  end
end
