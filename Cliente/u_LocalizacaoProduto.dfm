object frmLocalizacaoProduto: TfrmLocalizacaoProduto
  Left = 149
  Top = 119
  Width = 519
  Height = 368
  BorderIcons = [biSystemMenu]
  Caption = 'Localiza'#231#227'o do Produto'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 511
    Height = 89
    Align = alTop
    Caption = 'Dados para Atualiza'#231#227'o'
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 14
      Width = 51
      Height = 13
      Caption = 'Produto ID'
      FocusControl = DBEdit1
    end
    object Label10: TLabel
      Left = 80
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Part Number'
      FocusControl = DBEdit10
    end
    object Label3: TLabel
      Left = 10
      Top = 53
      Width = 65
      Height = 26
      Caption = 'Descri'#231#227'o em Portugu'#234's'
      WordWrap = True
    end
    object Label2: TLabel
      Left = 272
      Top = 14
      Width = 120
      Height = 13
      Caption = 'Localiza'#231#227'o Almoxarifado'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 9
      Top = 28
      Width = 69
      Height = 21
      Color = clInactiveBorder
      DataField = 'PRODUTOID'
      DataSource = dmEF.dsProduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit10: TDBEdit
      Left = 80
      Top = 29
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'PARTNUMBERID'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 80
      Top = 58
      Width = 425
      Height = 21
      CharCase = ecUpperCase
      Color = clInactiveBorder
      DataField = 'DESCRICAOPORTUGUES'
      DataSource = dmEF.dsProduto
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 272
      Top = 29
      Width = 180
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LOCALIZACAO'
      DataSource = dmEF.dsProduto
      TabOrder = 3
    end
  end
  object BitBtn1: TBitBtn
    Left = 400
    Top = 96
    Width = 89
    Height = 25
    Caption = '&Atualizar'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      66010000424D6601000000000000760000002800000014000000140000000100
      040000000000F000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      7777777700007777777778888887777700007777777000003888777700007777
      770BBBB03088877700007777770BBBB0308887770000777770BBBB0333088777
      0000777770BBBB03330887770000777770000003330887770000777777778033
      3308877700007777777000333308877700007777770BB0333308877700007777
      70BBBB0333088777000077770BBBBBB03308877700007770BBBBBBBB03088777
      0000777000BBBB00030887770000777770BBBB033308777700007777770BBBB0
      3087777700007777770BBBB03077777700007777777000003777777700007777
      77777777777777770000}
  end
  object BitBtn2: TBitBtn
    Left = 400
    Top = 128
    Width = 89
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object pnSaldoProduto: TPanel
    Left = 0
    Top = 88
    Width = 305
    Height = 241
    TabOrder = 3
  end
end
